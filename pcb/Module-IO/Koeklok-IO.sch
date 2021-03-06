EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Koeklok - IO module"
Date "2019-05-03"
Rev "v1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Author: Koen Koning"
$EndDescr
$Comp
L Switch:SW_Push SW1
U 1 1 5CCCA2E9
P 4300 3650
F 0 "SW1" H 4200 3750 50  0000 C CNN
F 1 "SW_Push" H 4300 3844 50  0001 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 4300 3850 50  0001 C CNN
F 3 "~" H 4300 3850 50  0001 C CNN
	1    4300 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3050 4250 3050
Text GLabel 4150 3050 0    50   Input ~ 0
LED_GRN
Wire Wire Line
	4950 3050 5050 3050
Wire Wire Line
	4550 3050 4650 3050
$Comp
L Device:R R5
U 1 1 5C47705C
P 4800 3050
F 0 "R5" V 4700 3050 50  0000 C CNN
F 1 "620" V 4800 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4730 3050 50  0001 C CNN
F 3 "~" H 4800 3050 50  0001 C CNN
	1    4800 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5C4678E0
P 5050 3250
F 0 "#PWR04" H 5050 3000 50  0001 C CNN
F 1 "GND" H 5055 3077 50  0000 C CNN
F 2 "" H 5050 3250 50  0001 C CNN
F 3 "" H 5050 3250 50  0001 C CNN
	1    5050 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5C462533
P 4400 3050
F 0 "D1" H 4400 2950 50  0000 C CNN
F 1 "Grn" H 4550 3000 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4400 3050 50  0001 C CNN
F 3 "~" H 4400 3050 50  0001 C CNN
	1    4400 3050
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5CD91CE0
P 4300 4050
F 0 "SW3" H 4200 4150 50  0000 C CNN
F 1 "SW_Push" H 4300 4244 50  0001 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 4300 4250 50  0001 C CNN
F 3 "~" H 4300 4250 50  0001 C CNN
	1    4300 4050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5CD95D6C
P 4300 3850
F 0 "SW2" H 4200 3950 50  0000 C CNN
F 1 "SW_Push" H 4300 4044 50  0001 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 4300 4050 50  0001 C CNN
F 3 "~" H 4300 4050 50  0001 C CNN
	1    4300 3850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5CD95D72
P 4300 4250
F 0 "SW4" H 4200 4350 50  0000 C CNN
F 1 "SW_Push" H 4300 4444 50  0001 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 4300 4450 50  0001 C CNN
F 3 "~" H 4300 4450 50  0001 C CNN
	1    4300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4350 4600 4250
Wire Wire Line
	4600 3650 4500 3650
Wire Wire Line
	4500 3850 4600 3850
Connection ~ 4600 3850
Wire Wire Line
	4600 3850 4600 3650
Wire Wire Line
	4500 4050 4600 4050
Connection ~ 4600 4050
Wire Wire Line
	4600 4050 4600 3850
Wire Wire Line
	4500 4250 4600 4250
Connection ~ 4600 4250
Wire Wire Line
	4600 4250 4600 4050
Text GLabel 4050 3650 0    50   Input ~ 0
BTN1
Text GLabel 4050 3850 0    50   Input ~ 0
BTN2
Text GLabel 4050 4050 0    50   Input ~ 0
BTN3
Text GLabel 4050 4250 0    50   Input ~ 0
BTN4
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 5CD23E85
P 1350 3050
F 0 "J1" H 1450 3000 50  0000 C CNN
F 1 "CONN_IO_1" H 1378 2935 50  0001 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x04_P1.27mm_Vertical_SMD_Pin1Right" H 1350 3050 50  0001 C CNN
F 3 "~" H 1350 3050 50  0001 C CNN
	1    1350 3050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5CD23E8B
P 1350 3450
F 0 "J2" H 1450 3400 50  0000 C CNN
F 1 "CONN_IO_2" H 1378 3335 50  0001 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x04_P1.27mm_Vertical_SMD_Pin1Right" H 1350 3450 50  0001 C CNN
F 3 "~" H 1350 3450 50  0001 C CNN
	1    1350 3450
	-1   0    0    1   
$EndComp
Text GLabel 1600 3050 2    50   Input ~ 0
HDR_IO_1
Text GLabel 1600 3150 2    50   Input ~ 0
HDR_IO_2
Text GLabel 1600 3250 2    50   Input ~ 0
HDR_IO_3
Text GLabel 1600 3350 2    50   Input ~ 0
HDR_IO_4
Text GLabel 1600 3450 2    50   Input ~ 0
HDR_IO_5
Text GLabel 1600 3550 2    50   Input ~ 0
HDR_IO_6
Wire Wire Line
	1550 3050 1600 3050
Wire Wire Line
	1550 3150 1600 3150
Wire Wire Line
	1550 3250 1600 3250
Wire Wire Line
	1550 3350 1600 3350
Wire Wire Line
	1550 3450 1600 3450
Wire Wire Line
	1550 3550 1600 3550
$Comp
L power:GND #PWR02
U 1 1 5D0BBF65
P 1800 2850
F 0 "#PWR02" H 1800 2600 50  0001 C CNN
F 1 "GND" H 1950 2800 50  0000 C CNN
F 2 "" H 1800 2850 50  0001 C CNN
F 3 "" H 1800 2850 50  0001 C CNN
	1    1800 2850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5D0BBF6B
P 1800 2750
F 0 "#PWR01" H 1800 2600 50  0001 C CNN
F 1 "VCC" H 1950 2800 50  0000 C CNN
F 2 "" H 1800 2750 50  0001 C CNN
F 3 "" H 1800 2750 50  0001 C CNN
	1    1800 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2950 1650 2950
Wire Wire Line
	1650 2950 1650 2850
Wire Wire Line
	1650 2850 1800 2850
Wire Wire Line
	1550 2750 1800 2750
Wire Wire Line
	1550 2750 1550 2850
Text Notes 2250 3700 2    50   ~ 0
Header connection to main module
Text GLabel 2800 3050 0    50   Input ~ 0
HDR_IO_1
Text GLabel 2800 3150 0    50   Input ~ 0
HDR_IO_2
Text GLabel 2800 3250 0    50   Input ~ 0
HDR_IO_3
Text GLabel 2800 3350 0    50   Input ~ 0
HDR_IO_4
Text GLabel 2800 3450 0    50   Input ~ 0
HDR_IO_5
Text GLabel 2800 3550 0    50   Input ~ 0
HDR_IO_6
Text GLabel 2950 3450 2    50   Input ~ 0
LED_GRN
Text GLabel 2950 3050 2    50   Input ~ 0
BTN1
Text GLabel 2950 3150 2    50   Input ~ 0
BTN2
Text GLabel 2950 3250 2    50   Input ~ 0
BTN3
Text GLabel 2950 3350 2    50   Input ~ 0
BTN4
Wire Wire Line
	2800 3450 2950 3450
Wire Wire Line
	2800 3050 2950 3050
Wire Wire Line
	2800 3150 2950 3150
Wire Wire Line
	2800 3250 2950 3250
Wire Wire Line
	2800 3350 2950 3350
Wire Wire Line
	4050 3850 4100 3850
Wire Wire Line
	4050 4050 4100 4050
Wire Wire Line
	4050 4250 4100 4250
Wire Wire Line
	4050 3650 4100 3650
Wire Wire Line
	5050 3050 5050 3250
Text Notes 3700 4650 0    50   ~ 0
(use internal pull-up of mcu)
$Comp
L power:GND #PWR05
U 1 1 5CE29C4E
P 4600 4350
F 0 "#PWR05" H 4600 4100 50  0001 C CNN
F 1 "GND" H 4605 4177 50  0000 C CNN
F 2 "" H 4600 4350 50  0001 C CNN
F 3 "" H 4600 4350 50  0001 C CNN
	1    4600 4350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
