EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L Hyper_Board_Traser-rescue:CONN_01X06 P?
U 1 1 5F54EAD3
P 2200 2300
AR Path="/5F54EAD3" Ref="P?"  Part="1" 
AR Path="/5F548F89/5F54EAD3" Ref="P?"  Part="1" 
F 0 "P?" H 2200 2650 50  0000 C CNN
F 1 "CONN_01X06" V 2300 2300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2200 2300 50  0001 C CNN
F 3 "" H 2200 2300 50  0000 C CNN
	1    2200 2300
	0    1    1    0   
$EndComp
Text Label 2050 2100 1    60   ~ 0
DTR
Text Label 2150 2100 1    60   ~ 0
RTS
Text Label 2250 2100 1    60   ~ 0
TXD
Text Label 2350 2100 1    60   ~ 0
RXD
Text Notes 1900 2550 0    60   ~ 0
ROBOX_Writer
$Comp
L Hyper_Board_Traser-rescue:C C?
U 1 1 5F57378C
P 5900 1700
AR Path="/5F57378C" Ref="C?"  Part="1" 
AR Path="/5F548F89/5F57378C" Ref="C?"  Part="1" 
F 0 "C?" H 5925 1800 50  0000 L CNN
F 1 "0.1u" H 5925 1600 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 5938 1550 50  0001 C CNN
F 3 "" H 5900 1700 50  0000 C CNN
	1    5900 1700
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:CP C?
U 1 1 5F573792
P 7000 1700
AR Path="/5F573792" Ref="C?"  Part="1" 
AR Path="/5F548F89/5F573792" Ref="C?"  Part="1" 
F 0 "C?" H 7025 1800 50  0000 L CNN
F 1 "100u" H 7025 1600 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 7038 1550 50  0001 C CNN
F 3 "" H 7000 1700 50  0000 C CNN
	1    7000 1700
	1    0    0    -1  
$EndComp
NoConn ~ 5300 1350
$Comp
L Hyper_Board_Traser-rescue:CONN_01X02 P?
U 1 1 5F57379F
P 4600 1500
AR Path="/5F57379F" Ref="P?"  Part="1" 
AR Path="/5F548F89/5F57379F" Ref="P?"  Part="1" 
F 0 "P?" H 4600 1650 50  0000 C CNN
F 1 "CONN_01X02" V 4700 1500 50  0000 C CNN
F 2 "akizukit:Connector_EH_2pin" H 4600 1500 50  0001 C CNN
F 3 "" H 4600 1500 50  0000 C CNN
	1    4600 1500
	-1   0    0    1   
$EndComp
$Comp
L Hyper_Board_Traser-rescue:PWR_FLAG #FLG?
U 1 1 5F5737B1
P 9050 4150
AR Path="/5F5737B1" Ref="#FLG?"  Part="1" 
AR Path="/5F548F89/5F5737B1" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 9050 4245 50  0001 C CNN
F 1 "PWR_FLAG" H 9050 4330 50  0000 C CNN
F 2 "" H 9050 4150 50  0000 C CNN
F 3 "" H 9050 4150 50  0000 C CNN
	1    9050 4150
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:PWR_FLAG #FLG?
U 1 1 5F5737B7
P 9500 4150
AR Path="/5F5737B7" Ref="#FLG?"  Part="1" 
AR Path="/5F548F89/5F5737B7" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 9500 4245 50  0001 C CNN
F 1 "PWR_FLAG" H 9500 4330 50  0000 C CNN
F 2 "" H 9500 4150 50  0000 C CNN
F 3 "" H 9500 4150 50  0000 C CNN
	1    9500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1850 5900 1900
Wire Wire Line
	7000 1900 7000 1850
Wire Wire Line
	4800 1450 4900 1450
$Comp
L Hyper_Board_Traser-rescue:C C?
U 1 1 5F5737CD
P 7250 1700
AR Path="/5F5737CD" Ref="C?"  Part="1" 
AR Path="/5F548F89/5F5737CD" Ref="C?"  Part="1" 
F 0 "C?" H 7275 1800 50  0000 L CNN
F 1 "0.1u" H 7275 1600 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 7288 1550 50  0001 C CNN
F 3 "" H 7250 1700 50  0000 C CNN
	1    7250 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1850 7250 1900
Wire Wire Line
	7250 1900 7000 1900
Connection ~ 7000 1900
$Comp
L Switch:SW_SPDT SW?
U 1 1 5F5737D6
P 5100 1450
AR Path="/5F5737D6" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5737D6" Ref="SW?"  Part="1" 
F 0 "SW?" H 5100 1735 50  0000 C CNN
F 1 "SW_SPDT" H 5100 1644 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5100 1450 50  0001 C CNN
F 3 "~" H 5100 1450 50  0001 C CNN
	1    5100 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1400 8150 1400
$Comp
L Hyper_Board_Traser-rescue:C C?
U 1 1 5F5737E3
P 8300 1300
AR Path="/5F5737E3" Ref="C?"  Part="1" 
AR Path="/5F548F89/5F5737E3" Ref="C?"  Part="1" 
F 0 "C?" H 8325 1400 50  0000 L CNN
F 1 "0.1u" H 8325 1200 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 8338 1150 50  0001 C CNN
F 3 "" H 8300 1300 50  0000 C CNN
	1    8300 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 1300 8150 1400
Connection ~ 8150 1400
Wire Wire Line
	8150 1400 8000 1400
Text Label 4400 2200 2    60   ~ 0
DTR
Text Label 4400 2700 2    60   ~ 0
RTS
NoConn ~ 9050 3100
NoConn ~ 9150 3100
NoConn ~ 9250 3100
NoConn ~ 9350 3100
$Comp
L Switch:SW_Push SW?
U 1 1 5F57380A
P 5950 2550
AR Path="/5F57380A" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F57380A" Ref="SW?"  Part="1" 
F 0 "SW?" H 5950 2835 50  0000 C CNN
F 1 "SW_Push" H 5950 2744 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 5950 2750 50  0001 C CNN
F 3 "~" H 5950 2750 50  0001 C CNN
	1    5950 2550
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F573810
P 6300 2550
AR Path="/5F573810" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F573810" Ref="R?"  Part="1" 
F 0 "R?" V 6380 2550 50  0000 C CNN
F 1 "1k" V 6300 2550 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 6230 2550 50  0001 C CNN
F 3 "" H 6300 2550 50  0000 C CNN
	1    6300 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 2550 5650 2550
$Comp
L Hyper_Board_Traser-rescue:C C?
U 1 1 5F573823
P 5950 2750
AR Path="/5F573823" Ref="C?"  Part="1" 
AR Path="/5F548F89/5F573823" Ref="C?"  Part="1" 
F 0 "C?" H 5975 2850 50  0000 L CNN
F 1 "0.1u" H 5975 2650 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 5988 2600 50  0001 C CNN
F 3 "" H 5950 2750 50  0000 C CNN
	1    5950 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 2750 5750 2750
Wire Wire Line
	5750 2750 5750 2550
Connection ~ 5750 2550
Wire Wire Line
	6150 2550 6150 2750
Wire Wire Line
	6150 2750 6100 2750
Connection ~ 6150 2550
Text Label 6150 2450 0    60   ~ 0
IO0
Wire Wire Line
	6150 2450 6150 2550
$Comp
L Switch:SW_Push SW?
U 1 1 5F573831
P 7100 2550
AR Path="/5F573831" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F573831" Ref="SW?"  Part="1" 
F 0 "SW?" H 7100 2835 50  0000 C CNN
F 1 "SW_Push" H 7100 2744 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 7100 2750 50  0001 C CNN
F 3 "~" H 7100 2750 50  0001 C CNN
	1    7100 2550
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F573837
P 7450 2550
AR Path="/5F573837" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F573837" Ref="R?"  Part="1" 
F 0 "R?" V 7530 2550 50  0000 C CNN
F 1 "1k" V 7450 2550 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 7380 2550 50  0001 C CNN
F 3 "" H 7450 2550 50  0000 C CNN
	1    7450 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 2550 6800 2550
$Comp
L Hyper_Board_Traser-rescue:C C?
U 1 1 5F57384A
P 7100 2750
AR Path="/5F57384A" Ref="C?"  Part="1" 
AR Path="/5F548F89/5F57384A" Ref="C?"  Part="1" 
F 0 "C?" H 7125 2850 50  0000 L CNN
F 1 "0.1u" H 7125 2650 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 7138 2600 50  0001 C CNN
F 3 "" H 7100 2750 50  0000 C CNN
	1    7100 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 2750 6900 2750
Wire Wire Line
	6900 2750 6900 2550
Connection ~ 6900 2550
Wire Wire Line
	7300 2550 7300 2750
Wire Wire Line
	7300 2750 7250 2750
Connection ~ 7300 2550
Text Label 7300 2450 0    60   ~ 0
EN
Wire Wire Line
	7300 2450 7300 2550
Text Label 8450 1500 2    60   ~ 0
EN
Text Label 5050 3000 0    60   ~ 0
IO0
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 5F57385A
P 4950 2200
AR Path="/5F57385A" Ref="Q?"  Part="1" 
AR Path="/5F548F89/5F57385A" Ref="Q?"  Part="1" 
F 0 "Q?" H 5140 2246 50  0000 L CNN
F 1 "2SC1815" H 5140 2155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5150 2125 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 4950 2200 50  0001 L CNN
	1    4950 2200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 5F573860
P 4950 2700
AR Path="/5F573860" Ref="Q?"  Part="1" 
AR Path="/5F548F89/5F573860" Ref="Q?"  Part="1" 
F 0 "Q?" H 5140 2746 50  0000 L CNN
F 1 "2SC1815" H 5140 2655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5150 2625 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 4950 2700 50  0001 L CNN
	1    4950 2700
	1    0    0    -1  
$EndComp
Text Label 5050 2000 0    60   ~ 0
EN
Wire Wire Line
	5050 2900 5050 3000
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F573868
P 4600 2200
AR Path="/5F573868" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F573868" Ref="R?"  Part="1" 
F 0 "R?" V 4680 2200 50  0000 C CNN
F 1 "1k" V 4600 2200 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4530 2200 50  0001 C CNN
F 3 "" H 4600 2200 50  0000 C CNN
	1    4600 2200
	0    1    1    0   
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F57386E
P 4600 2700
AR Path="/5F57386E" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F57386E" Ref="R?"  Part="1" 
F 0 "R?" V 4680 2700 50  0000 C CNN
F 1 "1k" V 4600 2700 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4530 2700 50  0001 C CNN
F 3 "" H 4600 2700 50  0000 C CNN
	1    4600 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 2700 4400 2700
Wire Wire Line
	4400 2200 4450 2200
Wire Wire Line
	4400 2200 4400 2500
Wire Wire Line
	4400 2500 5050 2500
Wire Wire Line
	5050 2400 4450 2400
Wire Wire Line
	4450 2400 4450 2700
Text Label 10150 1500 0    60   ~ 0
back
Text Label 10150 1800 0    60   ~ 0
conv
Text Label 8450 2300 2    60   ~ 0
enter
Text Label 8450 1900 2    60   ~ 0
jx
NoConn ~ 10150 1900
Text Label 10150 2100 0    60   ~ 0
r3
Text Label 10150 2000 0    60   ~ 0
r1
Text Label 8450 2200 2    60   ~ 0
c3
Wire Wire Line
	5300 1550 5900 1550
Wire Wire Line
	5900 1900 6450 1900
Text Label 8450 1600 2    60   ~ 0
jy
NoConn ~ 10150 1400
NoConn ~ 10150 1600
NoConn ~ 10150 1700
NoConn ~ 8950 3100
NoConn ~ 8450 2400
NoConn ~ 8450 2500
NoConn ~ 8450 2600
NoConn ~ 8450 2100
NoConn ~ 8450 2000
NoConn ~ 8450 1800
NoConn ~ 8450 1700
Text Label 6400 4600 2    60   ~ 0
c3
Text Label 5250 5750 2    60   ~ 0
r3
Text Label 5250 5050 2    60   ~ 0
r1
Text Label 5250 6100 2    60   ~ 0
r4
Text Label 5250 5400 2    60   ~ 0
r2
Text Label 5900 4600 2    60   ~ 0
c2
Text Label 5400 4600 2    60   ~ 0
c1
Wire Wire Line
	5250 5400 5250 5500
Wire Wire Line
	5250 5750 5250 5850
Wire Wire Line
	5250 6100 5250 6200
Wire Wire Line
	5250 5050 5250 5150
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738A1
P 6100 5400
AR Path="/5F5738A1" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738A1" Ref="SW?"  Part="1" 
F 0 "SW?" H 6100 5685 50  0000 C CNN
F 1 "SW_Push" H 6100 5594 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 6100 5600 50  0001 C CNN
F 3 "~" H 6100 5600 50  0001 C CNN
	1    6100 5400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738A7
P 6100 5750
AR Path="/5F5738A7" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738A7" Ref="SW?"  Part="1" 
F 0 "SW?" H 6100 6035 50  0000 C CNN
F 1 "SW_Push" H 6100 5944 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 6100 5950 50  0001 C CNN
F 3 "~" H 6100 5950 50  0001 C CNN
	1    6100 5750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738AD
P 6100 5050
AR Path="/5F5738AD" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738AD" Ref="SW?"  Part="1" 
F 0 "SW?" H 6100 5335 50  0000 C CNN
F 1 "SW_Push" H 6100 5244 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 6100 5250 50  0001 C CNN
F 3 "~" H 6100 5250 50  0001 C CNN
	1    6100 5050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738B3
P 6100 6100
AR Path="/5F5738B3" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738B3" Ref="SW?"  Part="1" 
F 0 "SW?" H 6100 6385 50  0000 C CNN
F 1 "SW_Push" H 6100 6294 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 6100 6300 50  0001 C CNN
F 3 "~" H 6100 6300 50  0001 C CNN
	1    6100 6100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738B9
P 6600 5400
AR Path="/5F5738B9" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738B9" Ref="SW?"  Part="1" 
F 0 "SW?" H 6600 5685 50  0000 C CNN
F 1 "SW_Push" H 6600 5594 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 6600 5600 50  0001 C CNN
F 3 "~" H 6600 5600 50  0001 C CNN
	1    6600 5400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738BF
P 6600 5750
AR Path="/5F5738BF" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738BF" Ref="SW?"  Part="1" 
F 0 "SW?" H 6600 6035 50  0000 C CNN
F 1 "SW_Push" H 6600 5944 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 6600 5950 50  0001 C CNN
F 3 "~" H 6600 5950 50  0001 C CNN
	1    6600 5750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738C5
P 6600 5050
AR Path="/5F5738C5" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738C5" Ref="SW?"  Part="1" 
F 0 "SW?" H 6600 5335 50  0000 C CNN
F 1 "SW_Push" H 6600 5244 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 6600 5250 50  0001 C CNN
F 3 "~" H 6600 5250 50  0001 C CNN
	1    6600 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5050 6800 5150
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738CC
P 6600 6100
AR Path="/5F5738CC" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738CC" Ref="SW?"  Part="1" 
F 0 "SW?" H 6600 6385 50  0000 C CNN
F 1 "SW_Push" H 6600 6294 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 6600 6300 50  0001 C CNN
F 3 "~" H 6600 6300 50  0001 C CNN
	1    6600 6100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738D2
P 5600 6100
AR Path="/5F5738D2" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738D2" Ref="SW?"  Part="1" 
F 0 "SW?" H 5600 6385 50  0000 C CNN
F 1 "SW_Push" H 5600 6294 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 5600 6300 50  0001 C CNN
F 3 "~" H 5600 6300 50  0001 C CNN
	1    5600 6100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738D8
P 5600 5050
AR Path="/5F5738D8" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738D8" Ref="SW?"  Part="1" 
F 0 "SW?" H 5600 5335 50  0000 C CNN
F 1 "SW_Push" H 5600 5244 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 5600 5250 50  0001 C CNN
F 3 "~" H 5600 5250 50  0001 C CNN
	1    5600 5050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738DE
P 5600 5750
AR Path="/5F5738DE" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738DE" Ref="SW?"  Part="1" 
F 0 "SW?" H 5600 6035 50  0000 C CNN
F 1 "SW_Push" H 5600 5944 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 5600 5950 50  0001 C CNN
F 3 "~" H 5600 5950 50  0001 C CNN
	1    5600 5750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738E4
P 5600 5400
AR Path="/5F5738E4" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738E4" Ref="SW?"  Part="1" 
F 0 "SW?" H 5600 5685 50  0000 C CNN
F 1 "SW_Push" H 5600 5594 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 5600 5600 50  0001 C CNN
F 3 "~" H 5600 5600 50  0001 C CNN
	1    5600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5150 5800 5150
Wire Wire Line
	5800 5050 5800 5150
Connection ~ 5800 5150
Wire Wire Line
	5800 5150 6300 5150
Wire Wire Line
	6300 5050 6300 5150
Connection ~ 6300 5150
Wire Wire Line
	6300 5150 6800 5150
Wire Wire Line
	6800 5400 6800 5500
Wire Wire Line
	5250 5500 5800 5500
Wire Wire Line
	5800 5400 5800 5500
Connection ~ 5800 5500
Wire Wire Line
	5800 5500 6300 5500
Wire Wire Line
	6300 5400 6300 5500
Connection ~ 6300 5500
Wire Wire Line
	6300 5500 6800 5500
Wire Wire Line
	6800 5750 6800 5850
Wire Wire Line
	5250 5850 5800 5850
Wire Wire Line
	5800 5750 5800 5850
Connection ~ 5800 5850
Wire Wire Line
	5800 5850 6300 5850
Wire Wire Line
	6300 5750 6300 5850
Connection ~ 6300 5850
Wire Wire Line
	6300 5850 6800 5850
Wire Wire Line
	6800 6100 6800 6200
Wire Wire Line
	5250 6200 5800 6200
Wire Wire Line
	5800 6100 5800 6200
Connection ~ 5800 6200
Wire Wire Line
	5800 6200 6300 6200
Wire Wire Line
	6300 6100 6300 6200
Connection ~ 6300 6200
Wire Wire Line
	6300 6200 6800 6200
Wire Wire Line
	6400 4600 6400 5050
Wire Wire Line
	6400 5050 6400 5400
Connection ~ 6400 5050
Wire Wire Line
	6400 5400 6400 5750
Connection ~ 6400 5400
Wire Wire Line
	6400 5750 6400 6100
Connection ~ 6400 5750
Wire Wire Line
	5400 4600 5400 5050
Wire Wire Line
	5400 5050 5400 5400
Connection ~ 5400 5050
Wire Wire Line
	5400 5400 5400 5750
Connection ~ 5400 5400
Wire Wire Line
	5400 5750 5400 6100
Connection ~ 5400 5750
Wire Wire Line
	5900 4600 5900 5050
Wire Wire Line
	5900 5050 5900 5400
Connection ~ 5900 5050
Wire Wire Line
	5900 5400 5900 5750
Connection ~ 5900 5400
Wire Wire Line
	5900 5750 5900 6100
Connection ~ 5900 5750
Wire Wire Line
	4900 5850 4900 6200
Connection ~ 4900 5850
Wire Wire Line
	4900 5500 4900 5850
Connection ~ 4900 5500
Wire Wire Line
	4900 5150 4900 5500
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F573923
P 5050 5150
AR Path="/5F573923" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F573923" Ref="R?"  Part="1" 
F 0 "R?" V 5130 5150 50  0000 C CNN
F 1 "1k" V 5050 5150 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4980 5150 50  0001 C CNN
F 3 "" H 5050 5150 50  0000 C CNN
	1    5050 5150
	0    1    1    0   
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F573929
P 5050 6200
AR Path="/5F573929" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F573929" Ref="R?"  Part="1" 
F 0 "R?" V 5130 6200 50  0000 C CNN
F 1 "1k" V 5050 6200 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4980 6200 50  0001 C CNN
F 3 "" H 5050 6200 50  0000 C CNN
	1    5050 6200
	0    1    1    0   
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F57392F
P 5050 5850
AR Path="/5F57392F" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F57392F" Ref="R?"  Part="1" 
F 0 "R?" V 5130 5850 50  0000 C CNN
F 1 "1k" V 5050 5850 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4980 5850 50  0001 C CNN
F 3 "" H 5050 5850 50  0000 C CNN
	1    5050 5850
	0    1    1    0   
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F573935
P 5050 5500
AR Path="/5F573935" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F573935" Ref="R?"  Part="1" 
F 0 "R?" V 5130 5500 50  0000 C CNN
F 1 "1k" V 5050 5500 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4980 5500 50  0001 C CNN
F 3 "" H 5050 5500 50  0000 C CNN
	1    5050 5500
	0    1    1    0   
$EndComp
Connection ~ 5250 6200
Wire Wire Line
	5250 6200 5200 6200
Connection ~ 5250 5850
Wire Wire Line
	5250 5850 5200 5850
Connection ~ 5250 5150
Wire Wire Line
	5250 5150 5200 5150
Connection ~ 5250 5500
Wire Wire Line
	5250 5500 5200 5500
Wire Wire Line
	4900 6200 4850 6200
Connection ~ 4900 6200
Wire Notes Line
	4650 4350 4650 6550
Wire Notes Line
	4650 6550 6950 6550
Wire Notes Line
	6950 6550 6950 4350
Wire Notes Line
	6950 4350 4650 4350
Text Notes 4650 4300 0    50   ~ 0
left hand
$Comp
L akizukit:ESP32 U?
U 1 1 5F57394A
P 9300 2000
AR Path="/5F57394A" Ref="U?"  Part="1" 
AR Path="/5F548F89/5F57394A" Ref="U?"  Part="1" 
F 0 "U?" H 9300 2947 60  0000 C CNN
F 1 "ESP32" H 9300 2841 60  0000 C CNN
F 2 "akizukit:ESP-WROOM-32" H 9300 1600 60  0001 C CNN
F 3 "" H 9300 1600 60  0001 C CNN
	1    9300 2000
	1    0    0    -1  
$EndComp
NoConn ~ 9650 3100
NoConn ~ 10150 2600
NoConn ~ 10150 2500
Text Label 10150 2200 0    60   ~ 0
c2
Text Label 10150 2300 0    60   ~ 0
r2
Text Label 10150 2400 0    60   ~ 0
r4
Wire Wire Line
	9900 3100 9750 3100
Text Label 9900 3100 0    60   ~ 0
c1
NoConn ~ 9550 3100
NoConn ~ 9450 3100
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F57395A
P 9750 3250
AR Path="/5F57395A" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F57395A" Ref="R?"  Part="1" 
F 0 "R?" V 9830 3250 50  0000 C CNN
F 1 "1k" V 9750 3250 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 9680 3250 50  0001 C CNN
F 3 "" H 9750 3250 50  0000 C CNN
	1    9750 3250
	1    0    0    -1  
$EndComp
Connection ~ 4450 2700
Connection ~ 5900 1550
Connection ~ 6450 1900
Wire Wire Line
	6450 1900 7000 1900
Connection ~ 7000 1550
Wire Wire Line
	7000 1550 7250 1550
Connection ~ 7250 1550
Wire Wire Line
	7250 1550 7350 1550
$Comp
L Regulator_Linear:AMS1117-1.5 U?
U 1 1 5F573969
P 6450 1550
AR Path="/5F573969" Ref="U?"  Part="1" 
AR Path="/5F548F89/5F573969" Ref="U?"  Part="1" 
F 0 "U?" H 6450 1792 50  0000 C CNN
F 1 "AMS1117-1.5" H 6450 1701 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6450 1750 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 6550 1300 50  0001 C CNN
	1    6450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1550 6150 1550
Wire Wire Line
	6450 1900 6450 1850
Wire Wire Line
	6750 1550 7000 1550
Text Label 9500 4150 3    50   ~ 0
GND
Text Label 9050 4150 3    50   ~ 0
Vcc
Text Label 4800 1350 0    50   ~ 0
Vcc
Wire Wire Line
	4800 1350 4800 1450
Connection ~ 4800 1450
Text Label 4800 1650 0    50   ~ 0
GND
Text Label 1950 2100 1    50   ~ 0
GND
Text Label 7350 1550 0    50   ~ 0
3v3
Text Label 7600 2550 0    50   ~ 0
3v3
Text Label 6450 2550 0    50   ~ 0
3v3
Text Label 8000 1400 2    50   ~ 0
3v3
Connection ~ 9750 3100
Wire Wire Line
	4800 1900 5900 1900
Wire Wire Line
	4800 1550 4800 1900
Connection ~ 5900 1900
Text Label 5650 2550 2    50   ~ 0
GND
Text Label 6800 2550 2    50   ~ 0
GND
Text Label 4850 6200 2    50   ~ 0
GND
Text Label 8850 3100 3    50   ~ 0
GND
Text Label 9750 3400 3    50   ~ 0
GND
Text Label 10150 1300 0    50   ~ 0
GND
Text Label 8450 1300 1    50   ~ 0
GND
Text Label 2450 2100 1    50   ~ 0
3v3
$EndSCHEMATC
