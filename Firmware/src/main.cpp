#include <AccelStepper.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <Encoder.h>
#include <SPI.h>
#include <Wire.h>

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

uint32_t DistanceToSteps(uint32_t distance_mm);

void setup()
{
    // OLED Init
    display.begin(SSD1306_SWITCHCAPVCC, 0x3C);
    display.display();
    delay(1000);
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
        else if (newPosition > 14)
        {
            newPosition = 14;
            myEnc.write(newPosition * 4);
        }

        oldPosition = newPosition;
        display.setCursor(0, 0);
        display.setTextSize(4);
        display.print(newPosition);
        display.print(" ");
        display.setTextSize(2);

        float speed = 0;

        switch (newPosition)
        {
        case 0:
            // 10 Seconds
            speed = (float)DistanceToSteps(1000) / 10.0f;
            display.print("10s");
            break;
        case 1:
            // 20 Seconds
            speed = (float)DistanceToSteps(1000) / 20.0f;
            display.print("20s");
            break;
        case 2:
            // 30 Seconds
            speed = (float)DistanceToSteps(1000) / 30.0f;
            display.print("30s");
            break;
        case 3:
            // 60 Seconds
            speed = (float)DistanceToSteps(1000) / 60.0f;
            display.print("1min");
            break;
        case 4:
            // 2 Minutes
            speed = (float)DistanceToSteps(1000) / (2.0f * 60.0f);
            display.print("2min");
            break;
        case 5:
            // 5 Minutes
            speed = (float)DistanceToSteps(1000) / (5.0f * 60.0f);
            display.print("5min");
            break;
        case 6:
            // 20 Minutes
            speed = (float)DistanceToSteps(1000) / (20.0f * 60.0f);
            display.print("20min");
            break;
        case 7:
            // 30 Minutes
            speed = (float)DistanceToSteps(1000) / (30.0f * 60.0f);
            display.print("30min");
            break;
        case 8:
            // 40 Minutes
            speed = (float)DistanceToSteps(1000) / (40.0f * 60.0f);
            display.print("40min");
            break;
        case 9:
            // 50 Minutes
            speed = (float)DistanceToSteps(1000) / (50.0f * 60.0f);
            display.print("50min");
            break;
        case 10:
            // 1 Hour
            speed = (float)DistanceToSteps(1000) / (1.0f * 60.0f * 60.0f);
            display.print("1h");
            break;
        case 11:
            // 1,5 Hours
            speed = (float)DistanceToSteps(1000) / (1.5f * 60.0f * 60.0f);
            display.print("1,5h");
            break;
        case 12:
            // 4 Hours
            speed = (float)DistanceToSteps(1000) / (4.0f * 60.0f * 60.0f);
            display.print("4h");
            break;
        case 13:
            // 8 Hours
            speed = (float)DistanceToSteps(1000) / (8.0f * 60.0f * 60.0f);
            display.print("8h");
            break;
        case 14:
            // 10 Hours
            speed = (float)DistanceToSteps(1000) / (10.0f * 60.0f * 60.0f);
            display.print("10h");
            break;

        default:
            break;
        }
        display.display();
        display.clearDisplay();
        stepper1.setMaxSpeed(speed);
    }
    if (digitalRead(BUTTON_PIN_DRIVE_LEFT) == LOW && (digitalRead(ENDSTOP_PIN_LEFT) == HIGH))
    {
        // Endstop is not activated - drive to the left is allowed
        // Move 1 m to the left - But drive should be stopped by endstop
        stepper1.move(DistanceToSteps(1000));
    }
    if (digitalRead(BUTTON_PIN_DRIVE_RIGHT) == LOW && !(digitalRead(ENDSTOP_PIN_RIGHT) == LOW))
    {
        // Endstop is not activated - drive to right is allowed
        // Move 1 m to the right - But drive should be stopped by endstop
        stepper1.move(-DistanceToSteps(1000));
    }

    if (digitalRead(ENDSTOP_PIN_LEFT) == LOW || digitalRead(ENDSTOP_PIN_RIGHT) == LOW)
    {
        stepper1.stop();
        stepper1.setCurrentPosition(0);
    }

    stepper1.run();
}

uint32_t DistanceToSteps(uint32_t distance_mm)
{
    uint32_t steps = 0;
    steps = ((STEPS_PER_REVOLUTION * MICROSTEPPING) / (TOOTH_PITCH_MM * PULLEY_TEETH)) * distance_mm;
    return steps;
}
