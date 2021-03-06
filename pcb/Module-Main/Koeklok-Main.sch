EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Koeklok - Main module"
Date "2019-05-03"
Rev "v1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Author: Koen Koning"
$EndDescr
$Comp
L Device:R R3
U 1 1 5C44C72B
P 3750 5900
F 0 "R3" H 3820 5946 50  0000 L CNN
F 1 "4k7" V 3750 5800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3680 5900 50  0001 C CNN
F 3 "~" H 3750 5900 50  0001 C CNN
	1    3750 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5250 3750 5750
Wire Wire Line
	3600 6250 3750 6250
Wire Wire Line
	3750 6250 3750 6050
$Comp
L power:VCC #PWR03
U 1 1 5C479673
P 2100 5650
F 0 "#PWR03" H 2100 5500 50  0001 C CNN
F 1 "VCC" H 2117 5823 50  0000 C CNN
F 2 "" H 2100 5650 50  0001 C CNN
F 3 "" H 2100 5650 50  0001 C CNN
	1    2100 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5C4796BC
P 2100 5850
F 0 "#PWR04" H 2100 5600 50  0001 C CNN
F 1 "GND" H 2105 5677 50  0000 C CNN
F 2 "" H 2100 5850 50  0001 C CNN
F 3 "" H 2100 5850 50  0001 C CNN
	1    2100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5700 2100 5700
Wire Wire Line
	2100 5700 2100 5650
Wire Wire Line
	1250 5800 2100 5800
Wire Wire Line
	2100 5800 2100 5850
$Comp
L Connector:USB_B_Mini J1
U 1 1 5C4ED0DD
P 950 2350
F 0 "J1" H 950 2800 50  0000 C CNN
F 1 "USB" H 950 2700 50  0000 C CNN
F 2 "Koeklok:USB_Micro-B_4DIP" H 1100 2300 50  0001 C CNN
F 3 "~" H 1100 2300 50  0001 C CNN
	1    950  2350
	1    0    0    -1  
$EndComp
Text Notes 1150 6250 0    50   ~ 0
Programming MCU\nOptional serial pins
Text Notes 1450 3600 0    50   ~ 0
Power + communication
NoConn ~ 900  2000
NoConn ~ 1250 2550
$Comp
L power:GND #PWR01
U 1 1 5C4F9C14
P 1300 3050
F 0 "#PWR01" H 1300 2800 50  0001 C CNN
F 1 "GND" H 1305 2877 50  0000 C CNN
F 2 "" H 1300 3050 50  0001 C CNN
F 3 "" H 1300 3050 50  0001 C CNN
	1    1300 3050
	1    0    0    -1  
$EndComp
Text GLabel 1400 5400 2    50   Input ~ 0
UPDI
Wire Wire Line
	1250 5400 1400 5400
Text GLabel 3600 6250 0    50   Input ~ 0
I2C_SDA
Text GLabel 3600 6150 0    50   Input ~ 0
I2C_SCL
$Comp
L power:VCC #PWR012
U 1 1 5CCE6472
P 7600 1600
F 0 "#PWR012" H 7600 1450 50  0001 C CNN
F 1 "VCC" H 7617 1773 50  0000 C CNN
F 2 "" H 7600 1600 50  0001 C CNN
F 3 "" H 7600 1600 50  0001 C CNN
	1    7600 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5CCE6478
P 7600 3500
F 0 "#PWR013" H 7600 3250 50  0001 C CNN
F 1 "GND" H 7605 3327 50  0000 C CNN
F 2 "" H 7600 3500 50  0001 C CNN
F 3 "" H 7600 3500 50  0001 C CNN
	1    7600 3500
	1    0    0    -1  
$EndComp
Text GLabel 8250 2850 2    50   Input ~ 0
I2C_SDA
Text GLabel 8250 2750 2    50   Input ~ 0
I2C_SCL
Wire Wire Line
	8200 2550 8250 2550
Wire Wire Line
	8200 2450 8250 2450
Wire Wire Line
	8200 2750 8250 2750
Wire Wire Line
	8200 2850 8250 2850
Wire Wire Line
	8200 2950 8250 2950
Wire Wire Line
	8200 3050 8250 3050
Wire Wire Line
	8200 2150 8250 2150
Text GLabel 8250 1950 2    50   Input ~ 0
RTC_INT
Wire Wire Line
	8200 2050 8250 2050
Text GLabel 8250 1850 2    50   Input ~ 0
UPDI
Wire Wire Line
	7600 1650 7600 1600
Wire Wire Line
	7600 3500 7600 3450
Wire Wire Line
	8200 2250 8250 2250
Wire Wire Line
	8200 2350 8250 2350
Wire Wire Line
	6950 2750 7000 2750
Wire Wire Line
	6950 2850 7000 2850
Wire Wire Line
	6950 2950 7000 2950
Wire Wire Line
	6950 3050 7000 3050
Wire Wire Line
	8200 1850 8250 1850
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 5CD23E85
P 10600 3550
F 0 "J5" H 10700 3500 50  0000 C CNN
F 1 "CONN_IO_1" H 10628 3435 50  0001 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical_SMD_Pin1Right" H 10600 3550 50  0001 C CNN
F 3 "~" H 10600 3550 50  0001 C CNN
	1    10600 3550
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female J6
U 1 1 5CD23E8B
P 10600 3950
F 0 "J6" H 10700 3900 50  0000 C CNN
F 1 "CONN_IO_2" H 10628 3835 50  0001 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical_SMD_Pin1Right" H 10600 3950 50  0001 C CNN
F 3 "~" H 10600 3950 50  0001 C CNN
	1    10600 3950
	1    0    0    1   
$EndComp
Text GLabel 10350 2050 0    50   Input ~ 0
HDR_DISP_1
Text GLabel 10350 2150 0    50   Input ~ 0
HDR_DISP_2
Text GLabel 10350 2250 0    50   Input ~ 0
HDR_DISP_3
Text GLabel 10350 2350 0    50   Input ~ 0
HDR_DISP_4
Text GLabel 10350 2450 0    50   Input ~ 0
HDR_DISP_5
Text GLabel 10350 2550 0    50   Input ~ 0
HDR_DISP_6
Text GLabel 10350 3550 0    50   Input ~ 0
HDR_IO_1
Text GLabel 10350 3650 0    50   Input ~ 0
HDR_IO_2
Text GLabel 10350 3750 0    50   Input ~ 0
HDR_IO_3
Text GLabel 10350 3850 0    50   Input ~ 0
HDR_IO_4
Text GLabel 10350 3950 0    50   Input ~ 0
HDR_IO_5
Text GLabel 10350 4050 0    50   Input ~ 0
HDR_IO_6
Wire Wire Line
	8200 1950 8250 1950
Wire Wire Line
	8200 3150 8250 3150
Wire Wire Line
	8200 3250 8250 3250
Text GLabel 8250 2050 2    50   Input ~ 0
HDR_IO_1
Text GLabel 8250 2150 2    50   Input ~ 0
HDR_IO_2
Text GLabel 8250 2250 2    50   Input ~ 0
HDR_IO_3
Text GLabel 8250 2350 2    50   Input ~ 0
HDR_IO_4
Text GLabel 8250 2450 2    50   Input ~ 0
HDR_IO_5
Text GLabel 8250 2550 2    50   Input ~ 0
HDR_IO_6
Text GLabel 8250 3150 2    50   Input ~ 0
HDR_DISP_1
Text GLabel 8250 3250 2    50   Input ~ 0
HDR_DISP_2
Text GLabel 6950 2750 0    50   Input ~ 0
HDR_DISP_6
Text GLabel 6950 2850 0    50   Input ~ 0
HDR_DISP_5
Text GLabel 6950 2950 0    50   Input ~ 0
HDR_DISP_4
Text GLabel 6950 3050 0    50   Input ~ 0
HDR_DISP_3
$Comp
L Koeklok:ATtiny3216-S U3
U 1 1 5CCE647E
P 7600 2550
F 0 "U3" H 7000 2750 50  0000 C CNN
F 1 "ATtiny3216-S" H 6800 2650 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 7600 2550 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATtiny3216_ATtiny1616-data-sheet-40001997B.pdf" H 7600 2550 50  0001 C CNN
	1    7600 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 2050 10350 2050
Wire Wire Line
	10400 2150 10350 2150
Wire Wire Line
	10400 2250 10350 2250
Wire Wire Line
	10400 2350 10350 2350
Wire Wire Line
	10400 2450 10350 2450
Wire Wire Line
	10400 2550 10350 2550
Wire Wire Line
	10400 3550 10350 3550
Wire Wire Line
	10400 3650 10350 3650
Wire Wire Line
	10400 3750 10350 3750
Wire Wire Line
	10400 3850 10350 3850
Wire Wire Line
	10400 3950 10350 3950
Wire Wire Line
	10400 4050 10350 4050
$Comp
L power:GND #PWR019
U 1 1 5D0BBF65
P 10150 3350
F 0 "#PWR019" H 10150 3100 50  0001 C CNN
F 1 "GND" H 10300 3300 50  0000 C CNN
F 2 "" H 10150 3350 50  0001 C CNN
F 3 "" H 10150 3350 50  0001 C CNN
	1    10150 3350
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR018
U 1 1 5D0BBF6B
P 10150 3250
F 0 "#PWR018" H 10150 3100 50  0001 C CNN
F 1 "VCC" H 10300 3300 50  0000 C CNN
F 2 "" H 10150 3250 50  0001 C CNN
F 3 "" H 10150 3250 50  0001 C CNN
	1    10150 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10400 3450 10300 3450
Wire Wire Line
	10300 3450 10300 3350
Wire Wire Line
	10300 3350 10150 3350
Wire Wire Line
	10400 3250 10150 3250
Wire Wire Line
	10400 3250 10400 3350
$Comp
L Device:C C6
U 1 1 5D10AE76
P 6400 3900
F 0 "C6" H 6515 3946 50  0000 L CNN
F 1 "100uF" H 6515 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6438 3750 50  0001 C CNN
F 3 "~" H 6400 3900 50  0001 C CNN
	1    6400 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D210D74
P 2500 2400
F 0 "R2" V 2600 2400 50  0000 C CNN
F 1 "27" V 2500 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2430 2400 50  0001 C CNN
F 3 "~" H 2500 2400 50  0001 C CNN
	1    2500 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5D22AC33
P 2500 2300
F 0 "R1" V 2400 2300 50  0000 C CNN
F 1 "27" V 2500 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2430 2300 50  0001 C CNN
F 3 "~" H 2500 2300 50  0001 C CNN
	1    2500 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 5500 1400 5500
Wire Wire Line
	1400 5600 1250 5600
$Comp
L Connector:Conn_01x05_Male J2
U 1 1 5D7D2A7B
P 1050 5600
F 0 "J2" H 950 5600 50  0000 C CNN
F 1 "Debug pins" H 1150 5950 50  0001 C CNN
F 2 "Connector_Harwin:Harwin_M20-89005xx_1x05_P2.54mm_Horizontal" H 1050 5600 50  0001 C CNN
F 3 "~" H 1050 5600 50  0001 C CNN
	1    1050 5600
	1    0    0    -1  
$EndComp
Text Notes 9550 2700 0    50   ~ 0
Header connection to display module
Text Notes 9700 4200 0    50   ~ 0
Header connection to IO module
Wire Wire Line
	6400 4100 6400 4050
Wire Wire Line
	6400 3700 6400 3750
Text GLabel 1400 5600 2    50   Input ~ 0
MCU_UART_RXD
Text GLabel 1400 5500 2    50   Input ~ 0
MCU_UART_TXD
Connection ~ 3750 6250
NoConn ~ 4250 6550
Text GLabel 5800 6450 2    50   Input ~ 0
RTC_INT
$Comp
L Device:R R7
U 1 1 5C6E22B2
P 5700 6250
F 0 "R7" H 5770 6296 50  0000 L CNN
F 1 "4k7" V 5700 6150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5630 6250 50  0001 C CNN
F 3 "~" H 5700 6250 50  0001 C CNN
	1    5700 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6450 5700 6450
Connection ~ 5700 6450
Wire Wire Line
	5700 6400 5700 6450
Wire Wire Line
	5700 6450 5250 6450
$Comp
L power:VCC #PWR011
U 1 1 5C6E20DB
P 5700 6100
F 0 "#PWR011" H 5700 5950 50  0001 C CNN
F 1 "VCC" H 5717 6273 50  0000 C CNN
F 2 "" H 5700 6100 50  0001 C CNN
F 3 "" H 5700 6100 50  0001 C CNN
	1    5700 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5550 4750 5550
Wire Wire Line
	4350 5250 4000 5250
Connection ~ 4350 5250
Wire Wire Line
	4350 5300 4350 5250
Text Label 5050 5550 0    50   ~ 0
Vbat
Wire Wire Line
	5450 5850 5450 5900
$Comp
L power:GND #PWR010
U 1 1 5C5713EF
P 5450 5900
F 0 "#PWR010" H 5450 5650 50  0001 C CNN
F 1 "GND" H 5455 5727 50  0000 C CNN
F 2 "" H 5450 5900 50  0001 C CNN
F 3 "" H 5450 5900 50  0001 C CNN
	1    5450 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5950 4750 5550
Wire Wire Line
	4350 5600 4350 5650
Connection ~ 4650 5250
Wire Wire Line
	4650 5250 4650 5200
Wire Wire Line
	4650 5250 4650 5950
$Comp
L Device:Battery_Cell BT1
U 1 1 5C54C017
P 5450 5750
F 0 "BT1" H 5568 5846 50  0000 L CNN
F 1 "Battery_Cell" H 5568 5755 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_3000_1x12mm" V 5450 5810 50  0001 C CNN
F 3 "~" V 5450 5810 50  0001 C CNN
	1    5450 5750
	1    0    0    -1  
$EndComp
Text Notes 5250 6800 0    50   ~ 0
Pins 5..12 to GND
$Comp
L power:GND #PWR07
U 1 1 5C454A33
P 4350 5650
F 0 "#PWR07" H 4350 5400 50  0001 C CNN
F 1 "GND" H 4355 5477 50  0000 C CNN
F 2 "" H 4350 5650 50  0001 C CNN
F 3 "" H 4350 5650 50  0001 C CNN
	1    4350 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5C454947
P 4350 5450
F 0 "C5" V 4098 5450 50  0000 C CNN
F 1 "100pF" V 4189 5450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4388 5300 50  0001 C CNN
F 3 "~" H 4350 5450 50  0001 C CNN
	1    4350 5450
	-1   0    0    1   
$EndComp
NoConn ~ 5250 6150
Wire Wire Line
	4000 6150 4250 6150
Connection ~ 4000 6150
Wire Wire Line
	4000 6050 4000 6150
Wire Wire Line
	3750 6250 4250 6250
Wire Wire Line
	3600 6150 4000 6150
Connection ~ 4000 5250
Wire Wire Line
	4000 5250 3750 5250
Wire Wire Line
	4000 5250 4000 5750
Wire Wire Line
	4650 5250 4350 5250
$Comp
L Device:R R6
U 1 1 5C44C775
P 4000 5900
F 0 "R6" H 4070 5946 50  0000 L CNN
F 1 "4k7" V 4000 5800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3930 5900 50  0001 C CNN
F 3 "~" H 4000 5900 50  0001 C CNN
	1    4000 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6800 4750 6750
$Comp
L power:GND #PWR09
U 1 1 5C44ABA9
P 4750 6800
F 0 "#PWR09" H 4750 6550 50  0001 C CNN
F 1 "GND" H 4755 6627 50  0000 C CNN
F 2 "" H 4750 6800 50  0001 C CNN
F 3 "" H 4750 6800 50  0001 C CNN
	1    4750 6800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 5C44A7C4
P 4650 5200
F 0 "#PWR08" H 4650 5050 50  0001 C CNN
F 1 "VCC" H 4667 5373 50  0000 C CNN
F 2 "" H 4650 5200 50  0001 C CNN
F 3 "" H 4650 5200 50  0001 C CNN
	1    4650 5200
	1    0    0    -1  
$EndComp
$Comp
L Timer_RTC:DS3231M U2
U 1 1 5C448C42
P 4750 6350
F 0 "U2" H 5000 5900 50  0000 C CNN
F 1 "DS3231M" H 5000 6000 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 4750 5750 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231.pdf" H 5020 6400 50  0001 C CNN
	1    4750 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1750 10150 1750
Wire Wire Line
	10400 1850 10400 1750
Wire Wire Line
	10300 1850 10150 1850
Wire Wire Line
	10300 1950 10300 1850
Wire Wire Line
	10400 1950 10300 1950
$Comp
L power:VCC #PWR016
U 1 1 5D0599B5
P 10150 1750
F 0 "#PWR016" H 10150 1600 50  0001 C CNN
F 1 "VCC" H 10300 1800 50  0000 C CNN
F 2 "" H 10150 1750 50  0001 C CNN
F 3 "" H 10150 1750 50  0001 C CNN
	1    10150 1750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5D04173D
P 10150 1850
F 0 "#PWR017" H 10150 1600 50  0001 C CNN
F 1 "GND" H 10300 1800 50  0000 C CNN
F 2 "" H 10150 1850 50  0001 C CNN
F 3 "" H 10150 1850 50  0001 C CNN
	1    10150 1850
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 5CD0F95E
P 10600 2450
F 0 "J4" H 10700 2400 50  0000 C CNN
F 1 "CONN_DISP_2" H 10492 2116 50  0001 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical_SMD_Pin1Right" H 10600 2450 50  0001 C CNN
F 3 "~" H 10600 2450 50  0001 C CNN
	1    10600 2450
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 5CCF950A
P 10600 2050
F 0 "J3" H 10700 2000 50  0000 C CNN
F 1 "CONN_DISP_1" H 10492 1716 50  0001 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical_SMD_Pin1Right" H 10600 2050 50  0001 C CNN
F 3 "~" H 10600 2050 50  0001 C CNN
	1    10600 2050
	1    0    0    1   
$EndComp
Text Notes 7250 3800 0    50   ~ 0
Main microcontroller
Text Notes 4150 7150 0    50   ~ 0
Real-time clock (battery backed)
Text Notes 6050 4450 0    50   ~ 0
TODO: more caps?
$Comp
L power:VCC #PWR014
U 1 1 5CE29D3F
P 6400 3700
F 0 "#PWR014" H 6400 3550 50  0001 C CNN
F 1 "VCC" H 6417 3873 50  0000 C CNN
F 2 "" H 6400 3700 50  0001 C CNN
F 3 "" H 6400 3700 50  0001 C CNN
	1    6400 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5CE2C9A1
P 6400 4100
F 0 "#PWR015" H 6400 3850 50  0001 C CNN
F 1 "GND" H 6405 3927 50  0000 C CNN
F 2 "" H 6400 4100 50  0001 C CNN
F 3 "" H 6400 4100 50  0001 C CNN
	1    6400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2400 2350 2400
Wire Wire Line
	2300 2300 2350 2300
Wire Wire Line
	2650 2400 2900 2400
Wire Wire Line
	2650 2300 2900 2300
Wire Wire Line
	950  2950 950  2750
Text Label 1250 2350 0    50   ~ 0
D+
Text Label 1250 2450 0    50   ~ 0
D-
Text GLabel 8250 2950 2    50   Input ~ 0
MCU_UART_TXD
Text GLabel 8250 3050 2    50   Input ~ 0
MCU_UART_RXD
$Comp
L Interface_USB:FT230XS U1
U 1 1 5E2DFEF9
P 3600 2400
F 0 "U1" H 3150 3000 50  0000 C CNN
F 1 "FT230XS" H 4000 3000 50  0000 C CNN
F 2 "Package_SO:SSOP-16_3.9x4.9mm_P0.635mm" H 4600 1800 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT230X.pdf" H 3600 2400 50  0001 C CNN
	1    3600 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2000 2850 2000
Wire Wire Line
	2850 2000 2850 2600
Wire Wire Line
	2850 2600 2900 2600
Wire Wire Line
	2850 2000 2850 1650
Wire Wire Line
	2850 1650 3000 1650
Wire Wire Line
	3700 1650 3700 1700
Connection ~ 2850 2000
Wire Wire Line
	3500 1700 3500 1600
$Comp
L Device:C_Small C4
U 1 1 5E323951
P 2850 2800
F 0 "C4" V 2800 2850 50  0000 L CNN
F 1 "100nF" V 2800 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2850 2800 50  0001 C CNN
F 3 "~" H 2850 2800 50  0001 C CNN
	1    2850 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5E323F2A
P 2150 2800
F 0 "C2" V 2100 2850 50  0000 L CNN
F 1 "47pF" V 2100 2550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2150 2800 50  0001 C CNN
F 3 "~" H 2150 2800 50  0001 C CNN
	1    2150 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5E32412E
P 2300 2800
F 0 "C3" V 2250 2850 50  0000 L CNN
F 1 "47pF" V 2250 2550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2300 2800 50  0001 C CNN
F 3 "~" H 2300 2800 50  0001 C CNN
	1    2300 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5E324790
P 1550 2550
F 0 "C1" V 1500 2600 50  0000 L CNN
F 1 "10nF" V 1500 2300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1550 2550 50  0001 C CNN
F 3 "~" H 1550 2550 50  0001 C CNN
	1    1550 2550
	1    0    0    -1  
$EndComp
Text GLabel 4600 2000 2    50   Input ~ 0
USB_UART_TXD
Text GLabel 4600 2100 2    50   Input ~ 0
USB_UART_RXD
Wire Wire Line
	2850 2600 2850 2700
Connection ~ 2850 2600
Wire Wire Line
	3500 3100 3500 3150
Wire Wire Line
	3500 3150 3100 3150
Wire Wire Line
	2850 3150 2850 2900
Wire Wire Line
	3500 3150 3700 3150
Wire Wire Line
	3700 3150 3700 3100
Connection ~ 3500 3150
Wire Wire Line
	1550 2650 1550 2950
Wire Wire Line
	1550 2450 1550 2150
$Comp
L power:GND #PWR05
U 1 1 5E36BBD9
P 3100 3200
F 0 "#PWR05" H 3100 2950 50  0001 C CNN
F 1 "GND" H 3105 3027 50  0000 C CNN
F 2 "" H 3100 3200 50  0001 C CNN
F 3 "" H 3100 3200 50  0001 C CNN
	1    3100 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3200 3100 3150
Connection ~ 3100 3150
Wire Wire Line
	3100 3150 2850 3150
Wire Wire Line
	950  2950 1300 2950
Wire Wire Line
	1300 3050 1300 2950
Connection ~ 1300 2950
Wire Wire Line
	1300 2950 1550 2950
NoConn ~ 4300 2500
NoConn ~ 4300 2600
NoConn ~ 4300 2700
NoConn ~ 4300 2800
Text GLabel 6050 2150 0    50   Input ~ 0
USB_UART_TXD
Text GLabel 6050 2050 0    50   Input ~ 0
USB_UART_RXD
Text GLabel 6150 2050 2    50   Input ~ 0
MCU_UART_TXD
Text GLabel 6150 2150 2    50   Input ~ 0
MCU_UART_RXD
$Comp
L Device:R R4
U 1 1 5E43CA09
P 4400 1750
F 0 "R4" V 4300 1750 50  0000 C CNN
F 1 "10k" V 4400 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4330 1750 50  0001 C CNN
F 3 "~" H 4400 1750 50  0001 C CNN
	1    4400 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5E446EC8
P 4500 1750
F 0 "R5" V 4600 1750 50  0000 C CNN
F 1 "10k" V 4500 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4430 1750 50  0001 C CNN
F 3 "~" H 4500 1750 50  0001 C CNN
	1    4500 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2000 4400 1900
Wire Wire Line
	4300 2000 4400 2000
Wire Wire Line
	4400 2000 4600 2000
Connection ~ 4400 2000
Wire Wire Line
	4300 2100 4500 2100
Wire Wire Line
	4500 1900 4500 2100
Connection ~ 4500 2100
Wire Wire Line
	4500 2100 4600 2100
$Comp
L power:VCC #PWR06
U 1 1 5E478C71
P 4450 1500
F 0 "#PWR06" H 4450 1350 50  0001 C CNN
F 1 "VCC" H 4467 1673 50  0000 C CNN
F 2 "" H 4450 1500 50  0001 C CNN
F 3 "" H 4450 1500 50  0001 C CNN
	1    4450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1600 4400 1550
Wire Wire Line
	4400 1550 4450 1550
Wire Wire Line
	4450 1550 4450 1500
Wire Wire Line
	4450 1550 4500 1550
Wire Wire Line
	4500 1550 4500 1600
Connection ~ 4450 1550
Wire Wire Line
	6050 2050 6150 2050
Wire Wire Line
	6050 2150 6150 2150
NoConn ~ 4300 2200
NoConn ~ 4300 2300
Text Label 2700 2300 0    50   ~ 0
DM
Text Label 2700 2400 0    50   ~ 0
DP
Wire Wire Line
	1250 2350 1350 2350
Wire Wire Line
	1350 2450 1250 2450
Wire Wire Line
	2150 2400 1950 2400
Connection ~ 2150 2400
Wire Wire Line
	2300 2300 1950 2300
Connection ~ 2300 2300
Text Label 1950 2400 0    50   ~ 0
D+
Text Label 1950 2300 0    50   ~ 0
D-
Wire Wire Line
	2850 3150 2300 3150
Wire Wire Line
	2300 3150 2300 2900
Connection ~ 2850 3150
Wire Wire Line
	2300 3150 2150 3150
Wire Wire Line
	2150 3150 2150 2900
Connection ~ 2300 3150
Wire Wire Line
	2300 2300 2300 2700
Wire Wire Line
	2150 2400 2150 2700
$Comp
L power:VCC #PWR0103
U 1 1 5E60E9D3
P 1300 2050
F 0 "#PWR0103" H 1300 1900 50  0001 C CNN
F 1 "VCC" H 1317 2223 50  0000 C CNN
F 2 "" H 1300 2050 50  0001 C CNN
F 3 "" H 1300 2050 50  0001 C CNN
	1    1300 2050
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP5
U 1 1 5E684CE4
P 8400 4400
F 0 "JP5" H 8600 4250 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 8400 4514 50  0001 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8400 4400 50  0001 C CNN
F 3 "~" H 8400 4400 50  0001 C CNN
	1    8400 4400
	1    0    0    -1  
$EndComp
Text GLabel 8300 4650 0    50   Input ~ 0
I2C_SDA
Text GLabel 8750 4400 2    50   Input ~ 0
HDR_DISP_5
Text GLabel 8750 4300 2    50   Input ~ 0
HDR_IO_5
Wire Wire Line
	8300 4650 8400 4650
Wire Wire Line
	8400 4650 8400 4550
Wire Wire Line
	8200 4400 8150 4400
Wire Wire Line
	8150 4400 8150 4300
Wire Wire Line
	8150 4300 8750 4300
Wire Wire Line
	8600 4400 8750 4400
$Comp
L Jumper:SolderJumper_3_Open JP6
U 1 1 5E6B07B0
P 8400 4900
F 0 "JP6" H 8600 4750 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 8400 5014 50  0001 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8400 4900 50  0001 C CNN
F 3 "~" H 8400 4900 50  0001 C CNN
	1    8400 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5150 8400 5150
Wire Wire Line
	8400 5150 8400 5050
Wire Wire Line
	8200 4900 8150 4900
Wire Wire Line
	8150 4900 8150 4800
Wire Wire Line
	8150 4800 8750 4800
Wire Wire Line
	8600 4900 8750 4900
Text GLabel 8300 5150 0    50   Input ~ 0
I2C_SCL
Text GLabel 8750 4900 2    50   Input ~ 0
HDR_DISP_6
Text GLabel 8750 4800 2    50   Input ~ 0
HDR_IO_6
Text Notes 9350 5350 2    50   ~ 0
Jumpers for I2C to other modules
$Comp
L power:+3V3 #PWR0101
U 1 1 5E7BABCA
P 3000 1600
F 0 "#PWR0101" H 3000 1450 50  0001 C CNN
F 1 "+3V3" H 3015 1773 50  0000 C CNN
F 2 "" H 3000 1600 50  0001 C CNN
F 3 "" H 3000 1600 50  0001 C CNN
	1    3000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1650 3000 1600
Connection ~ 3000 1650
Wire Wire Line
	3000 1650 3700 1650
Wire Wire Line
	1300 2150 1550 2150
Wire Wire Line
	1250 2150 1300 2150
Connection ~ 1300 2150
Wire Wire Line
	1300 2050 1300 2150
$Comp
L power:VCC #PWR?
U 1 1 5E7E3CBD
P 3500 1600
F 0 "#PWR?" H 3500 1450 50  0001 C CNN
F 1 "VCC" H 3517 1773 50  0000 C CNN
F 2 "" H 3500 1600 50  0001 C CNN
F 3 "" H 3500 1600 50  0001 C CNN
	1    3500 1600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
