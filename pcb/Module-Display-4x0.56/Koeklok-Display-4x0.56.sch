EESchema Schematic File Version 4
EELAYER 30 0
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
L Display_Character:CA56-12EWA U1
U 1 1 5C447639
P 7150 2000
F 0 "U1" H 7150 2667 50  0000 C CNN
F 1 "CA56-12EWA" H 7150 2576 50  0000 C CNN
F 2 "Display_7Segment:CA56-12EWA" H 7150 1400 50  0001 C CNN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/CA56-12EWA.pdf" H 6720 2030 50  0001 C CNN
	1    7150 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 5CCF950A
P 1100 2450
F 0 "J1" H 1200 2400 50  0000 C CNN
F 1 "CONN_DISP_1" H 992 2116 50  0001 C CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x04_P1.27mm_Vertical_SMD_Pin1Right" H 1100 2450 50  0001 C CNN
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
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x04_P1.27mm_Vertical_SMD_Pin1Right" H 1100 2850 50  0001 C CNN
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
Text GLabel 3050 2600 0    50   Input ~ 0
HDR_DISP_1
Text GLabel 3050 2700 0    50   Input ~ 0
HDR_DISP_2
Wire Wire Line
	3050 2600 3150 2600
Wire Wire Line
	3050 2700 3150 2700
Text GLabel 8350 2100 2    50   Input ~ 0
GRID1
Text GLabel 8350 2200 2    50   Input ~ 0
GRID2
Text GLabel 8350 2300 2    50   Input ~ 0
GRID3
Text GLabel 8350 2400 2    50   Input ~ 0
GRID4
Wire Wire Line
	6050 2400 5950 2400
Wire Wire Line
	6050 2300 5950 2300
Wire Wire Line
	6050 2200 5950 2200
Wire Wire Line
	6050 2100 5950 2100
Wire Wire Line
	6050 2000 5950 2000
Wire Wire Line
	6050 1900 5950 1900
Wire Wire Line
	6050 1800 5950 1800
Wire Wire Line
	6050 1700 5950 1700
Wire Wire Line
	8250 2100 8350 2100
Wire Wire Line
	8250 2200 8350 2200
Wire Wire Line
	8250 2300 8350 2300
Wire Wire Line
	8250 2400 8350 2400
Text GLabel 5950 1700 0    50   Input ~ 0
SEG1
Text GLabel 5950 1800 0    50   Input ~ 0
SEG2
Text GLabel 5950 1900 0    50   Input ~ 0
SEG3
Text GLabel 5950 2000 0    50   Input ~ 0
SEG4
Text GLabel 5950 2100 0    50   Input ~ 0
SEG5
Text GLabel 5950 2200 0    50   Input ~ 0
SEG6
Text GLabel 5950 2300 0    50   Input ~ 0
SEG7
Text GLabel 5950 2400 0    50   Input ~ 0
SEG8
$Sheet
S 3150 2350 1100 650 
U 5CDB2857
F0 "Display Driver TM1637" 50
F1 "../common/Display-Driver-TM1637.sch" 50
F2 "DIO" I L 3150 2600 50 
F3 "CLK" I L 3150 2700 50 
$EndSheet
$EndSCHEMATC
