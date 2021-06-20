EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "CameraSlider"
Date "2021-06-19"
Rev "1.0.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 7500 2050 0    50   Input ~ 0
EN
Text GLabel 950  2700 0    50   Input ~ 0
EN
Wire Wire Line
	950  2700 1050 2700
Wire Wire Line
	7750 2050 7500 2050
$Comp
L Device:R R1
U 1 1 60CE7B7A
P 1050 2500
F 0 "R1" H 1120 2546 50  0000 L CNN
F 1 "1k" H 1120 2455 50  0000 L CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 980 2500 50  0001 C CNN
F 3 "~" H 1050 2500 50  0001 C CNN
	1    1050 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 60CE8783
P 1050 2300
F 0 "#PWR01" H 1050 2150 50  0001 C CNN
F 1 "+5V" H 1065 2473 50  0000 C CNN
F 2 "" H 1050 2300 50  0001 C CNN
F 3 "" H 1050 2300 50  0001 C CNN
	1    1050 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J8
U 1 1 60CE99F0
P 7050 2750
F 0 "J8" H 7100 2550 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 7150 3000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 7050 2750 50  0001 C CNN
F 3 "~" H 7050 2750 50  0001 C CNN
	1    7050 2750
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 60CEABCF
P 6600 2500
F 0 "#PWR012" H 6600 2350 50  0001 C CNN
F 1 "+5V" H 6615 2673 50  0000 C CNN
F 2 "" H 6600 2500 50  0001 C CNN
F 3 "" H 6600 2500 50  0001 C CNN
	1    6600 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2650 6600 2500
Wire Wire Line
	6600 2750 6600 2650
Connection ~ 6600 2650
Wire Wire Line
	6600 2850 6600 2750
Connection ~ 6600 2750
Text GLabel 7500 2350 0    50   Input ~ 0
X_STEP
Text GLabel 7500 2450 0    50   Input ~ 0
X_DIR
Text GLabel 2000 2100 0    50   Input ~ 0
X_STEP
Text GLabel 2000 2400 0    50   Input ~ 0
X_DIR
Wire Wire Line
	1050 2650 1050 2700
Wire Wire Line
	1050 2350 1050 2300
Wire Wire Line
	9150 2050 9350 2050
Wire Wire Line
	9150 2150 9350 2150
Wire Wire Line
	9150 2250 9350 2250
Wire Wire Line
	9150 2350 9350 2350
$Comp
L power:+BATT #PWR018
U 1 1 60CF3D83
P 9650 1650
F 0 "#PWR018" H 9650 1500 50  0001 C CNN
F 1 "+BATT" H 9665 1823 50  0000 C CNN
F 2 "" H 9650 1650 50  0001 C CNN
F 3 "" H 9650 1650 50  0001 C CNN
	1    9650 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 60CF5402
P 10050 1250
F 0 "C1" H 10168 1296 50  0000 L CNN
F 1 "100uF" H 10168 1205 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D8.0mm_P2.50mm" H 10088 1100 50  0001 C CNN
F 3 "~" H 10050 1250 50  0001 C CNN
	1    10050 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR021
U 1 1 60CF696B
P 10050 1050
F 0 "#PWR021" H 10050 900 50  0001 C CNN
F 1 "+BATT" H 10065 1223 50  0000 C CNN
F 2 "" H 10050 1050 50  0001 C CNN
F 3 "" H 10050 1050 50  0001 C CNN
	1    10050 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 60CF6EE8
P 10050 1450
F 0 "#PWR022" H 10050 1200 50  0001 C CNN
F 1 "GND" H 10055 1277 50  0000 C CNN
F 2 "" H 10050 1450 50  0001 C CNN
F 3 "" H 10050 1450 50  0001 C CNN
	1    10050 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 60CF863E
P 9200 3050
F 0 "#PWR019" H 9200 2800 50  0001 C CNN
F 1 "GND" H 9205 2877 50  0000 C CNN
F 2 "" H 9200 3050 50  0001 C CNN
F 3 "" H 9200 3050 50  0001 C CNN
	1    9200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 1450 10050 1400
Wire Wire Line
	10050 1100 10050 1050
$Comp
L power:+5V #PWR013
U 1 1 60CF9DA0
P 9400 1650
F 0 "#PWR013" H 9400 1500 50  0001 C CNN
F 1 "+5V" H 9415 1823 50  0000 C CNN
F 2 "" H 9400 1650 50  0001 C CNN
F 3 "" H 9400 1650 50  0001 C CNN
	1    9400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2350 7750 2350
Wire Wire Line
	7750 2450 7500 2450
$Comp
L Connector:Conn_01x04_Male J9
U 1 1 60CFCF99
P 8600 4250
F 0 "J9" H 8572 4224 50  0000 R CNN
F 1 "Conn_01x04_Male" H 8572 4133 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04_Pitch2.54mm" H 8600 4250 50  0001 C CNN
F 3 "~" H 8600 4250 50  0001 C CNN
	1    8600 4250
	-1   0    0    -1  
$EndComp
Text GLabel 3800 2400 2    50   Input ~ 0
SDA
Text GLabel 3800 2300 2    50   Input ~ 0
SCL
$Comp
L power:GND #PWR015
U 1 1 60D0CE24
P 8200 4550
F 0 "#PWR015" H 8200 4300 50  0001 C CNN
F 1 "GND" H 8205 4377 50  0000 C CNN
F 2 "" H 8200 4550 50  0001 C CNN
F 3 "" H 8200 4550 50  0001 C CNN
	1    8200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4550 8200 4150
Wire Wire Line
	8200 4150 8400 4150
$Comp
L power:+5V #PWR017
U 1 1 60D0E277
P 8300 4050
F 0 "#PWR017" H 8300 3900 50  0001 C CNN
F 1 "+5V" H 8315 4223 50  0000 C CNN
F 2 "" H 8300 4050 50  0001 C CNN
F 3 "" H 8300 4050 50  0001 C CNN
	1    8300 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4250 8300 4250
Wire Wire Line
	8300 4250 8300 4050
Text GLabel 8050 4350 0    50   Input ~ 0
SCL
Text GLabel 8050 4450 0    50   Input ~ 0
SDA
Wire Wire Line
	8400 4450 8050 4450
Wire Wire Line
	8400 4350 8050 4350
Text Notes 7950 3800 0    50   ~ 0
0.01 OLED Display
Text Notes 8150 1250 0    50   ~ 0
Stepper Driver
$Comp
L Connector:Conn_01x04_Male J10
U 1 1 60D19A1C
P 8650 5550
F 0 "J10" H 8622 5524 50  0000 R CNN
F 1 "Conn_01x04_Male" H 8622 5433 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04_Pitch2.54mm" H 8650 5550 50  0001 C CNN
F 3 "~" H 8650 5550 50  0001 C CNN
	1    8650 5550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 60D19A22
P 8250 5850
F 0 "#PWR016" H 8250 5600 50  0001 C CNN
F 1 "GND" H 8255 5677 50  0000 C CNN
F 2 "" H 8250 5850 50  0001 C CNN
F 3 "" H 8250 5850 50  0001 C CNN
	1    8250 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5850 8250 5450
Wire Wire Line
	8250 5450 8450 5450
$Comp
L power:+5V #PWR020
U 1 1 60D19A2A
P 8350 5350
F 0 "#PWR020" H 8350 5200 50  0001 C CNN
F 1 "+5V" H 8365 5523 50  0000 C CNN
F 2 "" H 8350 5350 50  0001 C CNN
F 3 "" H 8350 5350 50  0001 C CNN
	1    8350 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5550 8350 5550
Wire Wire Line
	8350 5550 8350 5350
Text GLabel 8100 5650 0    50   Input ~ 0
ENCODER_DT
Text GLabel 8100 5750 0    50   Input ~ 0
ENCODER_CLK
Wire Wire Line
	8450 5750 8100 5750
Wire Wire Line
	8450 5650 8100 5650
Text Notes 8000 5100 0    50   ~ 0
Rotary Encoder
Text GLabel 2000 2200 0    50   Input ~ 0
ENCODER_DT
Text GLabel 2000 2500 0    50   Input ~ 0
ENCODER_CLK
Wire Wire Line
	1050 2700 2100 2700
Connection ~ 1050 2700
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 60D24C1F
P 5850 4000
F 0 "J4" H 5900 3800 50  0000 R CNN
F 1 "Conn_01x02_Male" H 5900 3700 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 5850 4000 50  0001 C CNN
F 3 "~" H 5850 4000 50  0001 C CNN
	1    5850 4000
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 60D254A8
P 5850 4400
F 0 "J5" H 5900 4200 50  0000 R CNN
F 1 "Conn_01x02_Male" H 5900 4100 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 5850 4400 50  0001 C CNN
F 3 "~" H 5850 4400 50  0001 C CNN
	1    5850 4400
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 60D25F65
P 5850 5450
F 0 "J6" H 5900 5250 50  0000 R CNN
F 1 "Conn_01x03_Male" H 5900 5150 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 5850 5450 50  0001 C CNN
F 3 "~" H 5850 5450 50  0001 C CNN
	1    5850 5450
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 60D26729
P 5850 5950
F 0 "J7" H 5900 5750 50  0000 R CNN
F 1 "Conn_01x03_Male" H 5900 5650 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 5850 5950 50  0001 C CNN
F 3 "~" H 5850 5950 50  0001 C CNN
	1    5850 5950
	-1   0    0    -1  
$EndComp
Text Notes 5600 3850 0    50   ~ 0
Buttons
Text Notes 5550 5050 0    50   ~ 0
Endstops
Text Notes 5900 4100 0    50   ~ 0
Drive Left
Text Notes 5900 4500 0    50   ~ 0
Drive Right
Text Notes 5900 5550 0    50   ~ 0
Left
Text Notes 5900 6050 0    50   ~ 0
Right
Text Notes 800  1150 0    500  ~ 0
CameraSlider
$Comp
L power:GND #PWR010
U 1 1 60D2CE9B
P 5600 4600
F 0 "#PWR010" H 5600 4350 50  0001 C CNN
F 1 "GND" H 5605 4427 50  0000 C CNN
F 2 "" H 5600 4600 50  0001 C CNN
F 3 "" H 5600 4600 50  0001 C CNN
	1    5600 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4600 5600 4500
Wire Wire Line
	5600 4500 5650 4500
Wire Wire Line
	5600 4500 5600 4100
Wire Wire Line
	5600 4100 5650 4100
Connection ~ 5600 4500
$Comp
L power:GND #PWR011
U 1 1 60D2F2DE
P 5600 6150
F 0 "#PWR011" H 5600 5900 50  0001 C CNN
F 1 "GND" H 5605 5977 50  0000 C CNN
F 2 "" H 5600 6150 50  0001 C CNN
F 3 "" H 5600 6150 50  0001 C CNN
	1    5600 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6150 5600 5950
Wire Wire Line
	5600 5950 5650 5950
Wire Wire Line
	5600 5950 5600 5450
Wire Wire Line
	5600 5450 5650 5450
Connection ~ 5600 5950
$Comp
L power:+5V #PWR09
U 1 1 60D334DA
P 5500 5300
F 0 "#PWR09" H 5500 5150 50  0001 C CNN
F 1 "+5V" H 5515 5473 50  0000 C CNN
F 2 "" H 5500 5300 50  0001 C CNN
F 3 "" H 5500 5300 50  0001 C CNN
	1    5500 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5300 5500 5550
Wire Wire Line
	5500 5550 5650 5550
Wire Wire Line
	5650 6050 5500 6050
Wire Wire Line
	5500 6050 5500 5550
Connection ~ 5500 5550
Text GLabel 5300 5350 0    50   Input ~ 0
ENDSTOP_LEFT
Text GLabel 5300 5850 0    50   Input ~ 0
ENDSTOP_RIGHT
Wire Wire Line
	5300 5350 5650 5350
Wire Wire Line
	5300 5850 5650 5850
Text GLabel 2000 2800 0    50   Input ~ 0
ENDSTOP_LEFT
Text GLabel 2000 2900 0    50   Input ~ 0
ENDSTOP_RIGHT
Text GLabel 5300 4000 0    50   Input ~ 0
BUTTON_LEFT
Wire Wire Line
	5650 4000 5300 4000
Text GLabel 5300 4400 0    50   Input ~ 0
BUTTON_RIGHT
Wire Wire Line
	5300 4400 5650 4400
Text GLabel 3800 2500 2    50   Input ~ 0
BUTTON_LEFT
Text GLabel 3800 3100 2    50   Input ~ 0
BUTTON_RIGHT
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 60D4897F
P 1900 4100
F 0 "J1" H 1980 4092 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 1980 4001 50  0000 L CNN
F 2 "Terminal_Blocks:TerminalBlock_Altech_AK300-2_P5.00mm" H 1900 4100 50  0001 C CNN
F 3 "~" H 1900 4100 50  0001 C CNN
	1    1900 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60D49CCA
P 1650 4300
F 0 "#PWR03" H 1650 4050 50  0001 C CNN
F 1 "GND" H 1655 4127 50  0000 C CNN
F 2 "" H 1650 4300 50  0001 C CNN
F 3 "" H 1650 4300 50  0001 C CNN
	1    1650 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR02
U 1 1 60D4A9E6
P 1650 4000
F 0 "#PWR02" H 1650 3850 50  0001 C CNN
F 1 "+BATT" H 1665 4173 50  0000 C CNN
F 2 "" H 1650 4000 50  0001 C CNN
F 3 "" H 1650 4000 50  0001 C CNN
	1    1650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4100 1650 4100
Wire Wire Line
	1650 4100 1650 4000
Wire Wire Line
	1700 4200 1650 4200
Wire Wire Line
	1650 4200 1650 4300
Text Notes 1850 3950 0    50   ~ 0
8-35 V
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 60D4F827
P 1900 5000
F 0 "J2" H 1950 4800 50  0000 R CNN
F 1 "Conn_01x02_Male" H 1950 4700 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 1900 5000 50  0001 C CNN
F 3 "~" H 1900 5000 50  0001 C CNN
	1    1900 5000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 60D50B56
P 1650 5200
F 0 "#PWR05" H 1650 4950 50  0001 C CNN
F 1 "GND" H 1655 5027 50  0000 C CNN
F 2 "" H 1650 5200 50  0001 C CNN
F 3 "" H 1650 5200 50  0001 C CNN
	1    1650 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 60D5138A
P 1650 4900
F 0 "#PWR04" H 1650 4750 50  0001 C CNN
F 1 "+5V" H 1665 5073 50  0000 C CNN
F 2 "" H 1650 4900 50  0001 C CNN
F 3 "" H 1650 4900 50  0001 C CNN
	1    1650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5000 1650 5000
Wire Wire Line
	1650 5000 1650 4900
Wire Wire Line
	1700 5100 1650 5100
Wire Wire Line
	1650 5100 1650 5200
Text Notes 1850 4400 0    50   ~ 0
Supply from Batterypack
Text Notes 1850 4900 0    50   ~ 0
Supply from LM2596 Module
$Comp
L power:GND #PWR07
U 1 1 60D5A23B
P 3800 1800
F 0 "#PWR07" H 3800 1550 50  0001 C CNN
F 1 "GND" V 3805 1627 50  0000 C CNN
F 2 "" H 3800 1800 50  0001 C CNN
F 3 "" H 3800 1800 50  0001 C CNN
	1    3800 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 60D60605
P 4200 1850
F 0 "#PWR08" H 4200 1700 50  0001 C CNN
F 1 "+5V" H 4215 2023 50  0000 C CNN
F 2 "" H 4200 1850 50  0001 C CNN
F 3 "" H 4200 1850 50  0001 C CNN
	1    4200 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 60D697A5
P 4000 2700
F 0 "J3" H 3950 2700 50  0000 R CNN
F 1 "Conn_01x03_Male" H 3950 2600 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4000 2700 50  0001 C CNN
F 3 "~" H 4000 2700 50  0001 C CNN
	1    4000 2700
	-1   0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60D8A8EC
P 1250 4000
F 0 "#FLG01" H 1250 4075 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 4173 50  0000 C CNN
F 2 "" H 1250 4000 50  0001 C CNN
F 3 "~" H 1250 4000 50  0001 C CNN
	1    1250 4000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 60D8BFB8
P 1250 4300
F 0 "#FLG02" H 1250 4375 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 4473 50  0000 C CNN
F 2 "" H 1250 4300 50  0001 C CNN
F 3 "~" H 1250 4300 50  0001 C CNN
	1    1250 4300
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 60D8CCE9
P 1250 4900
F 0 "#FLG03" H 1250 4975 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 5073 50  0000 C CNN
F 2 "" H 1250 4900 50  0001 C CNN
F 3 "~" H 1250 4900 50  0001 C CNN
	1    1250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5000 1250 5000
Wire Wire Line
	1250 5000 1250 4900
Connection ~ 1650 5000
Wire Wire Line
	1650 4200 1250 4200
Wire Wire Line
	1250 4200 1250 4300
Connection ~ 1650 4200
Wire Wire Line
	1650 4100 1250 4100
Wire Wire Line
	1250 4100 1250 4000
Connection ~ 1650 4100
$Comp
L Mechanical:MountingHole H1
U 1 1 60D9784D
P 1500 6000
F 0 "H1" H 1600 6046 50  0000 L CNN
F 1 "MountingHole" H 1600 5955 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 1500 6000 50  0001 C CNN
F 3 "~" H 1500 6000 50  0001 C CNN
	1    1500 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60D98F66
P 1500 6250
F 0 "H2" H 1600 6296 50  0000 L CNN
F 1 "MountingHole" H 1600 6205 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 1500 6250 50  0001 C CNN
F 3 "~" H 1500 6250 50  0001 C CNN
	1    1500 6250
	1    0    0    -1  
$EndComp
$Comp
L A000005:A000005 U1
U 1 1 60CE5F99
P 2900 2400
F 0 "U1" H 2900 3367 50  0000 C CNN
F 1 "A000005" H 2900 3276 50  0000 C CNN
F 2 "Arduino_Nano:MODULE_A000005" H 2900 2400 50  0001 L BNN
F 3 "" H 2900 2400 50  0001 L BNN
F 4 "N/A" H 2900 2400 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Manufacturer Recommendations" H 2900 2400 50  0001 L BNN "STANDARD"
F 6 "23/03/2020" H 2900 2400 50  0001 L BNN "PARTREV"
F 7 "Arduino" H 2900 2400 50  0001 L BNN "MANUFACTURER"
	1    2900 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 60CFEFE9
P 2000 2000
F 0 "#PWR06" H 2000 1750 50  0001 C CNN
F 1 "GND" V 2005 1827 50  0000 C CNN
F 2 "" H 2000 2000 50  0001 C CNN
F 3 "" H 2000 2000 50  0001 C CNN
	1    2000 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 2000 2100 2000
Wire Wire Line
	2000 2100 2100 2100
Wire Wire Line
	2000 2200 2100 2200
Wire Wire Line
	2000 2400 2100 2400
Wire Wire Line
	2000 2500 2100 2500
Wire Wire Line
	2100 2800 2000 2800
Wire Wire Line
	2100 2900 2000 2900
Wire Wire Line
	3700 3100 3800 3100
Wire Wire Line
	3700 2800 3800 2800
Wire Wire Line
	3700 2700 3800 2700
Wire Wire Line
	3700 2600 3800 2600
Wire Wire Line
	3700 2500 3800 2500
Wire Wire Line
	3700 2400 3800 2400
Wire Wire Line
	3700 2300 3800 2300
Wire Wire Line
	3700 1800 3800 1800
NoConn ~ 2100 1700
NoConn ~ 2100 1800
NoConn ~ 2100 1900
NoConn ~ 3700 1700
NoConn ~ 3700 1900
NoConn ~ 3700 2100
NoConn ~ 3700 2200
NoConn ~ 3700 2900
NoConn ~ 3700 3000
Wire Wire Line
	3700 2000 4200 2000
Wire Wire Line
	4200 2000 4200 1850
NoConn ~ 2100 2600
NoConn ~ 2100 2300
NoConn ~ 2100 3100
NoConn ~ 2100 3000
$Comp
L A4988_STEPPER_MOTOR_DRIVER_CARRIER:A4988_STEPPER_MOTOR_DRIVER_CARRIER U2
U 1 1 60D942D1
P 8450 2350
F 0 "U2" H 8450 3217 50  0000 C CNN
F 1 "A4988_STEPPER_MOTOR_DRIVER_CARRIER" H 8450 3126 50  0000 C CNN
F 2 "A4988_STEPPER_MOTOR_DRIVER_CARRIER:MODULE_A4988_STEPPER_MOTOR_DRIVER_CARRIER" H 8450 2350 50  0001 L BNN
F 3 "" H 8450 2350 50  0001 L BNN
F 4 "None" H 8450 2350 50  0001 L BNN "PACKAGE"
F 5 "A4988 STEPPER MOTOR DRIVER CARRIER" H 8450 2350 50  0001 L BNN "MP"
F 6 "Stepper motor controler; IC: A4988; 1A; Uin mot: 8÷35V" H 8450 2350 50  0001 L BNN "DESCRIPTION"
F 7 "Pololu" H 8450 2350 50  0001 L BNN "MF"
F 8 "Unavailable" H 8450 2350 50  0001 L BNN "AVAILABILITY"
F 9 "None" H 8450 2350 50  0001 L BNN "PRICE"
	1    8450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2150 7750 2250
$Comp
L Connector:Conn_01x04_Male J11
U 1 1 60CEF8B5
P 9550 2250
F 0 "J11" H 9522 2224 50  0000 R CNN
F 1 "Conn_01x04_Male" H 9522 2133 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04_Pitch2.54mm" H 9550 2250 50  0001 C CNN
F 3 "~" H 9550 2250 50  0001 C CNN
	1    9550 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9150 1750 9400 1750
Wire Wire Line
	9400 1750 9400 1650
Wire Wire Line
	9150 1850 9650 1850
Wire Wire Line
	9650 1850 9650 1650
Wire Wire Line
	9150 2950 9200 2950
Wire Wire Line
	9200 2950 9200 3050
Wire Wire Line
	7350 2650 7750 2650
Wire Wire Line
	7750 2750 7350 2750
Wire Wire Line
	7350 2850 7750 2850
Wire Wire Line
	6600 2650 6850 2650
Wire Wire Line
	6600 2750 6850 2750
Wire Wire Line
	6600 2850 6850 2850
$Comp
L Mechanical:MountingHole H3
U 1 1 60DF2B23
P 1500 6500
F 0 "H3" H 1600 6546 50  0000 L CNN
F 1 "MountingHole" H 1600 6455 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 1500 6500 50  0001 C CNN
F 3 "~" H 1500 6500 50  0001 C CNN
	1    1500 6500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 60DF2EDB
P 1500 6750
F 0 "H4" H 1600 6796 50  0000 L CNN
F 1 "MountingHole" H 1600 6705 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 1500 6750 50  0001 C CNN
F 3 "~" H 1500 6750 50  0001 C CNN
	1    1500 6750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
