EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Koeklok - Display module - 6x0.56"
Date "2019-05-03"
Rev "v1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Author: Koen Koning"
$EndDescr
$Comp
L Display_Character:HDSP-A151 U2
U 1 1 5CCC6DA4
P 5250 3200
F 0 "U2" H 5250 3867 50  0000 C CNN
F 1 "HDSP-A151" H 5250 3776 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 5250 2650 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 4750 3750 50  0001 C CNN
	1    5250 3200
	1    0    0    -1
$EndComp
Wire Wire Line
	4750 2900 4950 2900
Wire Wire Line
	4750 3000 4950 3000
Wire Wire Line
	4750 3100 4950 3100
Wire Wire Line
	4750 3200 4950 3200
Wire Wire Line
	4950 3300 4750 3300
Wire Wire Line
	4750 3400 4950 3400
Wire Wire Line
	4950 3500 4750 3500
Wire Wire Line
	4750 3600 4950 3600
Text Label 4750 2900 0    50   ~ 0
SEG1
Text Label 4750 3000 0    50   ~ 0
SEG2
Text Label 4750 3100 0    50   ~ 0
SEG3
Text Label 4750 3200 0    50   ~ 0
SEG4
Text Label 4750 3300 0    50   ~ 0
SEG5
Text Label 4750 3400 0    50   ~ 0
SEG6
Text Label 4750 3500 0    50   ~ 0
SEG7
Text Label 4750 3600 0    50   ~ 0
SEG8
Entry Wire Line
	4650 3000 4750 2900
Entry Wire Line
	4650 3100 4750 3000
Entry Wire Line
	4650 3200 4750 3100
Entry Wire Line
	4650 3300 4750 3200
Entry Wire Line
	4650 3400 4750 3300
Entry Wire Line
	4650 3500 4750 3400
Entry Wire Line
	4650 3600 4750 3500
Entry Wire Line
	4650 3700 4750 3600
$Comp
L Display_Character:HDSP-A151 U4
U 1 1 5CEC5A6F
P 6500 3200
F 0 "U4" H 6500 3867 50  0000 C CNN
F 1 "HDSP-A151" H 6500 3776 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 6500 2650 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 6000 3750 50  0001 C CNN
	1    6500 3200
	1    0    0    -1
$EndComp
Wire Wire Line
	6000 2900 6200 2900
Wire Wire Line
	6000 3000 6200 3000
Wire Wire Line
	6000 3100 6200 3100
Wire Wire Line
	6000 3200 6200 3200
Wire Wire Line
	6200 3300 6000 3300
Wire Wire Line
	6000 3400 6200 3400
Wire Wire Line
	6200 3500 6000 3500
Wire Wire Line
	6000 3600 6200 3600
Text Label 6000 2900 0    50   ~ 0
SEG1
Text Label 6000 3000 0    50   ~ 0
SEG2
Text Label 6000 3100 0    50   ~ 0
SEG3
Text Label 6000 3200 0    50   ~ 0
SEG4
Text Label 6000 3300 0    50   ~ 0
SEG5
Text Label 6000 3400 0    50   ~ 0
SEG6
Text Label 6000 3500 0    50   ~ 0
SEG7
Text Label 6000 3600 0    50   ~ 0
SEG8
Entry Wire Line
	5900 3000 6000 2900
Entry Wire Line
	5900 3100 6000 3000
Entry Wire Line
	5900 3200 6000 3100
Entry Wire Line
	5900 3300 6000 3200
Entry Wire Line
	5900 3400 6000 3300
Entry Wire Line
	5900 3500 6000 3400
Entry Wire Line
	5900 3600 6000 3500
Entry Wire Line
	5900 3700 6000 3600
Entry Wire Line
	5800 3500 5900 3600
Wire Wire Line
	5800 3500 5550 3500
NoConn ~ 5550 3600
NoConn ~ 6800 3600
Text Label 5800 3500 2    50   ~ 0
GRID1
$Comp
L Display_Character:HDSP-A151 U6
U 1 1 5CF0A1BD
P 7750 3200
F 0 "U6" H 7750 3867 50  0000 C CNN
F 1 "HDSP-A151" H 7750 3776 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 7750 2650 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 7250 3750 50  0001 C CNN
	1    7750 3200
	1    0    0    -1
$EndComp
Wire Wire Line
	7250 2900 7450 2900
Wire Wire Line
	7250 3000 7450 3000
Wire Wire Line
	7250 3100 7450 3100
Wire Wire Line
	7250 3200 7450 3200
Wire Wire Line
	7450 3300 7250 3300
Wire Wire Line
	7250 3400 7450 3400
Wire Wire Line
	7450 3500 7250 3500
Wire Wire Line
	7250 3600 7450 3600
Text Label 7250 2900 0    50   ~ 0
SEG1
Text Label 7250 3000 0    50   ~ 0
SEG2
Text Label 7250 3100 0    50   ~ 0
SEG3
Text Label 7250 3200 0    50   ~ 0
SEG4
Text Label 7250 3300 0    50   ~ 0
SEG5
Text Label 7250 3400 0    50   ~ 0
SEG6
Text Label 7250 3500 0    50   ~ 0
SEG7
Text Label 7250 3600 0    50   ~ 0
SEG8
Entry Wire Line
	7150 3000 7250 2900
Entry Wire Line
	7150 3100 7250 3000
Entry Wire Line
	7150 3200 7250 3100
Entry Wire Line
	7150 3300 7250 3200
Entry Wire Line
	7150 3400 7250 3300
Entry Wire Line
	7150 3500 7250 3400
Entry Wire Line
	7150 3600 7250 3500
Entry Wire Line
	7150 3700 7250 3600
Entry Wire Line
	7050 3500 7150 3600
Wire Wire Line
	7050 3500 6800 3500
NoConn ~ 8050 3600
Text Label 7050 3500 2    50   ~ 0
GRID2
Entry Wire Line
	8300 3500 8400 3600
Wire Wire Line
	8300 3500 8050 3500
Text Label 8300 3500 2    50   ~ 0
GRID3
$Comp
L Display_Character:HDSP-A151 U1
U 1 1 5CF361E2
P 5250 1950
F 0 "U1" H 5250 2617 50  0000 C CNN
F 1 "HDSP-A151" H 5250 2526 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 5250 1400 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 4750 2500 50  0001 C CNN
	1    5250 1950
	1    0    0    -1
$EndComp
Wire Wire Line
	4750 1650 4950 1650
Wire Wire Line
	4750 1750 4950 1750
Wire Wire Line
	4750 1850 4950 1850
Wire Wire Line
	4750 1950 4950 1950
Wire Wire Line
	4950 2050 4750 2050
Wire Wire Line
	4750 2150 4950 2150
Wire Wire Line
	4950 2250 4750 2250
Wire Wire Line
	4750 2350 4950 2350
Text Label 4750 1650 0    50   ~ 0
SEG1
Text Label 4750 1750 0    50   ~ 0
SEG2
Text Label 4750 1850 0    50   ~ 0
SEG3
Text Label 4750 1950 0    50   ~ 0
SEG4
Text Label 4750 2050 0    50   ~ 0
SEG5
Text Label 4750 2150 0    50   ~ 0
SEG6
Text Label 4750 2250 0    50   ~ 0
SEG7
Text Label 4750 2350 0    50   ~ 0
SEG8
Entry Wire Line
	4650 1750 4750 1650
Entry Wire Line
	4650 1850 4750 1750
Entry Wire Line
	4650 1950 4750 1850
Entry Wire Line
	4650 2050 4750 1950
Entry Wire Line
	4650 2150 4750 2050
Entry Wire Line
	4650 2250 4750 2150
Entry Wire Line
	4650 2350 4750 2250
Entry Wire Line
	4650 2450 4750 2350
$Comp
L Display_Character:HDSP-A151 U3
U 1 1 5CF36200
P 6500 1950
F 0 "U3" H 6500 2617 50  0000 C CNN
F 1 "HDSP-A151" H 6500 2526 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 6500 1400 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 6000 2500 50  0001 C CNN
	1    6500 1950
	1    0    0    -1
$EndComp
Wire Wire Line
	6000 1650 6200 1650
Wire Wire Line
	6000 1750 6200 1750
Wire Wire Line
	6000 1850 6200 1850
Wire Wire Line
	6000 1950 6200 1950
Wire Wire Line
	6200 2050 6000 2050
Wire Wire Line
	6000 2150 6200 2150
Wire Wire Line
	6200 2250 6000 2250
Wire Wire Line
	6000 2350 6200 2350
Text Label 6000 1650 0    50   ~ 0
SEG1
Text Label 6000 1750 0    50   ~ 0
SEG2
Text Label 6000 1850 0    50   ~ 0
SEG3
Text Label 6000 1950 0    50   ~ 0
SEG4
Text Label 6000 2050 0    50   ~ 0
SEG5
Text Label 6000 2150 0    50   ~ 0
SEG6
Text Label 6000 2250 0    50   ~ 0
SEG7
Text Label 6000 2350 0    50   ~ 0
SEG8
Entry Wire Line
	5900 1750 6000 1650
Entry Wire Line
	5900 1850 6000 1750
Entry Wire Line
	5900 1950 6000 1850
Entry Wire Line
	5900 2050 6000 1950
Entry Wire Line
	5900 2150 6000 2050
Entry Wire Line
	5900 2250 6000 2150
Entry Wire Line
	5900 2350 6000 2250
Entry Wire Line
	5900 2450 6000 2350
Entry Wire Line
	5800 2250 5900 2350
Wire Wire Line
	5800 2250 5550 2250
NoConn ~ 5550 2350
NoConn ~ 6800 2350
Text Label 5800 2250 2    50   ~ 0
GRID4
$Comp
L Display_Character:HDSP-A151 U5
U 1 1 5CF36223
P 7750 1950
F 0 "U5" H 7750 2617 50  0000 C CNN
F 1 "HDSP-A151" H 7750 2526 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 7750 1400 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 7250 2500 50  0001 C CNN
	1    7750 1950
	1    0    0    -1
$EndComp
Wire Wire Line
	7250 1650 7450 1650
Wire Wire Line
	7250 1750 7450 1750
Wire Wire Line
	7250 1850 7450 1850
Wire Wire Line
	7250 1950 7450 1950
Wire Wire Line
	7450 2050 7250 2050
Wire Wire Line
	7250 2150 7450 2150
Wire Wire Line
	7450 2250 7250 2250
Wire Wire Line
	7250 2350 7450 2350
Text Label 7250 1650 0    50   ~ 0
SEG1
Text Label 7250 1750 0    50   ~ 0
SEG2
Text Label 7250 1850 0    50   ~ 0
SEG3
Text Label 7250 1950 0    50   ~ 0
SEG4
Text Label 7250 2050 0    50   ~ 0
SEG5
Text Label 7250 2150 0    50   ~ 0
SEG6
Text Label 7250 2250 0    50   ~ 0
SEG7
Text Label 7250 2350 0    50   ~ 0
SEG8
Entry Wire Line
	7150 1750 7250 1650
Entry Wire Line
	7150 1850 7250 1750
Entry Wire Line
	7150 1950 7250 1850
Entry Wire Line
	7150 2050 7250 1950
Entry Wire Line
	7150 2150 7250 2050
Entry Wire Line
	7150 2250 7250 2150
Entry Wire Line
	7150 2350 7250 2250
Entry Wire Line
	7150 2450 7250 2350
Entry Wire Line
	7050 2250 7150 2350
Wire Wire Line
	7050 2250 6800 2250
NoConn ~ 8050 2350
Text Label 7050 2250 2    50   ~ 0
GRID5
Entry Wire Line
	8300 2250 8400 2350
Wire Wire Line
	8300 2250 8050 2250
Text Label 8300 2250 2    50   ~ 0
GRID6
Wire Bus Line
	4650 3800 5900 3800
Wire Bus Line
	5900 3800 7150 3800
Connection ~ 5900 3800
Wire Bus Line
	7150 3800 8400 3800
Connection ~ 7150 3800
Wire Bus Line
	4400 3800 4650 3800
Connection ~ 4650 3800
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 5CCF950A
P 1600 3750
F 0 "J1" H 1700 3700 50  0000 C CNN
F 1 "CONN_DISP_1" H 1492 3416 50  0001 C CNN
F 2 "" H 1600 3750 50  0001 C CNN
F 3 "~" H 1600 3750 50  0001 C CNN
	1    1600 3750
	-1   0    0    1
$EndComp
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5CD0F95E
P 1600 4150
F 0 "J2" H 1700 4100 50  0000 C CNN
F 1 "CONN_DISP_2" H 1492 3816 50  0001 C CNN
F 2 "" H 1600 4150 50  0001 C CNN
F 3 "~" H 1600 4150 50  0001 C CNN
	1    1600 4150
	-1   0    0    1
$EndComp
Text GLabel 1850 3750 2    50   Input ~ 0
HDR_DISP_1
Text GLabel 1850 3850 2    50   Input ~ 0
HDR_DISP_2
Text GLabel 1850 3950 2    50   Input ~ 0
HDR_DISP_3
Text GLabel 1850 4050 2    50   Input ~ 0
HDR_DISP_4
Text GLabel 1850 4150 2    50   Input ~ 0
HDR_DISP_5
Text GLabel 1850 4250 2    50   Input ~ 0
HDR_DISP_6
Wire Wire Line
	1800 3750 1850 3750
Wire Wire Line
	1800 3850 1850 3850
Wire Wire Line
	1800 3950 1850 3950
Wire Wire Line
	1800 4050 1850 4050
Wire Wire Line
	1800 4150 1850 4150
Wire Wire Line
	1800 4250 1850 4250
$Comp
L power:GND #PWR02
U 1 1 5D04173D
P 2050 3550
F 0 "#PWR02" H 2050 3300 50  0001 C CNN
F 1 "GND" H 2200 3500 50  0000 C CNN
F 2 "" H 2050 3550 50  0001 C CNN
F 3 "" H 2050 3550 50  0001 C CNN
	1    2050 3550
	1    0    0    -1
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5D0599B5
P 2050 3450
F 0 "#PWR01" H 2050 3300 50  0001 C CNN
F 1 "VCC" H 2200 3500 50  0000 C CNN
F 2 "" H 2050 3450 50  0001 C CNN
F 3 "" H 2050 3450 50  0001 C CNN
	1    2050 3450
	1    0    0    -1
$EndComp
Wire Wire Line
	1800 3650 1900 3650
Wire Wire Line
	1900 3650 1900 3550
Wire Wire Line
	1900 3550 2050 3550
Wire Wire Line
	1800 3550 1800 3450
Wire Wire Line
	1800 3450 2050 3450
Text Notes 2650 4400 2    50   ~ 0
Header connection from main module
$Sheet
S 3300 3500 1100 650
U 5CDB2857
F0 "Display Driver TM1637" 50
F1 "../common/Display-Driver-TM1637.sch" 50
F2 "DIO" I L 3300 3750 50
F3 "CLK" I L 3300 3850 50
F4 "BUS" O R 4400 3800 50
$EndSheet
Text GLabel 3200 3750 0    50   Input ~ 0
HDR_DISP_1
Text GLabel 3200 3850 0    50   Input ~ 0
HDR_DISP_2
Wire Wire Line
	3200 3750 3300 3750
Wire Wire Line
	3200 3850 3300 3850
Wire Bus Line
	8400 2350 8400 3800
Wire Bus Line
	7150 1750 7150 3800
Wire Bus Line
	5900 1750 5900 3800
Wire Bus Line
	4650 1750 4650 3800
$EndSCHEMATC
