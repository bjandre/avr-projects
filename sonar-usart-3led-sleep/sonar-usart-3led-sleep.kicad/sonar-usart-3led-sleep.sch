EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:lv-maxsonar-ez1
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "ATTINY2313 LV-MaxSonar-EZ1 MB1010 PWM"
Date "2015-10-30"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY2313-P IC1
U 1 1 562BE4C9
P 3600 2400
F 0 "IC1" H 2650 3400 40  0000 C CNN
F 1 "ATTINY2313-P" H 4400 1500 40  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 3600 2400 35  0000 C CIN
F 3 "" H 3600 2400 60  0000 C CNN
	1    3600 2400
	1    0    0    -1  
$EndComp
$Comp
L LED_RABG D1
U 1 1 562BE562
P 6150 2250
F 0 "D1" H 6225 2600 50  0000 C CNN
F 1 "LED_RABG" H 6175 1900 50  0000 C CNN
F 2 "LEDs:LED-RGB-5MM_Common_Cathode" H 6100 2200 50  0000 C CNN
F 3 "" H 6100 2200 50  0000 C CNN
	1    6150 2250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 562BE597
P 5550 2050
F 0 "R1" V 5630 2050 50  0000 C CNN
F 1 "R" V 5550 2050 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5480 2050 30  0000 C CNN
F 3 "" H 5550 2050 30  0000 C CNN
	1    5550 2050
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 562BE679
P 5550 2250
F 0 "R2" V 5630 2250 50  0000 C CNN
F 1 "R" V 5550 2250 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5480 2250 30  0000 C CNN
F 3 "" H 5550 2250 30  0000 C CNN
	1    5550 2250
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 562BE69A
P 5550 2450
F 0 "R3" V 5630 2450 50  0000 C CNN
F 1 "R" V 5550 2450 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5480 2450 30  0000 C CNN
F 3 "" H 5550 2450 30  0000 C CNN
	1    5550 2450
	0    -1   -1   0   
$EndComp
NoConn ~ 4750 3100
NoConn ~ 4750 3000
NoConn ~ 4750 2900
NoConn ~ 4750 2800
NoConn ~ 4750 2700
NoConn ~ 4750 2600
NoConn ~ 4750 2300
NoConn ~ 4750 2200
NoConn ~ 4750 2100
NoConn ~ 2450 2100
NoConn ~ 2450 1900
NoConn ~ 2450 1600
$Comp
L VCC #PWR01
U 1 1 563399FC
P 3900 1050
F 0 "#PWR01" H 3900 900 50  0001 C CNN
F 1 "VCC" H 3900 1200 50  0000 C CNN
F 2 "" H 3900 1050 60  0000 C CNN
F 3 "" H 3900 1050 60  0000 C CNN
	1    3900 1050
	1    0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 56339AC6
P 3900 1050
F 0 "#FLG02" H 3900 1145 50  0001 C CNN
F 1 "PWR_FLAG" H 3900 1230 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 3900 1050 60  0000 C CNN
F 3 "" H 3900 1050 60  0000 C CNN
	1    3900 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5633A646
P 3600 3400
F 0 "#PWR03" H 3600 3150 50  0001 C CNN
F 1 "GND" H 3600 3250 50  0000 C CNN
F 2 "" H 3600 3400 60  0000 C CNN
F 3 "" H 3600 3400 60  0000 C CNN
	1    3600 3400
	1    0    0    -1  
$EndComp
$Comp
L LV-MaxSonar-EZ1 U1
U 1 1 56462BB2
P 5300 4550
F 0 "U1" H 5300 4550 60  0000 C CNN
F 1 "LV-MaxSonar-EZ1" H 5300 4550 60  0000 C CNN
F 2 "" H 5300 4550 60  0000 C CNN
F 3 "" H 5300 4550 60  0000 C CNN
	1    5300 4550
	1    0    0    -1  
$EndComp
NoConn ~ 5200 4250
NoConn ~ 5200 4350
Connection ~ 6450 2250
Wire Wire Line
	5700 2050 5850 2050
Wire Wire Line
	5850 2250 5700 2250
Wire Wire Line
	5700 2450 5850 2450
Wire Wire Line
	4750 1800 6450 1800
Wire Wire Line
	6450 1800 6450 2250
Wire Wire Line
	4750 1900 5400 1900
Wire Wire Line
	5400 1900 5400 2050
Wire Wire Line
	4750 1700 5000 1700
Wire Wire Line
	5000 1700 5000 2450
Wire Wire Line
	5000 2450 5400 2450
Wire Wire Line
	4750 1600 5200 1600
Wire Wire Line
	5200 1600 5200 2250
Wire Wire Line
	5200 2250 5400 2250
Wire Wire Line
	1850 1300 3900 1300
Wire Wire Line
	3900 1300 3900 1050
Wire Wire Line
	5100 3850 5200 3850
Wire Wire Line
	1850 1300 1850 3950
Wire Wire Line
	1850 3950 5200 3950
Connection ~ 3600 1300
$Comp
L PN2222A Q1
U 1 1 56C25F47
P 3650 4800
F 0 "Q1" H 3850 4875 50  0000 L CNN
F 1 "PN2222A" H 3850 4800 50  0000 L CNN
F 2 "TO-92" H 3850 4725 50  0000 L CIN
F 3 "" H 3650 4800 50  0000 L CNN
	1    3650 4800
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 56C26029
P 3750 4250
F 0 "R6" V 3830 4250 50  0000 C CNN
F 1 "R 10 kOhm" V 3650 4250 50  0000 C CNN
F 2 "" V 3680 4250 30  0000 C CNN
F 3 "" H 3750 4250 30  0000 C CNN
	1    3750 4250
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 56C26271
P 3000 4800
F 0 "R4" V 3080 4800 50  0000 C CNN
F 1 "R 10 kOhm" V 2900 4800 50  0000 C CNN
F 2 "" V 2930 4800 30  0000 C CNN
F 3 "" H 3000 4800 30  0000 C CNN
	1    3000 4800
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 56C262D8
P 3300 5150
F 0 "R5" V 3380 5150 50  0000 C CNN
F 1 "R 10 kOhm" V 3200 5150 50  0000 C CNN
F 2 "" V 3230 5150 30  0000 C CNN
F 3 "" H 3300 5150 30  0000 C CNN
	1    3300 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4800 3450 4800
Wire Wire Line
	3300 5000 3300 4800
Connection ~ 3300 4800
Wire Wire Line
	3750 5400 3750 5000
Wire Wire Line
	3300 5400 3750 5400
Wire Wire Line
	3300 5300 3300 5400
Connection ~ 3500 5400
Wire Wire Line
	3750 4100 3750 3950
Connection ~ 3750 3950
Wire Wire Line
	3750 4400 3750 4600
Wire Wire Line
	5200 4050 2850 4050
Wire Wire Line
	2850 4050 2850 4800
Wire Wire Line
	3750 4500 4900 4500
Wire Wire Line
	4900 4500 4900 2500
Wire Wire Line
	4900 2500 4750 2500
Connection ~ 3750 4500
NoConn ~ 5200 4150
NoConn ~ 4750 2000
$Comp
L GND #PWR04
U 1 1 57773EA1
P 3500 5400
F 0 "#PWR04" H 3500 5150 50  0001 C CNN
F 1 "GND" H 3500 5250 50  0000 C CNN
F 2 "" H 3500 5400 60  0000 C CNN
F 3 "" H 3500 5400 60  0000 C CNN
	1    3500 5400
	1    0    0    -1  
$EndComp
NoConn ~ 5200 4450
$Comp
L GND #PWR05
U 1 1 57774512
P 5100 3850
F 0 "#PWR05" H 5100 3600 50  0001 C CNN
F 1 "GND" H 5100 3700 50  0000 C CNN
F 2 "" H 5100 3850 50  0000 C CNN
F 3 "" H 5100 3850 50  0000 C CNN
	1    5100 3850
	0    1    1    0   
$EndComp
$Comp
L Crystal Y?
U 1 1 57774800
P 2150 2000
F 0 "Y?" H 2150 2150 50  0000 C CNN
F 1 "Crystal" H 2150 1850 50  0000 C CNN
F 2 "" H 2150 2000 50  0000 C CNN
F 3 "" H 2150 2000 50  0000 C CNN
	1    2150 2000
	0    1    1    0   
$EndComp
$EndSCHEMATC
