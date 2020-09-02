EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L Switch:SW_Push SW?
U 1 1 5F55B98A
P 8900 2450
AR Path="/5F55B98A" Ref="SW?"  Part="1" 
AR Path="/5F548958/5F55B98A" Ref="SW?"  Part="1" 
F 0 "SW?" H 8900 2735 50  0000 C CNN
F 1 "SW_Push" H 8900 2644 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 8900 2650 50  0001 C CNN
F 3 "~" H 8900 2650 50  0001 C CNN
	1    8900 2450
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F55B990
P 8450 2450
AR Path="/5F55B990" Ref="R?"  Part="1" 
AR Path="/5F548958/5F55B990" Ref="R?"  Part="1" 
F 0 "R?" V 8530 2450 50  0000 C CNN
F 1 "1k" V 8450 2450 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8380 2450 50  0001 C CNN
F 3 "" H 8450 2450 50  0000 C CNN
	1    8450 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 2350 8650 2450
Wire Wire Line
	8650 2450 8600 2450
Wire Wire Line
	8700 2450 8650 2450
Connection ~ 8650 2450
Wire Wire Line
	9100 2450 9100 2800
$Comp
L Switch:SW_Push SW?
U 1 1 5F55B9A7
P 8900 2800
AR Path="/5F55B9A7" Ref="SW?"  Part="1" 
AR Path="/5F548958/5F55B9A7" Ref="SW?"  Part="1" 
F 0 "SW?" H 8900 3085 50  0000 C CNN
F 1 "SW_Push" H 8900 2994 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 8900 3000 50  0001 C CNN
F 3 "~" H 8900 3000 50  0001 C CNN
	1    8900 2800
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F55B9AD
P 8450 2800
AR Path="/5F55B9AD" Ref="R?"  Part="1" 
AR Path="/5F548958/5F55B9AD" Ref="R?"  Part="1" 
F 0 "R?" V 8530 2800 50  0000 C CNN
F 1 "1k" V 8450 2800 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8380 2800 50  0001 C CNN
F 3 "" H 8450 2800 50  0000 C CNN
	1    8450 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 2700 8650 2800
Wire Wire Line
	8650 2800 8600 2800
Wire Wire Line
	8700 2800 8650 2800
Connection ~ 8650 2800
Wire Wire Line
	8450 1600 8600 1600
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F55B9B8
P 8750 1600
AR Path="/5F55B9B8" Ref="R?"  Part="1" 
AR Path="/5F548958/5F55B9B8" Ref="R?"  Part="1" 
F 0 "R?" V 8830 1600 50  0000 C CNN
F 1 "100" V 8750 1600 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8680 1600 50  0001 C CNN
F 3 "" H 8750 1600 50  0000 C CNN
	1    8750 1600
	0    1    1    0   
$EndComp
Text Label 8900 1600 0    60   ~ 0
jy
Wire Wire Line
	8300 2350 8300 2450
Connection ~ 8300 2450
Wire Wire Line
	8300 2450 8300 2800
$Comp
L Device:R_POT RV?
U 1 1 5F55B9C2
P 8450 1750
AR Path="/5F55B9C2" Ref="RV?"  Part="1" 
AR Path="/5F548958/5F55B9C2" Ref="RV?"  Part="1" 
F 0 "RV?" V 8335 1750 50  0000 C CNN
F 1 "R_POT" V 8244 1750 50  0000 C CNN
F 2 "akizukit:S_POT_SMD" H 8450 1750 50  0001 C CNN
F 3 "~" H 8450 1750 50  0001 C CNN
	1    8450 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8450 1200 8600 1200
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F55B9CF
P 8750 1200
AR Path="/5F55B9CF" Ref="R?"  Part="1" 
AR Path="/5F548958/5F55B9CF" Ref="R?"  Part="1" 
F 0 "R?" V 8830 1200 50  0000 C CNN
F 1 "100" V 8750 1200 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8680 1200 50  0001 C CNN
F 3 "" H 8750 1200 50  0000 C CNN
	1    8750 1200
	0    1    1    0   
$EndComp
Text Label 8900 1200 0    60   ~ 0
jx
$Comp
L Device:R_POT RV?
U 1 1 5F55B9D6
P 8450 1350
AR Path="/5F55B9D6" Ref="RV?"  Part="1" 
AR Path="/5F548958/5F55B9D6" Ref="RV?"  Part="1" 
F 0 "RV?" V 8335 1350 50  0000 C CNN
F 1 "R_POT" V 8244 1350 50  0000 C CNN
F 2 "akizukit:S_POT_SMD" H 8450 1350 50  0001 C CNN
F 3 "~" H 8450 1350 50  0001 C CNN
	1    8450 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8300 1350 8300 1750
Wire Wire Line
	9000 1350 9000 1750
Text Notes 8300 1050 0    50   ~ 0
joy stick
Wire Wire Line
	8600 1350 9000 1350
Wire Wire Line
	8600 1750 9000 1750
Wire Wire Line
	8300 1350 8200 1350
Wire Wire Line
	8200 1350 8200 1300
Connection ~ 8300 1350
Text Label 8650 2350 2    60   ~ 0
enter
Text Label 8650 3050 2    60   ~ 0
back
Text Label 8650 2700 2    60   ~ 0
conv
$Comp
L Switch:SW_Push SW?
U 1 1 5F55B9E8
P 8900 3150
AR Path="/5F55B9E8" Ref="SW?"  Part="1" 
AR Path="/5F548958/5F55B9E8" Ref="SW?"  Part="1" 
F 0 "SW?" H 8900 3435 50  0000 C CNN
F 1 "SW_Push" H 8900 3344 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 8900 3350 50  0001 C CNN
F 3 "~" H 8900 3350 50  0001 C CNN
	1    8900 3150
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F55B9EE
P 8450 3150
AR Path="/5F55B9EE" Ref="R?"  Part="1" 
AR Path="/5F548958/5F55B9EE" Ref="R?"  Part="1" 
F 0 "R?" V 8530 3150 50  0000 C CNN
F 1 "1k" V 8450 3150 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8380 3150 50  0001 C CNN
F 3 "" H 8450 3150 50  0000 C CNN
	1    8450 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 3050 8650 3150
Wire Wire Line
	8650 3150 8600 3150
Wire Wire Line
	8700 3150 8650 3150
Connection ~ 8650 3150
Wire Wire Line
	8300 2800 8300 3150
Wire Wire Line
	9100 2800 9100 3150
Connection ~ 9100 2800
Wire Notes Line
	8050 4000 9300 4000
Wire Notes Line
	9300 3400 9300 950 
Wire Notes Line
	9300 950  8050 950 
Wire Notes Line
	8050 950  8050 3400
Text Notes 8050 900  0    50   ~ 0
right hand
Connection ~ 8300 2800
$Comp
L Hyper_Board_Traser-rescue:C C?
U 1 1 5F58957F
P 1850 1250
AR Path="/5F58957F" Ref="C?"  Part="1" 
AR Path="/5F548958/5F58957F" Ref="C?"  Part="1" 
F 0 "C?" H 1875 1350 50  0000 L CNN
F 1 "0.1u" H 1875 1150 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 1888 1100 50  0001 C CNN
F 3 "" H 1850 1250 50  0000 C CNN
	1    1850 1250
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:CP C?
U 1 1 5F589585
P 2950 1250
AR Path="/5F589585" Ref="C?"  Part="1" 
AR Path="/5F548958/5F589585" Ref="C?"  Part="1" 
F 0 "C?" H 2975 1350 50  0000 L CNN
F 1 "100u" H 2975 1150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 2988 1100 50  0001 C CNN
F 3 "" H 2950 1250 50  0000 C CNN
	1    2950 1250
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:GND #PWR?
U 1 1 5F58958B
P 2400 1450
AR Path="/5F58958B" Ref="#PWR?"  Part="1" 
AR Path="/5F548958/5F58958B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2400 1200 50  0001 C CNN
F 1 "GND" H 2400 1300 50  0000 C CNN
F 2 "" H 2400 1450 50  0000 C CNN
F 3 "" H 2400 1450 50  0000 C CNN
	1    2400 1450
	1    0    0    -1  
$EndComp
NoConn ~ 1600 900 
$Comp
L Hyper_Board_Traser-rescue:CONN_01X02 P?
U 1 1 5F589592
P 900 1050
AR Path="/5F589592" Ref="P?"  Part="1" 
AR Path="/5F548958/5F589592" Ref="P?"  Part="1" 
F 0 "P?" H 900 1200 50  0000 C CNN
F 1 "CONN_01X02" V 1000 1050 50  0000 C CNN
F 2 "akizukit:Connector_EH_2pin" H 900 1050 50  0001 C CNN
F 3 "" H 900 1050 50  0000 C CNN
	1    900  1050
	-1   0    0    1   
$EndComp
$Comp
L Hyper_Board_Traser-rescue:PWR_FLAG #FLG?
U 1 1 5F5895A4
P 10400 950
AR Path="/5F5895A4" Ref="#FLG?"  Part="1" 
AR Path="/5F548958/5F5895A4" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 10400 1045 50  0001 C CNN
F 1 "PWR_FLAG" H 10400 1130 50  0000 C CNN
F 2 "" H 10400 950 50  0000 C CNN
F 3 "" H 10400 950 50  0000 C CNN
	1    10400 950 
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:PWR_FLAG #FLG?
U 1 1 5F5895AA
P 10850 950
AR Path="/5F5895AA" Ref="#FLG?"  Part="1" 
AR Path="/5F548958/5F5895AA" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 10850 1045 50  0001 C CNN
F 1 "PWR_FLAG" H 10850 1130 50  0000 C CNN
F 2 "" H 10850 950 50  0000 C CNN
F 3 "" H 10850 950 50  0000 C CNN
	1    10850 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1400 1850 1450
Wire Wire Line
	2950 1450 2950 1400
Wire Wire Line
	1100 1000 1200 1000
$Comp
L Hyper_Board_Traser-rescue:C C?
U 1 1 5F5895C0
P 3200 1250
AR Path="/5F5895C0" Ref="C?"  Part="1" 
AR Path="/5F548958/5F5895C0" Ref="C?"  Part="1" 
F 0 "C?" H 3225 1350 50  0000 L CNN
F 1 "0.1u" H 3225 1150 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 3238 1100 50  0001 C CNN
F 3 "" H 3200 1250 50  0000 C CNN
	1    3200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1400 3200 1450
Wire Wire Line
	3200 1450 2950 1450
Connection ~ 2950 1450
$Comp
L Switch:SW_SPDT SW?
U 1 1 5F5895C9
P 1400 1000
AR Path="/5F5895C9" Ref="SW?"  Part="1" 
AR Path="/5F548958/5F5895C9" Ref="SW?"  Part="1" 
F 0 "SW?" H 1400 1285 50  0000 C CNN
F 1 "SW_SPDT" H 1400 1194 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1400 1000 50  0001 C CNN
F 3 "~" H 1400 1000 50  0001 C CNN
	1    1400 1000
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:C C?
U 1 1 5F5895D6
P 5100 950
AR Path="/5F5895D6" Ref="C?"  Part="1" 
AR Path="/5F548958/5F5895D6" Ref="C?"  Part="1" 
F 0 "C?" H 5125 1050 50  0000 L CNN
F 1 "0.1u" H 5125 850 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 5138 800 50  0001 C CNN
F 3 "" H 5100 950 50  0000 C CNN
	1    5100 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 950  4950 1050
Connection ~ 4950 1050
Wire Wire Line
	4950 1050 4700 1050
Text Label 1100 2150 2    60   ~ 0
DTR
Text Label 1100 2650 2    60   ~ 0
RTS
NoConn ~ 5850 2750
NoConn ~ 5950 2750
NoConn ~ 6050 2750
NoConn ~ 6150 2750
$Comp
L Switch:SW_Push SW?
U 1 1 5F5895FD
P 2800 2100
AR Path="/5F5895FD" Ref="SW?"  Part="1" 
AR Path="/5F548958/5F5895FD" Ref="SW?"  Part="1" 
F 0 "SW?" H 2800 2385 50  0000 C CNN
F 1 "SW_Push" H 2800 2294 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 2800 2300 50  0001 C CNN
F 3 "~" H 2800 2300 50  0001 C CNN
	1    2800 2100
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F589603
P 3150 2100
AR Path="/5F589603" Ref="R?"  Part="1" 
AR Path="/5F548958/5F589603" Ref="R?"  Part="1" 
F 0 "R?" V 3230 2100 50  0000 C CNN
F 1 "1k" V 3150 2100 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 3080 2100 50  0001 C CNN
F 3 "" H 3150 2100 50  0000 C CNN
	1    3150 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 2100 2500 2100
$Comp
L Hyper_Board_Traser-rescue:C C?
U 1 1 5F589616
P 2800 2300
AR Path="/5F589616" Ref="C?"  Part="1" 
AR Path="/5F548958/5F589616" Ref="C?"  Part="1" 
F 0 "C?" H 2825 2400 50  0000 L CNN
F 1 "0.1u" H 2825 2200 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 2838 2150 50  0001 C CNN
F 3 "" H 2800 2300 50  0000 C CNN
	1    2800 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 2300 2600 2300
Wire Wire Line
	2600 2300 2600 2100
Connection ~ 2600 2100
Wire Wire Line
	3000 2100 3000 2300
Wire Wire Line
	3000 2300 2950 2300
Connection ~ 3000 2100
Text Label 3000 2000 0    60   ~ 0
IO0
Wire Wire Line
	3000 2000 3000 2100
$Comp
L Switch:SW_Push SW?
U 1 1 5F589624
P 2800 2850
AR Path="/5F589624" Ref="SW?"  Part="1" 
AR Path="/5F548958/5F589624" Ref="SW?"  Part="1" 
F 0 "SW?" H 2800 3135 50  0000 C CNN
F 1 "SW_Push" H 2800 3044 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 2800 3050 50  0001 C CNN
F 3 "~" H 2800 3050 50  0001 C CNN
	1    2800 2850
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F58962A
P 3150 2850
AR Path="/5F58962A" Ref="R?"  Part="1" 
AR Path="/5F548958/5F58962A" Ref="R?"  Part="1" 
F 0 "R?" V 3230 2850 50  0000 C CNN
F 1 "1k" V 3150 2850 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 3080 2850 50  0001 C CNN
F 3 "" H 3150 2850 50  0000 C CNN
	1    3150 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 2850 2500 2850
$Comp
L Hyper_Board_Traser-rescue:C C?
U 1 1 5F58963D
P 2800 3050
AR Path="/5F58963D" Ref="C?"  Part="1" 
AR Path="/5F548958/5F58963D" Ref="C?"  Part="1" 
F 0 "C?" H 2825 3150 50  0000 L CNN
F 1 "0.1u" H 2825 2950 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 2838 2900 50  0001 C CNN
F 3 "" H 2800 3050 50  0000 C CNN
	1    2800 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 3050 2600 3050
Wire Wire Line
	2600 3050 2600 2850
Connection ~ 2600 2850
Wire Wire Line
	3000 2850 3000 3050
Wire Wire Line
	3000 3050 2950 3050
Connection ~ 3000 2850
Text Label 3000 2750 0    60   ~ 0
EN
Wire Wire Line
	3000 2750 3000 2850
Text Label 5250 1150 2    60   ~ 0
EN
Text Label 1750 2950 0    60   ~ 0
IO0
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 5F58964D
P 1650 2150
AR Path="/5F58964D" Ref="Q?"  Part="1" 
AR Path="/5F548958/5F58964D" Ref="Q?"  Part="1" 
F 0 "Q?" H 1840 2196 50  0000 L CNN
F 1 "2SC1815" H 1840 2105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1850 2075 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 1650 2150 50  0001 L CNN
	1    1650 2150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 5F589653
P 1650 2650
AR Path="/5F589653" Ref="Q?"  Part="1" 
AR Path="/5F548958/5F589653" Ref="Q?"  Part="1" 
F 0 "Q?" H 1840 2696 50  0000 L CNN
F 1 "2SC1815" H 1840 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1850 2575 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 1650 2650 50  0001 L CNN
	1    1650 2650
	1    0    0    -1  
$EndComp
Text Label 1750 1950 0    60   ~ 0
EN
Wire Wire Line
	1750 2850 1750 2950
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F58965B
P 1300 2150
AR Path="/5F58965B" Ref="R?"  Part="1" 
AR Path="/5F548958/5F58965B" Ref="R?"  Part="1" 
F 0 "R?" V 1380 2150 50  0000 C CNN
F 1 "1k" V 1300 2150 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 1230 2150 50  0001 C CNN
F 3 "" H 1300 2150 50  0000 C CNN
	1    1300 2150
	0    1    1    0   
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F589661
P 1300 2650
AR Path="/5F589661" Ref="R?"  Part="1" 
AR Path="/5F548958/5F589661" Ref="R?"  Part="1" 
F 0 "R?" V 1380 2650 50  0000 C CNN
F 1 "1k" V 1300 2650 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 1230 2650 50  0001 C CNN
F 3 "" H 1300 2650 50  0000 C CNN
	1    1300 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 2650 1100 2650
Wire Wire Line
	1100 2150 1150 2150
Wire Wire Line
	1100 2150 1100 2450
Wire Wire Line
	1100 2450 1750 2450
Wire Wire Line
	1750 2350 1150 2350
Wire Wire Line
	1150 2350 1150 2650
Text Label 6950 1950 0    60   ~ 0
back
Text Label 6950 2050 0    60   ~ 0
conv
Text Label 6950 2150 0    60   ~ 0
enter
Text Label 5250 1450 2    60   ~ 0
jx
NoConn ~ 6950 1550
Wire Wire Line
	1600 1100 1850 1100
Wire Wire Line
	1850 1450 2400 1450
Text Label 5250 1550 2    60   ~ 0
jy
NoConn ~ 6350 2750
NoConn ~ 6250 2750
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F58974D
P 6550 2900
AR Path="/5F58974D" Ref="R?"  Part="1" 
AR Path="/5F548958/5F58974D" Ref="R?"  Part="1" 
F 0 "R?" V 6630 2900 50  0000 C CNN
F 1 "1k" V 6550 2900 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 6480 2900 50  0001 C CNN
F 3 "" H 6550 2900 50  0000 C CNN
	1    6550 2900
	1    0    0    -1  
$EndComp
Connection ~ 1150 2650
Connection ~ 1850 1100
Connection ~ 2400 1450
Wire Wire Line
	2400 1450 2950 1450
Connection ~ 2950 1100
Wire Wire Line
	2950 1100 3200 1100
Connection ~ 3200 1100
Wire Wire Line
	3200 1100 3300 1100
$Comp
L Regulator_Linear:AMS1117-1.5 U?
U 1 1 5F58975C
P 2400 1100
AR Path="/5F58975C" Ref="U?"  Part="1" 
AR Path="/5F548958/5F58975C" Ref="U?"  Part="1" 
F 0 "U?" H 2400 1342 50  0000 C CNN
F 1 "AMS1117-1.5" H 2400 1251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2400 1300 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2500 850 50  0001 C CNN
	1    2400 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1100 2100 1100
Wire Wire Line
	2400 1450 2400 1400
Wire Wire Line
	2700 1100 2950 1100
$Comp
L Hyper_Board_Traser-rescue:CONN_01X06 P?
U 1 1 5F5DD4A1
P 1300 3750
AR Path="/5F5DD4A1" Ref="P?"  Part="1" 
AR Path="/5F548F89/5F5DD4A1" Ref="P?"  Part="1" 
AR Path="/5F548958/5F5DD4A1" Ref="P?"  Part="1" 
F 0 "P?" H 1300 4100 50  0000 C CNN
F 1 "CONN_01X06" V 1400 3750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1300 3750 50  0001 C CNN
F 3 "" H 1300 3750 50  0000 C CNN
	1    1300 3750
	0    1    1    0   
$EndComp
Text Label 1150 3550 1    60   ~ 0
DTR
Text Label 1250 3550 1    60   ~ 0
RTS
Text Label 1350 3550 1    60   ~ 0
TXD
Text Label 1450 3550 1    60   ~ 0
RXD
Text Notes 1000 4000 0    60   ~ 0
ROBOX_Writer
Text Label 1050 3550 1    50   ~ 0
GND
Text Label 1550 3550 1    50   ~ 0
3v3
Text Label 5250 950  1    50   ~ 0
GND
Text Label 6950 950  0    50   ~ 0
GND
Text Label 6550 3050 3    50   ~ 0
GND
Text Label 5650 2750 3    50   ~ 0
GND
Text Label 2500 2850 2    50   ~ 0
GND
Text Label 2500 2100 2    50   ~ 0
GND
Text Label 1100 1450 2    50   ~ 0
GND
Text Label 10850 950  3    50   ~ 0
GND
Text Label 9000 1750 0    50   ~ 0
GND
Text Label 8200 1300 2    50   ~ 0
3v3
Text Label 8300 2350 2    50   ~ 0
3v3
Text Label 4800 1050 2    50   ~ 0
3v3
Text Label 3300 1100 0    50   ~ 0
3v3
Text Label 1100 900  2    50   ~ 0
Vcc
Text Label 10400 950  3    50   ~ 0
Vcc
Wire Wire Line
	1850 1450 1100 1450
Connection ~ 1850 1450
Wire Wire Line
	1100 1100 1100 1450
Wire Wire Line
	1100 900  1100 1000
Connection ~ 1100 1000
Text Label 3300 2100 0    50   ~ 0
3v3
Text Label 3300 2850 0    50   ~ 0
3v3
$Comp
L akizukit:ESP32 U?
U 1 1 5F58973D
P 6100 1650
AR Path="/5F58973D" Ref="U?"  Part="1" 
AR Path="/5F548958/5F58973D" Ref="U?"  Part="1" 
F 0 "U?" H 6100 2597 60  0000 C CNN
F 1 "ESP32" H 6100 2491 60  0000 C CNN
F 2 "akizukit:ESP-WROOM-32" H 6100 1250 60  0001 C CNN
F 3 "" H 6100 1250 60  0001 C CNN
	1    6100 1650
	1    0    0    -1  
$EndComp
Text Label 6950 2250 0    60   ~ 0
IO0
Text Label 6950 1350 0    60   ~ 0
TXD
Text Label 6950 1250 0    60   ~ 0
RXD
Wire Wire Line
	4950 1050 5250 1050
Text Label 5750 2750 3    50   ~ 0
LEDs
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F603342
P 4250 3200
AR Path="/5F603342" Ref="R?"  Part="1" 
AR Path="/5F548958/5F603342" Ref="R?"  Part="1" 
F 0 "R?" V 4330 3200 50  0000 C CNN
F 1 "1k" V 4250 3200 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4180 3200 50  0001 C CNN
F 3 "" H 4250 3200 50  0000 C CNN
	1    4250 3200
	0    1    1    0   
$EndComp
$Comp
L Device:Speaker LS?
U 1 1 5F603979
P 4600 3650
F 0 "LS?" H 4770 3646 50  0000 L CNN
F 1 "Speaker" H 4770 3555 50  0000 L CNN
F 2 "" H 4600 3450 50  0001 C CNN
F 3 "~" H 4590 3600 50  0001 C CNN
	1    4600 3650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 5F604330
P 4300 4100
AR Path="/5F604330" Ref="Q?"  Part="1" 
AR Path="/5F548958/5F604330" Ref="Q?"  Part="1" 
F 0 "Q?" H 4490 4146 50  0000 L CNN
F 1 "2SC1815" H 4490 4055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4500 4025 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 4300 4100 50  0001 L CNN
	1    4300 4100
	1    0    0    -1  
$EndComp
Text Label 4400 4300 3    50   ~ 0
GND
Text Label 4100 3200 2    50   ~ 0
3v3
$Comp
L pspice:DIODE D?
U 1 1 5F604E8A
P 4250 3550
F 0 "D?" V 4300 3750 50  0000 R CNN
F 1 "DIODE" V 4200 3900 50  0000 R CNN
F 2 "" H 4250 3550 50  0001 C CNN
F 3 "~" H 4250 3550 50  0001 C CNN
	1    4250 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 3350 4400 3350
Wire Wire Line
	4400 3350 4400 3200
Wire Wire Line
	4400 3350 4400 3650
Connection ~ 4400 3350
Wire Wire Line
	4250 3750 4400 3750
Wire Wire Line
	4400 3750 4400 3900
Connection ~ 4400 3750
Text Label 5250 1850 2    50   ~ 0
spk
Text Label 4100 4100 2    50   ~ 0
spk
$Comp
L LED:WS2812B D?
U 1 1 5F614148
P 5800 4550
F 0 "D?" H 6144 4596 50  0000 L CNN
F 1 "WS2812B" H 6144 4505 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 5850 4250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5900 4175 50  0001 L TNN
	1    5800 4550
	1    0    0    -1  
$EndComp
Text Label 5500 4550 2    50   ~ 0
LEDs
Text Label 5800 4850 0    50   ~ 0
GND
Text Label 5800 4250 2    50   ~ 0
3v3
$Comp
L LED:WS2812B D?
U 1 1 5F61A3C1
P 6400 4550
F 0 "D?" H 6744 4596 50  0000 L CNN
F 1 "WS2812B" H 6744 4505 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 6450 4250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 6500 4175 50  0001 L TNN
	1    6400 4550
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D?
U 1 1 5F61AB7C
P 7000 4550
F 0 "D?" H 7344 4596 50  0000 L CNN
F 1 "WS2812B" H 7344 4505 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 7050 4250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7100 4175 50  0001 L TNN
	1    7000 4550
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D?
U 1 1 5F61B1C9
P 7600 4550
F 0 "D?" H 7944 4596 50  0000 L CNN
F 1 "WS2812B" H 7944 4505 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 7650 4250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7700 4175 50  0001 L TNN
	1    7600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4850 7000 4850
Connection ~ 6400 4850
Wire Wire Line
	6400 4850 5800 4850
Connection ~ 7000 4850
Wire Wire Line
	7000 4850 6400 4850
Wire Wire Line
	5800 4250 6400 4250
Connection ~ 6400 4250
Wire Wire Line
	6400 4250 7000 4250
Connection ~ 7000 4250
Wire Wire Line
	7000 4250 7600 4250
NoConn ~ 7900 4550
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5F6217D6
P 5000 1250
F 0 "J?" H 5150 1200 50  0000 C CNN
F 1 "Conn_01x01" H 5300 1300 50  0000 C CNN
F 2 "" H 5000 1250 50  0001 C CNN
F 3 "~" H 5000 1250 50  0001 C CNN
	1    5000 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 1250 5250 1250
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5F624EAC
P 4500 1050
F 0 "J?" H 4650 1000 50  0000 C CNN
F 1 "Conn_01x01" H 4800 1100 50  0000 C CNN
F 2 "" H 4500 1050 50  0001 C CNN
F 3 "~" H 4500 1050 50  0001 C CNN
	1    4500 1050
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5F625205
P 7300 950
F 0 "J?" H 7450 900 50  0000 C CNN
F 1 "Conn_01x01" H 7600 1000 50  0000 C CNN
F 2 "" H 7300 950 50  0001 C CNN
F 3 "~" H 7300 950 50  0001 C CNN
	1    7300 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5F632188
P 4850 1350
F 0 "J?" H 5000 1300 50  0000 C CNN
F 1 "Conn_01x01" H 5150 1400 50  0000 C CNN
F 2 "" H 4850 1350 50  0001 C CNN
F 3 "~" H 4850 1350 50  0001 C CNN
	1    4850 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 1350 5050 1350
Text Notes 4150 1300 0    50   ~ 0
sub pin
Text Label 6950 1050 0    50   ~ 0
MOSI
Text Label 6950 1150 0    50   ~ 0
SCL
Text Label 6950 1450 0    50   ~ 0
SDA
Text Label 6950 1650 0    50   ~ 0
MISO
Text Label 6950 1750 0    50   ~ 0
SCK
Text Label 6950 1850 0    50   ~ 0
CS1
Text Label 6450 2750 3    50   ~ 0
CS2
Wire Wire Line
	4800 1950 5250 1950
Wire Wire Line
	5250 2050 4800 2050
Wire Wire Line
	4800 2150 5250 2150
Wire Wire Line
	4800 2250 5250 2250
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5F652193
P 6650 3600
F 0 "J?" H 6600 3900 50  0000 L CNN
F 1 "Conn_01x06" H 6250 3200 50  0000 L CNN
F 2 "" H 6650 3600 50  0001 C CNN
F 3 "~" H 6650 3600 50  0001 C CNN
	1    6650 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5F65265F
P 7150 3600
F 0 "J?" H 7100 3900 50  0000 L CNN
F 1 "Conn_01x06" H 6750 3200 50  0000 L CNN
F 2 "" H 7150 3600 50  0001 C CNN
F 3 "~" H 7150 3600 50  0001 C CNN
	1    7150 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3400 6950 3400
Wire Wire Line
	6950 3500 6450 3500
Wire Wire Line
	6450 3600 6950 3600
Wire Wire Line
	6950 3700 6450 3700
Wire Wire Line
	6450 3800 6950 3800
Text Label 6950 3900 2    50   ~ 0
CS2
Text Label 6450 3900 2    50   ~ 0
CS1
Text Label 6450 3500 2    50   ~ 0
MOSI
Text Label 6050 3500 0    50   ~ 0
SCL
Text Label 6050 3800 0    50   ~ 0
SDA
Text Label 6450 3400 2    50   ~ 0
MISO
Text Label 6450 3800 2    50   ~ 0
SCK
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F6653B2
P 5850 3600
F 0 "J?" H 5768 3917 50  0000 C CNN
F 1 "Conn_01x04" H 5768 3826 50  0000 C CNN
F 2 "" H 5850 3600 50  0001 C CNN
F 3 "~" H 5850 3600 50  0001 C CNN
	1    5850 3600
	-1   0    0    -1  
$EndComp
Text Label 6450 3600 2    50   ~ 0
GND
Text Label 6050 3600 0    50   ~ 0
GND
Text Label 6450 3700 2    50   ~ 0
3v3
Text Label 6050 3700 0    50   ~ 0
3v3
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F672161
P 4600 2050
F 0 "J?" H 4600 2250 50  0000 C CNN
F 1 "Conn_01x04" H 4600 1750 50  0000 C CNN
F 2 "" H 4600 2050 50  0001 C CNN
F 3 "~" H 4600 2050 50  0001 C CNN
	1    4600 2050
	-1   0    0    -1  
$EndComp
Text Label 5250 1650 2    50   ~ 0
button1
Text Label 5250 1750 2    50   ~ 0
button2
Text Label 8650 3400 2    60   ~ 0
button1
$Comp
L Switch:SW_Push SW?
U 1 1 5F69012E
P 8900 3500
AR Path="/5F69012E" Ref="SW?"  Part="1" 
AR Path="/5F548958/5F69012E" Ref="SW?"  Part="1" 
F 0 "SW?" H 8900 3785 50  0000 C CNN
F 1 "SW_Push" H 8900 3694 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 8900 3700 50  0001 C CNN
F 3 "~" H 8900 3700 50  0001 C CNN
	1    8900 3500
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F690134
P 8450 3500
AR Path="/5F690134" Ref="R?"  Part="1" 
AR Path="/5F548958/5F690134" Ref="R?"  Part="1" 
F 0 "R?" V 8530 3500 50  0000 C CNN
F 1 "1k" V 8450 3500 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8380 3500 50  0001 C CNN
F 3 "" H 8450 3500 50  0000 C CNN
	1    8450 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 3400 8650 3500
Wire Wire Line
	8650 3500 8600 3500
Wire Wire Line
	8700 3500 8650 3500
Connection ~ 8650 3500
Wire Wire Line
	8300 3150 8300 3500
Wire Wire Line
	9100 3150 9100 3500
Text Label 8650 3750 2    60   ~ 0
button2
$Comp
L Switch:SW_Push SW?
U 1 1 5F692F04
P 8900 3850
AR Path="/5F692F04" Ref="SW?"  Part="1" 
AR Path="/5F548958/5F692F04" Ref="SW?"  Part="1" 
F 0 "SW?" H 8900 4135 50  0000 C CNN
F 1 "SW_Push" H 8900 4044 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 8900 4050 50  0001 C CNN
F 3 "~" H 8900 4050 50  0001 C CNN
	1    8900 3850
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F692F0A
P 8450 3850
AR Path="/5F692F0A" Ref="R?"  Part="1" 
AR Path="/5F548958/5F692F0A" Ref="R?"  Part="1" 
F 0 "R?" V 8530 3850 50  0000 C CNN
F 1 "1k" V 8450 3850 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8380 3850 50  0001 C CNN
F 3 "" H 8450 3850 50  0000 C CNN
	1    8450 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 3750 8650 3850
Wire Wire Line
	8650 3850 8600 3850
Wire Wire Line
	8700 3850 8650 3850
Connection ~ 8650 3850
Wire Wire Line
	8300 3500 8300 3850
Wire Wire Line
	9100 3500 9100 3850
Text Label 9100 3850 0    50   ~ 0
GND
$EndSCHEMATC
