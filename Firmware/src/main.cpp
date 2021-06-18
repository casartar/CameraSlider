#include <AccelStepper.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <Encoder.h>
#include <SPI.h>
#include <Wire.h>

#define SLIDER_LENGTH_MM 1000 // Slider has a length of 1 m

// OLED
#define OLED_RESET -1

Adafruit_SSD1306 display(128, 32, &Wire, OLED_RESET);

// Stepper
#define STEPS_PER_REVOLUTION 200
#define MICROSTEPPING 16
#define TOOTH_PITCH_MM 2
#define PULLEY_TEETH 16

#define STEPPER_PIN_STEP 2
#define STEPPER_PIN_DIR 5
#define STEPPER_PIN_ENABLE 8

AccelStepper stepper1(AccelStepper::DRIVER, STEPPER_PIN_STEP, STEPPER_PIN_DIR);

// Encoder
#define ENCODER_PIN_DT 3
#define ENCODER_PIN_CLK 6

Encoder myEnc(ENCODER_PIN_DT, ENCODER_PIN_CLK);
long oldPosition = -999;

// Buttons
#define BUTTON_PIN_DRIVE_LEFT A3
#define BUTTON_PIN_DRIVE_RIGHT 13

// Endstops
#define ENDSTOP_PIN_LEFT 9
#define ENDSTOP_PIN_RIGHT 10

struct SpeedInfo
{
    const char *timeString;
    float travelTime_s;
};

struct SpeedInfo speedInfo[] = {{"10s", 10.0f},
                                {"20s", 20.0f},
                                {"30s", 30.0f},
                                {"1min", 60.0f},
                                {"2min", (2.0f * 60.0f)},
                                {"5min", (5.0f * 60.0f)},
                                {"20min", (20.0f * 60.0f)},
                                {"30min", (30.0f * 60.0f)},
                                {"40min", (40.0f * 60.0f)},
                                {"50min", (50.0f * 60.0f)},
                                {"1h", (1.0f * 60.0f * 60.0f)},
                                {"1,5h", (1.5f * 60.0f * 60.0f)},
                                {"4h", (4.0f * 60.0f * 60.0f)},
                                {"8h", (8.0f * 60.0f * 60.0f)},
                                {"10h", (10.0f * 60.0f * 60.0f)}

};

enum STATES
{
    STATE_IDLE,
    STATE_DRIVE_LEFT,
    STATE_DRIVE_RIGHT
};

enum STATES state = STATE_IDLE;

uint32_t DistanceToSteps(uint32_t distance_mm);

void setup()
{
    // OLED Init
    display.begin(SSD1306_SWITCHCAPVCC, 0x3C);
    display.clearDisplay();
    display.setTextColor(WHITE);

    // Stepper Init
    stepper1.setEnablePin(STEPPER_PIN_ENABLE);
    stepper1.setAcceleration(1000.0);

    // Buttons
    pinMode(BUTTON_PIN_DRIVE_LEFT, INPUT_PULLUP);
    pinMode(BUTTON_PIN_DRIVE_RIGHT, INPUT_PULLUP);

    // Endstopps
    pinMode(ENDSTOP_PIN_LEFT, INPUT);
    pinMode(ENDSTOP_PIN_RIGHT, INPUT);
}

void loop()
{
    long newPosition = myEnc.read() / 4;
    if (newPosition != oldPosition)
    {
        if (newPosition < 0)
        {
            newPosition = 0;
            myEnc.write(newPosition * 4);
        }
        else if (newPosition > (sizeof(speedInfo) / sizeof(speedInfo[0])) - 1)
        {
            newPosition = (sizeof(speedInfo) / sizeof(speedInfo[0]) - 1);
            myEnc.write(newPosition * 4);
        }

        oldPosition = newPosition;
        display.setCursor(0, 0);
        display.setTextSize(4);
        display.print(newPosition);
        display.print(" ");

        display.setTextSize(2);
        display.print(speedInfo[newPosition].timeString);
        display.display();
        display.clearDisplay();

        // Speed in mm/s: Length of slider divided by the time the carriage should need to travel from one side to the
        // other
        stepper1.setMaxSpeed((float)DistanceToSteps(SLIDER_LENGTH_MM) / speedInfo[newPosition].travelTime_s);
    }

    switch (state)
    {
    case STATE_IDLE:
        if (digitalRead(BUTTON_PIN_DRIVE_RIGHT) == LOW && (digitalRead(ENDSTOP_PIN_RIGHT) == HIGH))
        {
            // Endstop is not activated - drive to the left is allowed
            // Move 1 m to the left - But drive should be stopped by endstop
            stepper1.move(DistanceToSteps(1000));
            state = STATE_DRIVE_RIGHT;
        }
        else if (digitalRead(BUTTON_PIN_DRIVE_LEFT) == LOW && !(digitalRead(ENDSTOP_PIN_LEFT) == LOW))
        {
            // Endstop is not activated - drive to right is allowed
            // Move 1 m to the right - But drive should be stopped by endstop
            stepper1.move(-DistanceToSteps(1000));
            state = STATE_DRIVE_LEFT;
        }
        break;
    case STATE_DRIVE_RIGHT:
        if (digitalRead(ENDSTOP_PIN_RIGHT) == LOW || digitalRead(BUTTON_PIN_DRIVE_LEFT) == LOW)
        {
            stepper1.stop();
            stepper1.setCurrentPosition(0);
            state = STATE_IDLE;
            // Wait until Button released
            while (digitalRead(BUTTON_PIN_DRIVE_LEFT) == LOW)
                ;
            delay(200); // Debounce Button
        }
        break;
    case STATE_DRIVE_LEFT:
        if (digitalRead(ENDSTOP_PIN_LEFT) == LOW || digitalRead(BUTTON_PIN_DRIVE_RIGHT) == LOW)
        {
            stepper1.stop();
            stepper1.setCurrentPosition(0);
            state = STATE_IDLE;
            // Wait until Button released
            while (digitalRead(BUTTON_PIN_DRIVE_RIGHT) == LOW)
                ;
            delay(200); // Debounce Button
        }
        break;
    }

    stepper1.run();
}

uint32_t DistanceToSteps(uint32_t distance_mm)
{
    uint32_t steps = 0;
    steps = ((STEPS_PER_REVOLUTION * MICROSTEPPING) / (TOOTH_PITCH_MM * PULLEY_TEETH)) * distance_mm;
    return steps;
}
