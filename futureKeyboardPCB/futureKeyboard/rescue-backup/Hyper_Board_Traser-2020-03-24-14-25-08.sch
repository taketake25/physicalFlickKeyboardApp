EESchema Schematic File Version 2
LIBS:Hyper_Board_Traser-rescue
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
LIBS:akizukit
LIBS:ESP8266
LIBS:Logibot
LIBS:nucleo
LIBS:Hyper_Board_Traser-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LPC1114FDH28 U9
U 1 1 5965EAB9
P 7650 2250
F 0 "U9" H 7650 1450 60  0000 C CNN
F 1 "LPC1114FDH28" H 7650 3050 60  0000 C CNN
F 2 "akizukit:LPC1114FDH28" H 7600 1350 60  0000 C CNN
F 3 "" H 7250 2500 60  0000 C CNN
	1    7650 2250
	1    0    0    -1  
$EndComp
$Comp
L LED-RESCUE-Hyper_Board_Traser D8
U 1 1 5989753D
P 6150 2900
F 0 "D8" H 6150 3000 50  0000 C CNN
F 1 "LED" H 6150 2800 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 6150 2900 50  0001 C CNN
F 3 "" H 6150 2900 50  0000 C CNN
	1    6150 2900
	-1   0    0    1   
$EndComp
$Comp
L TLP291 U3
U 1 1 598AFE55
P 3350 2600
F 0 "U3" H 3150 2800 50  0000 L CNN
F 1 "TLP291" H 3350 2800 50  0000 L CNN
F 2 "akizukit:RPR-220" H 3150 2400 50  0001 L CIN
F 3 "" H 3350 2600 50  0000 L CNN
	1    3350 2600
	1    0    0    -1  
$EndComp
$Comp
L TLP291 U1
U 1 1 598B0029
P 3350 1400
F 0 "U1" H 3150 1600 50  0000 L CNN
F 1 "TLP291" H 3350 1600 50  0000 L CNN
F 2 "akizukit:RPR-220" H 3150 1200 50  0001 L CIN
F 3 "" H 3350 1400 50  0000 L CNN
	1    3350 1400
	1    0    0    -1  
$EndComp
$Comp
L TLP291 U4
U 1 1 598B0049
P 3350 3200
F 0 "U4" H 3150 3400 50  0000 L CNN
F 1 "TLP291" H 3350 3400 50  0000 L CNN
F 2 "akizukit:RPR-220" H 3150 3000 50  0001 L CIN
F 3 "" H 3350 3200 50  0000 L CNN
	1    3350 3200
	1    0    0    -1  
$EndComp
$Comp
L TLP291 U5
U 1 1 598B00FD
P 3350 3800
F 0 "U5" H 3150 4000 50  0000 L CNN
F 1 "TLP291" H 3350 4000 50  0000 L CNN
F 2 "akizukit:RPR-220" H 3150 3600 50  0001 L CIN
F 3 "" H 3350 3800 50  0000 L CNN
	1    3350 3800
	1    0    0    -1  
$EndComp
$Comp
L TLP291 U6
U 1 1 598B0197
P 3350 4400
F 0 "U6" H 3150 4600 50  0000 L CNN
F 1 "TLP291" H 3350 4600 50  0000 L CNN
F 2 "akizukit:RPR-220" H 3150 4200 50  0001 L CIN
F 3 "" H 3350 4400 50  0000 L CNN
	1    3350 4400
	1    0    0    -1  
$EndComp
$Comp
L TLP291 U2
U 1 1 598B01D4
P 3350 2000
F 0 "U2" H 3150 2200 50  0000 L CNN
F 1 "TLP291" H 3350 2200 50  0000 L CNN
F 2 "akizukit:RPR-220" H 3150 1800 50  0001 L CIN
F 3 "" H 3350 2000 50  0000 L CNN
	1    3350 2000
	1    0    0    -1  
$EndComp
$Comp
L TLP291 U7
U 1 1 598B03AA
P 3350 5000
F 0 "U7" H 3150 5200 50  0000 L CNN
F 1 "TLP291" H 3350 5200 50  0000 L CNN
F 2 "akizukit:RPR-220" H 3150 4800 50  0001 L CIN
F 3 "" H 3350 5000 50  0000 L CNN
	1    3350 5000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR01
U 1 1 598B182D
P 9150 2300
F 0 "#PWR01" H 9150 2150 50  0001 C CNN
F 1 "+3V3" H 9150 2440 50  0000 C CNN
F 2 "" H 9150 2300 50  0000 C CNN
F 3 "" H 9150 2300 50  0000 C CNN
	1    9150 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 598B1853
P 8950 2200
F 0 "#PWR02" H 8950 1950 50  0001 C CNN
F 1 "GND" H 8950 2050 50  0000 C CNN
F 2 "" H 8950 2200 50  0000 C CNN
F 3 "" H 8950 2200 50  0000 C CNN
	1    8950 2200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR03
U 1 1 598B566C
P 6100 2300
F 0 "#PWR03" H 6100 2050 50  0001 C CNN
F 1 "GND" H 6100 2150 50  0000 C CNN
F 2 "" H 6100 2300 50  0000 C CNN
F 3 "" H 6100 2300 50  0000 C CNN
	1    6100 2300
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR04
U 1 1 598B5692
P 6100 2200
F 0 "#PWR04" H 6100 2050 50  0001 C CNN
F 1 "+3V3" H 6100 2340 50  0000 C CNN
F 2 "" H 6100 2200 50  0000 C CNN
F 3 "" H 6100 2200 50  0000 C CNN
	1    6100 2200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR05
U 1 1 598B6577
P 2950 1000
F 0 "#PWR05" H 2950 850 50  0001 C CNN
F 1 "+3V3" H 2950 1140 50  0000 C CNN
F 2 "" H 2950 1000 50  0000 C CNN
F 3 "" H 2950 1000 50  0000 C CNN
	1    2950 1000
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 598B69FA
P 2700 1500
F 0 "R1" V 2780 1500 50  0000 C CNN
F 1 "330" V 2700 1500 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 2630 1500 50  0001 C CNN
F 3 "" H 2700 1500 50  0000 C CNN
	1    2700 1500
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 598B6F57
P 2700 2100
F 0 "R2" V 2780 2100 50  0000 C CNN
F 1 "330" V 2700 2100 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 2630 2100 50  0001 C CNN
F 3 "" H 2700 2100 50  0000 C CNN
	1    2700 2100
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 598B6FB7
P 2700 2700
F 0 "R3" V 2780 2700 50  0000 C CNN
F 1 "330" V 2700 2700 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 2630 2700 50  0001 C CNN
F 3 "" H 2700 2700 50  0000 C CNN
	1    2700 2700
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 598B7267
P 2700 3300
F 0 "R4" V 2780 3300 50  0000 C CNN
F 1 "330" V 2700 3300 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 2630 3300 50  0001 C CNN
F 3 "" H 2700 3300 50  0000 C CNN
	1    2700 3300
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 598B72AA
P 2700 3900
F 0 "R5" V 2780 3900 50  0000 C CNN
F 1 "330" V 2700 3900 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 2630 3900 50  0001 C CNN
F 3 "" H 2700 3900 50  0000 C CNN
	1    2700 3900
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 598B7458
P 2700 4500
F 0 "R6" V 2780 4500 50  0000 C CNN
F 1 "330" V 2700 4500 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 2630 4500 50  0001 C CNN
F 3 "" H 2700 4500 50  0000 C CNN
	1    2700 4500
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 598B74A3
P 2700 5100
F 0 "R7" V 2780 5100 50  0000 C CNN
F 1 "330" V 2700 5100 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 2630 5100 50  0001 C CNN
F 3 "" H 2700 5100 50  0000 C CNN
	1    2700 5100
	0    1    1    0   
$EndComp
$Comp
L CONN_01X06 P2
U 1 1 598BBA08
P 6200 3900
F 0 "P2" H 6200 4250 50  0000 C CNN
F 1 "CONN_01X06" V 6300 3900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 6200 3900 50  0001 C CNN
F 3 "" H 6200 3900 50  0000 C CNN
	1    6200 3900
	0    1    1    0   
$EndComp
Text Label 6050 3700 1    60   ~ 0
DTR
Text Label 6150 3700 1    60   ~ 0
RTS
Text Label 6250 3700 1    60   ~ 0
TXD
Text Label 6350 3700 1    60   ~ 0
RXD
$Comp
L +3V3 #PWR06
U 1 1 598BCF9F
P 6450 3700
F 0 "#PWR06" H 6450 3550 50  0001 C CNN
F 1 "+3V3" H 6450 3840 50  0000 C CNN
F 2 "" H 6450 3700 50  0000 C CNN
F 3 "" H 6450 3700 50  0000 C CNN
	1    6450 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 598BD115
P 5950 3500
F 0 "#PWR07" H 5950 3250 50  0001 C CNN
F 1 "GND" H 5950 3350 50  0000 C CNN
F 2 "" H 5950 3500 50  0000 C CNN
F 3 "" H 5950 3500 50  0000 C CNN
	1    5950 3500
	-1   0    0    1   
$EndComp
Text Label 8650 2100 0    60   ~ 0
DTR
Text Label 8650 2000 0    60   ~ 0
RTS
Text Label 8650 2900 0    60   ~ 0
TXD
Text Label 8650 2800 0    60   ~ 0
RXD
NoConn ~ 8650 2500
NoConn ~ 8650 2400
NoConn ~ 6600 1800
NoConn ~ 6600 2700
$Comp
L LED-RESCUE-Hyper_Board_Traser D9
U 1 1 59919004
P 9150 1600
F 0 "D9" H 9150 1700 50  0000 C CNN
F 1 "LED" H 9150 1500 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 9150 1600 50  0001 C CNN
F 3 "" H 9150 1600 50  0000 C CNN
	1    9150 1600
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR08
U 1 1 599190C8
P 9650 1600
F 0 "#PWR08" H 9650 1450 50  0001 C CNN
F 1 "+3V3" H 9650 1740 50  0000 C CNN
F 2 "" H 9650 1600 50  0000 C CNN
F 3 "" H 9650 1600 50  0000 C CNN
	1    9650 1600
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 59919199
P 9500 1600
F 0 "R16" V 9580 1600 50  0000 C CNN
F 1 "330" V 9500 1600 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 9430 1600 50  0001 C CNN
F 3 "" H 9500 1600 50  0000 C CNN
	1    9500 1600
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 599191F2
P 5800 2900
F 0 "R15" V 5880 2900 50  0000 C CNN
F 1 "330" V 5800 2900 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 5730 2900 50  0001 C CNN
F 3 "" H 5800 2900 50  0000 C CNN
	1    5800 2900
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR09
U 1 1 59919258
P 5650 2900
F 0 "#PWR09" H 5650 2750 50  0001 C CNN
F 1 "+3V3" H 5650 3040 50  0000 C CNN
F 2 "" H 5650 2900 50  0000 C CNN
F 3 "" H 5650 2900 50  0000 C CNN
	1    5650 2900
	1    0    0    -1  
$EndComp
Text Label 6600 1700 2    60   ~ 0
BIN1
Text Label 6600 1600 2    60   ~ 0
AIN1
$Comp
L CONN_01X02 P3
U 1 1 599195ED
P 9400 4150
F 0 "P3" H 9400 4300 50  0000 C CNN
F 1 "CONN_01X02" V 9500 4150 50  0000 C CNN
F 2 "akizukit:Connector_EH_2pin" H 9400 4150 50  0001 C CNN
F 3 "" H 9400 4150 50  0000 C CNN
	1    9400 4150
	0    -1   1    0   
$EndComp
$Comp
L AE-DRV8835-S Socket1
U 1 1 5991989B
P 7850 3950
F 0 "Socket1" H 7850 3500 60  0000 C CNN
F 1 "AE-DRV8835-S" H 7850 4350 60  0000 C CNN
F 2 "akizukit:AE-DRV8835-S" H 7850 3600 60  0000 C CNN
F 3 "" H 7850 3600 60  0000 C CNN
	1    7850 3950
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR010
U 1 1 599199C6
P 8500 3700
F 0 "#PWR010" H 8500 3550 50  0001 C CNN
F 1 "+3V3" H 8500 3840 50  0000 C CNN
F 2 "" H 8500 3700 50  0000 C CNN
F 3 "" H 8500 3700 50  0000 C CNN
	1    8500 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 59919A5F
P 8700 3800
F 0 "#PWR011" H 8700 3550 50  0001 C CNN
F 1 "GND" H 8700 3650 50  0000 C CNN
F 2 "" H 8700 3800 50  0000 C CNN
F 3 "" H 8700 3800 50  0000 C CNN
	1    8700 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 59919AAC
P 7200 4200
F 0 "#PWR012" H 7200 3950 50  0001 C CNN
F 1 "GND" H 7200 4050 50  0000 C CNN
F 2 "" H 7200 4200 50  0000 C CNN
F 3 "" H 7200 4200 50  0000 C CNN
	1    7200 4200
	1    0    0    -1  
$EndComp
Text Notes 5900 4150 0    60   ~ 0
ROBOX_Writer
Text Label 8650 1900 0    60   ~ 0
AIN2
Text Label 8650 1800 0    60   ~ 0
BIN2
Text Label 8400 3900 0    60   ~ 0
AIN1
$Comp
L CONN_01X02 P5
U 1 1 5991EBD3
P 9950 4150
F 0 "P5" H 9950 4300 50  0000 C CNN
F 1 "CONN_01X02" V 10050 4150 50  0000 C CNN
F 2 "akizukit:Connector_EH_2pin" H 9950 4150 50  0001 C CNN
F 3 "" H 9950 4150 50  0000 C CNN
	1    9950 4150
	0    -1   1    0   
$EndComp
Text Label 8400 4000 0    60   ~ 0
AIN2
Text Label 8400 4200 0    60   ~ 0
BIN1
Text Label 8400 4100 0    60   ~ 0
BIN2
Text Label 7300 3800 2    60   ~ 0
AOUT1
Text Label 7300 3900 2    60   ~ 0
AOUT2
Text Label 7300 4000 2    60   ~ 0
BOUT1
Text Label 7300 4100 2    60   ~ 0
BOUT2
Text Label 9350 3950 1    60   ~ 0
AOUT1
Text Label 9450 3950 1    60   ~ 0
AOUT2
Text Label 9900 3950 1    60   ~ 0
BOUT1
Text Label 10000 3950 1    60   ~ 0
BOUT2
Text Label 6600 2400 2    60   ~ 0
sensor3
Text Label 6600 2500 2    60   ~ 0
sensor4
Text Label 6600 2600 2    60   ~ 0
sensor5
Text Label 6600 2100 2    60   ~ 0
sensor1
Text Label 6600 1900 2    60   ~ 0
sensor2
Text Label 8650 2600 0    60   ~ 0
sensor7
Text Notes 2750 700  0    60   ~ 0
substitutes for photo transistors and LEDs
$Comp
L R R8
U 1 1 5992580E
P 4450 1500
F 0 "R8" V 4530 1500 50  0000 C CNN
F 1 "1k" V 4450 1500 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4380 1500 50  0001 C CNN
F 3 "" H 4450 1500 50  0000 C CNN
	1    4450 1500
	0    -1   -1   0   
$EndComp
$Comp
L POT-RESCUE-Hyper_Board_Traser RV1
U 1 1 599306B9
P 4050 1500
F 0 "RV1" H 4050 1400 50  0000 C CNN
F 1 "POT" H 4050 1500 50  0000 C CNN
F 2 "akizukit:square_trimming_potentiometer" H 4050 1500 50  0001 C CNN
F 3 "" H 4050 1500 50  0000 C CNN
	1    4050 1500
	1    0    0    -1  
$EndComp
Text Label 4050 1250 0    60   ~ 0
sensor1
$Comp
L R R9
U 1 1 5993EA03
P 4450 2100
F 0 "R9" V 4530 2100 50  0000 C CNN
F 1 "1k" V 4450 2100 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4380 2100 50  0001 C CNN
F 3 "" H 4450 2100 50  0000 C CNN
	1    4450 2100
	0    -1   -1   0   
$EndComp
$Comp
L POT-RESCUE-Hyper_Board_Traser RV2
U 1 1 5993EA0F
P 4050 2100
F 0 "RV2" H 4050 2000 50  0000 C CNN
F 1 "POT" H 4050 2100 50  0000 C CNN
F 2 "akizukit:square_trimming_potentiometer" H 4050 2100 50  0001 C CNN
F 3 "" H 4050 2100 50  0000 C CNN
	1    4050 2100
	1    0    0    -1  
$EndComp
Text Label 4050 1850 0    60   ~ 0
sensor2
$Comp
L R R10
U 1 1 5993EB24
P 4450 2700
F 0 "R10" V 4530 2700 50  0000 C CNN
F 1 "1k" V 4450 2700 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4380 2700 50  0001 C CNN
F 3 "" H 4450 2700 50  0000 C CNN
	1    4450 2700
	0    -1   -1   0   
$EndComp
$Comp
L POT-RESCUE-Hyper_Board_Traser RV3
U 1 1 5993EB30
P 4050 2700
F 0 "RV3" H 4050 2600 50  0000 C CNN
F 1 "POT" H 4050 2700 50  0000 C CNN
F 2 "akizukit:square_trimming_potentiometer" H 4050 2700 50  0001 C CNN
F 3 "" H 4050 2700 50  0000 C CNN
	1    4050 2700
	1    0    0    -1  
$EndComp
Text Label 4050 2450 0    60   ~ 0
sensor3
$Comp
L R R11
U 1 1 5993F2FC
P 4450 3300
F 0 "R11" V 4530 3300 50  0000 C CNN
F 1 "1k" V 4450 3300 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4380 3300 50  0001 C CNN
F 3 "" H 4450 3300 50  0000 C CNN
	1    4450 3300
	0    -1   -1   0   
$EndComp
$Comp
L POT-RESCUE-Hyper_Board_Traser RV4
U 1 1 5993F302
P 4050 3300
F 0 "RV4" H 4050 3200 50  0000 C CNN
F 1 "POT" H 4050 3300 50  0000 C CNN
F 2 "akizukit:square_trimming_potentiometer" H 4050 3300 50  0001 C CNN
F 3 "" H 4050 3300 50  0000 C CNN
	1    4050 3300
	1    0    0    -1  
$EndComp
Text Label 4050 3050 0    60   ~ 0
sensor4
$Comp
L R R12
U 1 1 5993F3EA
P 4450 3900
F 0 "R12" V 4530 3900 50  0000 C CNN
F 1 "1k" V 4450 3900 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4380 3900 50  0001 C CNN
F 3 "" H 4450 3900 50  0000 C CNN
	1    4450 3900
	0    -1   -1   0   
$EndComp
$Comp
L POT-RESCUE-Hyper_Board_Traser RV5
U 1 1 5993F3F0
P 4050 3900
F 0 "RV5" H 4050 3800 50  0000 C CNN
F 1 "POT" H 4050 3900 50  0000 C CNN
F 2 "akizukit:square_trimming_potentiometer" H 4050 3900 50  0001 C CNN
F 3 "" H 4050 3900 50  0000 C CNN
	1    4050 3900
	1    0    0    -1  
$EndComp
Text Label 4050 3650 0    60   ~ 0
sensor5
$Comp
L R R13
U 1 1 5993F4E8
P 4450 4500
F 0 "R13" V 4530 4500 50  0000 C CNN
F 1 "1k" V 4450 4500 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4380 4500 50  0001 C CNN
F 3 "" H 4450 4500 50  0000 C CNN
	1    4450 4500
	0    -1   -1   0   
$EndComp
$Comp
L POT-RESCUE-Hyper_Board_Traser RV6
U 1 1 5993F4EE
P 4050 4500
F 0 "RV6" H 4050 4400 50  0000 C CNN
F 1 "POT" H 4050 4500 50  0000 C CNN
F 2 "akizukit:square_trimming_potentiometer" H 4050 4500 50  0001 C CNN
F 3 "" H 4050 4500 50  0000 C CNN
	1    4050 4500
	1    0    0    -1  
$EndComp
Text Label 4050 4250 0    60   ~ 0
sensor6
$Comp
L R R14
U 1 1 5993F56E
P 4450 5100
F 0 "R14" V 4530 5100 50  0000 C CNN
F 1 "1k" V 4450 5100 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4380 5100 50  0001 C CNN
F 3 "" H 4450 5100 50  0000 C CNN
	1    4450 5100
	0    -1   -1   0   
$EndComp
$Comp
L POT-RESCUE-Hyper_Board_Traser RV7
U 1 1 5993F574
P 4050 5100
F 0 "RV7" H 4050 5000 50  0000 C CNN
F 1 "POT" H 4050 5100 50  0000 C CNN
F 2 "akizukit:square_trimming_potentiometer" H 4050 5100 50  0001 C CNN
F 3 "" H 4050 5100 50  0000 C CNN
	1    4050 5100
	1    0    0    -1  
$EndComp
Text Label 4050 4850 0    60   ~ 0
sensor7
$Comp
L LED-RESCUE-Hyper_Board_Traser D1
U 1 1 5994A7CD
P 4850 1500
F 0 "D1" H 4850 1600 50  0000 C CNN
F 1 "LED" H 4850 1400 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 4850 1500 50  0001 C CNN
F 3 "" H 4850 1500 50  0000 C CNN
	1    4850 1500
	-1   0    0    1   
$EndComp
$Comp
L LED-RESCUE-Hyper_Board_Traser D2
U 1 1 5994AD9F
P 4850 2100
F 0 "D2" H 4850 2200 50  0000 C CNN
F 1 "LED" H 4850 2000 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 4850 2100 50  0001 C CNN
F 3 "" H 4850 2100 50  0000 C CNN
	1    4850 2100
	-1   0    0    1   
$EndComp
$Comp
L LED-RESCUE-Hyper_Board_Traser D3
U 1 1 5994BF90
P 4850 2700
F 0 "D3" H 4850 2800 50  0000 C CNN
F 1 "LED" H 4850 2600 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 4850 2700 50  0001 C CNN
F 3 "" H 4850 2700 50  0000 C CNN
	1    4850 2700
	-1   0    0    1   
$EndComp
$Comp
L LED-RESCUE-Hyper_Board_Traser D4
U 1 1 5994C024
P 4850 3300
F 0 "D4" H 4850 3400 50  0000 C CNN
F 1 "LED" H 4850 3200 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 4850 3300 50  0001 C CNN
F 3 "" H 4850 3300 50  0000 C CNN
	1    4850 3300
	-1   0    0    1   
$EndComp
$Comp
L LED-RESCUE-Hyper_Board_Traser D5
U 1 1 5994C0B5
P 4850 3900
F 0 "D5" H 4850 4000 50  0000 C CNN
F 1 "LED" H 4850 3800 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 4850 3900 50  0001 C CNN
F 3 "" H 4850 3900 50  0000 C CNN
	1    4850 3900
	-1   0    0    1   
$EndComp
$Comp
L LED-RESCUE-Hyper_Board_Traser D6
U 1 1 5994C26D
P 4850 4500
F 0 "D6" H 4850 4600 50  0000 C CNN
F 1 "LED" H 4850 4400 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 4850 4500 50  0001 C CNN
F 3 "" H 4850 4500 50  0000 C CNN
	1    4850 4500
	-1   0    0    1   
$EndComp
$Comp
L LED-RESCUE-Hyper_Board_Traser D7
U 1 1 5994C304
P 4850 5100
F 0 "D7" H 4850 5200 50  0000 C CNN
F 1 "LED" H 4850 5000 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 4850 5100 50  0001 C CNN
F 3 "" H 4850 5100 50  0000 C CNN
	1    4850 5100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR013
U 1 1 5994D600
P 5050 5400
F 0 "#PWR013" H 5050 5150 50  0001 C CNN
F 1 "GND" H 5050 5250 50  0000 C CNN
F 2 "" H 5050 5400 50  0000 C CNN
F 3 "" H 5050 5400 50  0000 C CNN
	1    5050 5400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P4
U 1 1 59961DA2
P 9650 3350
F 0 "P4" H 9650 3550 50  0000 C CNN
F 1 "CONN_01X03" V 9750 3350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 9650 3350 50  0001 C CNN
F 3 "" H 9650 3350 50  0000 C CNN
	1    9650 3350
	0    -1   1    0   
$EndComp
Text Label 8650 1700 0    60   ~ 0
dp27
Text Label 6600 2000 2    60   ~ 0
dp5
Text Label 9550 3150 1    60   ~ 0
dp5
Text Label 9750 3150 1    60   ~ 0
dp27
$Comp
L +6V #PWR014
U 1 1 5998D391
P 7200 3700
F 0 "#PWR014" H 7200 3550 50  0001 C CNN
F 1 "+6V" H 7200 3840 50  0000 C CNN
F 2 "" H 7200 3700 50  0000 C CNN
F 3 "" H 7200 3700 50  0000 C CNN
	1    7200 3700
	1    0    0    -1  
$EndComp
$Comp
L +6V #PWR015
U 1 1 59998560
P 7800 5000
F 0 "#PWR015" H 7800 4850 50  0001 C CNN
F 1 "+6V" H 7800 5140 50  0000 C CNN
F 2 "" H 7800 5000 50  0000 C CNN
F 3 "" H 7800 5000 50  0000 C CNN
	1    7800 5000
	1    0    0    -1  
$EndComp
$Comp
L TA48033 U8
U 1 1 5999944C
P 8350 5050
F 0 "U8" H 8050 5300 50  0000 C CNN
F 1 "TA48033" H 8350 5250 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Vertical_LargePads" H 8350 5400 50  0000 C CIN
F 3 "" H 8350 5050 50  0000 C CNN
	1    8350 5050
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5999979D
P 7800 5150
F 0 "C1" H 7825 5250 50  0000 L CNN
F 1 "0.1u" H 7825 5050 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 7838 5000 50  0001 C CNN
F 3 "" H 7800 5150 50  0000 C CNN
	1    7800 5150
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 599998DF
P 8900 5150
F 0 "C2" H 8925 5250 50  0000 L CNN
F 1 "100u" H 8925 5050 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L11_P2" H 8938 5000 50  0001 C CNN
F 3 "" H 8900 5150 50  0000 C CNN
	1    8900 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5999AD15
P 8350 5350
F 0 "#PWR016" H 8350 5100 50  0001 C CNN
F 1 "GND" H 8350 5200 50  0000 C CNN
F 2 "" H 8350 5350 50  0000 C CNN
F 3 "" H 8350 5350 50  0000 C CNN
	1    8350 5350
	1    0    0    -1  
$EndComp
$Comp
L SWITCH_INV SW1
U 1 1 5999B875
P 6700 4900
F 0 "SW1" H 6500 5050 50  0000 C CNN
F 1 "SWITCH_INV" H 6550 4750 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_Micro_SPST" H 6700 4900 50  0001 C CNN
F 3 "" H 6700 4900 50  0000 C CNN
	1    6700 4900
	1    0    0    -1  
$EndComp
NoConn ~ 7200 4800
$Comp
L CONN_01X02 P1
U 1 1 5999BD3B
P 5900 4950
F 0 "P1" H 5900 5100 50  0000 C CNN
F 1 "CONN_01X02" V 6000 4950 50  0000 C CNN
F 2 "akizukit:Connector_EH_2pin" H 5900 4950 50  0001 C CNN
F 3 "" H 5900 4950 50  0000 C CNN
	1    5900 4950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR017
U 1 1 5999BFF3
P 6100 5050
F 0 "#PWR017" H 6100 4800 50  0001 C CNN
F 1 "GND" H 6100 4900 50  0000 C CNN
F 2 "" H 6100 5050 50  0000 C CNN
F 3 "" H 6100 5050 50  0000 C CNN
	1    6100 5050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR018
U 1 1 5999E90E
P 9250 5000
F 0 "#PWR018" H 9250 4850 50  0001 C CNN
F 1 "+3.3V" H 9250 5140 50  0000 C CNN
F 2 "" H 9250 5000 50  0000 C CNN
F 3 "" H 9250 5000 50  0000 C CNN
	1    9250 5000
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG019
U 1 1 599B5238
P 5450 1550
F 0 "#FLG019" H 5450 1645 50  0001 C CNN
F 1 "PWR_FLAG" H 5450 1730 50  0000 C CNN
F 2 "" H 5450 1550 50  0000 C CNN
F 3 "" H 5450 1550 50  0000 C CNN
	1    5450 1550
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG020
U 1 1 599B575E
P 5900 1550
F 0 "#FLG020" H 5900 1645 50  0001 C CNN
F 1 "PWR_FLAG" H 5900 1730 50  0000 C CNN
F 2 "" H 5900 1550 50  0000 C CNN
F 3 "" H 5900 1550 50  0000 C CNN
	1    5900 1550
	1    0    0    -1  
$EndComp
$Comp
L +6V #PWR021
U 1 1 599B5833
P 5450 1550
F 0 "#PWR021" H 5450 1400 50  0001 C CNN
F 1 "+6V" H 5450 1690 50  0000 C CNN
F 2 "" H 5450 1550 50  0000 C CNN
F 3 "" H 5450 1550 50  0000 C CNN
	1    5450 1550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR022
U 1 1 599B58AB
P 5900 1550
F 0 "#PWR022" H 5900 1300 50  0001 C CNN
F 1 "GND" H 5900 1400 50  0000 C CNN
F 2 "" H 5900 1550 50  0000 C CNN
F 3 "" H 5900 1550 50  0000 C CNN
	1    5900 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2300 8650 2300
Wire Wire Line
	8950 2200 8650 2200
Wire Wire Line
	6600 2200 6100 2200
Wire Wire Line
	6100 2300 6600 2300
Wire Wire Line
	3050 1300 2950 1300
Wire Wire Line
	2950 1900 3050 1900
Wire Wire Line
	2850 1500 3050 1500
Wire Wire Line
	2850 2100 3050 2100
Wire Wire Line
	2950 2500 3050 2500
Wire Wire Line
	2850 2700 3050 2700
Wire Wire Line
	2950 3100 3050 3100
Wire Wire Line
	2850 3300 3050 3300
Wire Wire Line
	2950 3700 3050 3700
Wire Wire Line
	2850 3900 3050 3900
Wire Wire Line
	2950 4300 3050 4300
Wire Wire Line
	2850 4500 3050 4500
Wire Wire Line
	2950 4900 3050 4900
Wire Wire Line
	2850 5100 3050 5100
Wire Wire Line
	5950 3500 5950 3700
Wire Wire Line
	2550 1500 2550 5300
Connection ~ 2550 4500
Connection ~ 2550 3900
Connection ~ 2550 3300
Connection ~ 2550 2700
Connection ~ 2550 2100
Connection ~ 2550 5100
Wire Wire Line
	8700 3800 8400 3800
Wire Wire Line
	6600 2900 6350 2900
Wire Wire Line
	3750 1300 3650 1300
Wire Wire Line
	4050 1350 4050 1250
Wire Wire Line
	3650 1500 3800 1500
Connection ~ 4050 1350
Wire Wire Line
	4050 1950 4050 1850
Wire Wire Line
	3800 1950 4050 1950
Connection ~ 4050 1950
Wire Wire Line
	4050 2550 4050 2450
Wire Wire Line
	3800 2550 4050 2550
Connection ~ 4050 2550
Wire Wire Line
	4050 3150 4050 3050
Connection ~ 4050 3150
Wire Wire Line
	4050 3750 4050 3650
Connection ~ 4050 3750
Wire Wire Line
	4050 4350 4050 4250
Connection ~ 4050 4350
Wire Wire Line
	4050 4950 4050 4850
Connection ~ 4050 4950
Wire Wire Line
	3750 4900 3650 4900
Wire Wire Line
	3750 1900 3650 1900
Connection ~ 3750 1900
Wire Wire Line
	3650 2100 3800 2100
Wire Wire Line
	3750 2500 3650 2500
Connection ~ 3750 2500
Wire Wire Line
	3750 3700 3650 3700
Connection ~ 3750 3700
Wire Wire Line
	3750 4300 3650 4300
Connection ~ 3750 4300
Wire Wire Line
	3800 2700 3650 2700
Wire Wire Line
	3750 3100 3650 3100
Connection ~ 3750 3100
Wire Wire Line
	3650 3300 3800 3300
Wire Wire Line
	3650 3900 3800 3900
Wire Wire Line
	3650 4500 3800 4500
Wire Wire Line
	3650 5100 3800 5100
Connection ~ 3750 1300
Wire Wire Line
	4600 1500 4650 1500
Wire Wire Line
	4600 2100 4650 2100
Wire Wire Line
	4600 2700 4650 2700
Wire Wire Line
	4600 3300 4650 3300
Wire Wire Line
	4600 3900 4650 3900
Wire Wire Line
	4600 4500 4650 4500
Wire Wire Line
	2950 1000 2950 4900
Connection ~ 2950 1300
Connection ~ 2950 1900
Connection ~ 2950 2500
Connection ~ 2950 3100
Connection ~ 2950 3700
Connection ~ 2950 4300
Wire Wire Line
	4650 5100 4600 5100
Wire Wire Line
	5050 1500 5050 5400
Connection ~ 5050 5100
Connection ~ 5050 4500
Connection ~ 5050 3900
Connection ~ 5050 3300
Connection ~ 5050 2700
Connection ~ 5050 2100
Wire Wire Line
	2950 1000 3750 1000
Wire Wire Line
	3750 1000 3750 4900
Connection ~ 2950 1000
Wire Wire Line
	2550 5300 5050 5300
Connection ~ 5050 5300
Wire Wire Line
	7300 4200 7200 4200
Wire Wire Line
	8500 3700 8400 3700
Wire Wire Line
	7200 3700 7300 3700
Wire Wire Line
	8950 1600 8650 1600
Wire Wire Line
	7200 5000 7900 5000
Wire Wire Line
	7800 5300 7800 5350
Wire Wire Line
	7800 5350 8900 5350
Wire Wire Line
	8900 5350 8900 5300
Connection ~ 8350 5350
Connection ~ 7800 5000
Wire Wire Line
	6100 4900 6200 4900
Wire Wire Line
	6100 5000 6100 5050
Wire Wire Line
	8800 5000 9250 5000
Connection ~ 8900 5000
Wire Wire Line
	4050 1350 3800 1350
Wire Wire Line
	3800 1350 3800 1500
Wire Wire Line
	3800 2100 3800 1950
Wire Wire Line
	3800 2550 3800 2700
Wire Wire Line
	4050 4950 3800 4950
Wire Wire Line
	3800 4950 3800 5100
Wire Wire Line
	3800 4500 3800 4350
Wire Wire Line
	3800 4350 4050 4350
Wire Wire Line
	3800 3900 3800 3750
Wire Wire Line
	3800 3750 4050 3750
Wire Wire Line
	3800 3150 4050 3150
Wire Wire Line
	3800 3300 3800 3150
Text Label 6600 2800 2    60   ~ 0
sensor6
Text Label 8650 2700 0    60   ~ 0
dp17
Text Label 9650 3150 1    60   ~ 0
dp17
$EndSCHEMATC
