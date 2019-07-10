EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Koeklok - Display module - 4x0.56"
Date "2019-05-03"
Rev "v1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Author: Koen Koning"
$EndDescr
$Comp
L Display_Character:CA56-12EWA U7
U 1 1 5C447639
P 5900 2050
F 0 "U7" H 5900 2717 50  0000 C CNN
F 1 "CA56-12EWA" H 5900 2626 50  0000 C CNN
F 2 "Display_7Segment:CA56-12EWA" H 5900 1450 50  0001 C CNN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/CA56-12EWA.pdf" H 5470 2080 50  0001 C CNN
	1    5900 2050
	1    0    0    -1
$EndComp
Wire Wire Line
	4500 1750 4800 1750
Wire Wire Line
	4500 1850 4800 1850
Wire Wire Line
	4500 1950 4800 1950
Wire Wire Line
	4500 2050 4800 2050
Wire Wire Line
	4800 2150 4500 2150
Wire Wire Line
	4500 2250 4800 2250
Wire Wire Line
	4800 2350 4500 2350
Wire Wire Line
	4500 2450 4800 2450
Text Label 4550 1750 0    50   ~ 0
SEG1
Text Label 4550 1850 0    50   ~ 0
SEG2
Text Label 4550 1950 0    50   ~ 0
SEG3
Text Label 4550 2050 0    50   ~ 0
SEG4
Text Label 4550 2150 0    50   ~ 0
SEG5
Text Label 4550 2250 0    50   ~ 0
SEG6
Text Label 4550 2350 0    50   ~ 0
SEG7
Text Label 4550 2450 0    50   ~ 0
SEG8
Entry Wire Line
	4400 1850 4500 1750
Entry Wire Line
	4400 1950 4500 1850
Entry Wire Line
	4400 2050 4500 1950
Entry Wire Line
	4400 2150 4500 2050
Entry Wire Line
	4400 2250 4500 2150
Entry Wire Line
	4400 2350 4500 2250
Entry Wire Line
	4400 2450 4500 2350
Entry Wire Line
	4400 2550 4500 2450
Entry Wire Line
	7350 2550 7250 2450
Entry Wire Line
	7350 2450 7250 2350
Entry Wire Line
	7350 2350 7250 2250
Entry Wire Line
	7350 2250 7250 2150
Wire Wire Line
	7000 2150 7250 2150
Wire Wire Line
	7000 2250 7250 2250
Wire Wire Line
	7000 2350 7250 2350
Wire Wire Line
	7000 2450 7250 2450
Text Label 7250 2150 2    50   ~ 0
GRID1
Text Label 7250 2250 2    50   ~ 0
GRID2
Text Label 7250 2350 2    50   ~ 0
GRID3
Text Label 7250 2450 2    50   ~ 0
GRID4
Wire Bus Line
	7350 2650 4400 2650
Wire Bus Line
	4250 2650 4400 2650
Connection ~ 4400 2650
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 5CCF950A
P 1100 2450
F 0 "J1" H 1200 2400 50  0000 C CNN
F 1 "CONN_DISP_1" H 992 2116 50  0001 C CNN
F 2 "" H 1100 2450 50  0001 C CNN
F 3 "~" H 1100 2450 50  0001 C CNN
	1    1100 2450
	-1   0    0    1
$EndComp
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5CD0F95E
P 1100 2850
F 0 "J2" H 1200 2800 50  0000 C CNN
F 1 "CONN_DISP_2" H 992 2516 50  0001 C CNN
F 2 "" H 1100 2850 50  0001 C CNN
F 3 "~" H 1100 2850 50  0001 C CNN
	1    1100 2850
	-1   0    0    1
$EndComp
Text GLabel 1350 2450 2    50   Input ~ 0
HDR_DISP_1
Text GLabel 1350 2550 2    50   Input ~ 0
HDR_DISP_2
Text GLabel 1350 2650 2    50   Input ~ 0
HDR_DISP_3
Text GLabel 1350 2750 2    50   Input ~ 0
HDR_DISP_4
Text GLabel 1350 2850 2    50   Input ~ 0
HDR_DISP_5
Text GLabel 1350 2950 2    50   Input ~ 0
HDR_DISP_6
Wire Wire Line
	1300 2450 1350 2450
Wire Wire Line
	1300 2550 1350 2550
Wire Wire Line
	1300 2650 1350 2650
Wire Wire Line
	1300 2750 1350 2750
Wire Wire Line
	1300 2850 1350 2850
Wire Wire Line
	1300 2950 1350 2950
$Comp
L power:GND #PWR02
U 1 1 5D04173D
P 1550 2250
F 0 "#PWR02" H 1550 2000 50  0001 C CNN
F 1 "GND" H 1700 2200 50  0000 C CNN
F 2 "" H 1550 2250 50  0001 C CNN
F 3 "" H 1550 2250 50  0001 C CNN
	1    1550 2250
	1    0    0    -1
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5D0599B5
P 1550 2150
F 0 "#PWR01" H 1550 2000 50  0001 C CNN
F 1 "VCC" H 1700 2200 50  0000 C CNN
F 2 "" H 1550 2150 50  0001 C CNN
F 3 "" H 1550 2150 50  0001 C CNN
	1    1550 2150
	1    0    0    -1
$EndComp
Wire Wire Line
	1300 2350 1400 2350
Wire Wire Line
	1400 2350 1400 2250
Wire Wire Line
	1400 2250 1550 2250
Wire Wire Line
	1300 2250 1300 2150
Wire Wire Line
	1300 2150 1550 2150
Text Notes 2150 3100 2    50   ~ 0
Header connection from main module
$Sheet
S 3150 2350 1100 650
U 5CDB2857
F0 "Display Driver TM1637" 50
F1 "../common/Display-Driver-TM1637.sch" 50
F2 "DIO" I L 3150 2600 50
F3 "CLK" I L 3150 2700 50
F4 "BUS" O R 4250 2650 50
$EndSheet
Text GLabel 3050 2600 0    50   Input ~ 0
HDR_DISP_1
Text GLabel 3050 2700 0    50   Input ~ 0
HDR_DISP_2
Wire Wire Line
	3050 2600 3150 2600
Wire Wire Line
	3050 2700 3150 2700
Wire Bus Line
	7350 2250 7350 2650
Wire Bus Line
	4400 1850 4400 2650
$EndSCHEMATC
