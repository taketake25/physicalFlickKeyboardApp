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
L Hyper_Board_Traser-rescue:PWR_FLAG #FLG?
U 1 1 5F5737B1
P 9400 3850
AR Path="/5F5737B1" Ref="#FLG?"  Part="1" 
AR Path="/5F548F89/5F5737B1" Ref="#FLG0103"  Part="1" 
F 0 "#FLG0103" H 9400 3945 50  0001 C CNN
F 1 "PWR_FLAG" H 9400 4030 50  0000 C CNN
F 2 "" H 9400 3850 50  0000 C CNN
F 3 "" H 9400 3850 50  0000 C CNN
	1    9400 3850
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:PWR_FLAG #FLG?
U 1 1 5F5737B7
P 9850 3850
AR Path="/5F5737B7" Ref="#FLG?"  Part="1" 
AR Path="/5F548F89/5F5737B7" Ref="#FLG0104"  Part="1" 
F 0 "#FLG0104" H 9850 3945 50  0001 C CNN
F 1 "PWR_FLAG" H 9850 4030 50  0000 C CNN
F 2 "" H 9850 3850 50  0000 C CNN
F 3 "" H 9850 3850 50  0000 C CNN
	1    9850 3850
	1    0    0    -1  
$EndComp
Text Label 5350 1650 2    60   ~ 0
r3
Text Label 5350 1950 2    60   ~ 0
r1
Text Label 10300 1200 2    60   ~ 0
c3
Text Label 9150 2350 2    60   ~ 0
r3
Text Label 9150 1650 2    60   ~ 0
r1
Text Label 9150 2700 2    60   ~ 0
r4
Text Label 9150 2000 2    60   ~ 0
r2
Text Label 9800 1200 2    60   ~ 0
c2
Text Label 9300 1200 2    60   ~ 0
c1
Wire Wire Line
	9150 2000 9150 2100
Wire Wire Line
	9150 2350 9150 2450
Wire Wire Line
	9150 2700 9150 2800
Wire Wire Line
	9150 1650 9150 1750
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738A1
P 10000 2000
AR Path="/5F5738A1" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738A1" Ref="SW17"  Part="1" 
F 0 "SW17" H 10000 2285 50  0000 C CNN
F 1 "SW_Push" H 10000 2194 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 10000 2200 50  0001 C CNN
F 3 "~" H 10000 2200 50  0001 C CNN
	1    10000 2000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738A7
P 10000 2350
AR Path="/5F5738A7" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738A7" Ref="SW18"  Part="1" 
F 0 "SW18" H 10000 2635 50  0000 C CNN
F 1 "SW_Push" H 10000 2544 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 10000 2550 50  0001 C CNN
F 3 "~" H 10000 2550 50  0001 C CNN
	1    10000 2350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738AD
P 10000 1650
AR Path="/5F5738AD" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738AD" Ref="SW16"  Part="1" 
F 0 "SW16" H 10000 1935 50  0000 C CNN
F 1 "SW_Push" H 10000 1844 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 10000 1850 50  0001 C CNN
F 3 "~" H 10000 1850 50  0001 C CNN
	1    10000 1650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738B3
P 10000 2700
AR Path="/5F5738B3" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738B3" Ref="SW19"  Part="1" 
F 0 "SW19" H 10000 2985 50  0000 C CNN
F 1 "SW_Push" H 10000 2894 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 10000 2900 50  0001 C CNN
F 3 "~" H 10000 2900 50  0001 C CNN
	1    10000 2700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738B9
P 10500 2000
AR Path="/5F5738B9" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738B9" Ref="SW21"  Part="1" 
F 0 "SW21" H 10500 2285 50  0000 C CNN
F 1 "SW_Push" H 10500 2194 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 10500 2200 50  0001 C CNN
F 3 "~" H 10500 2200 50  0001 C CNN
	1    10500 2000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738BF
P 10500 2350
AR Path="/5F5738BF" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738BF" Ref="SW22"  Part="1" 
F 0 "SW22" H 10500 2635 50  0000 C CNN
F 1 "SW_Push" H 10500 2544 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 10500 2550 50  0001 C CNN
F 3 "~" H 10500 2550 50  0001 C CNN
	1    10500 2350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738C5
P 10500 1650
AR Path="/5F5738C5" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738C5" Ref="SW20"  Part="1" 
F 0 "SW20" H 10500 1935 50  0000 C CNN
F 1 "SW_Push" H 10500 1844 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 10500 1850 50  0001 C CNN
F 3 "~" H 10500 1850 50  0001 C CNN
	1    10500 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 1650 10700 1750
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738CC
P 10500 2700
AR Path="/5F5738CC" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738CC" Ref="SW23"  Part="1" 
F 0 "SW23" H 10500 2985 50  0000 C CNN
F 1 "SW_Push" H 10500 2894 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 10500 2900 50  0001 C CNN
F 3 "~" H 10500 2900 50  0001 C CNN
	1    10500 2700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738D2
P 9500 2700
AR Path="/5F5738D2" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738D2" Ref="SW15"  Part="1" 
F 0 "SW15" H 9500 2985 50  0000 C CNN
F 1 "SW_Push" H 9500 2894 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 9500 2900 50  0001 C CNN
F 3 "~" H 9500 2900 50  0001 C CNN
	1    9500 2700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738D8
P 9500 1650
AR Path="/5F5738D8" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738D8" Ref="SW12"  Part="1" 
F 0 "SW12" H 9500 1935 50  0000 C CNN
F 1 "SW_Push" H 9500 1844 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 9500 1850 50  0001 C CNN
F 3 "~" H 9500 1850 50  0001 C CNN
	1    9500 1650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738DE
P 9500 2350
AR Path="/5F5738DE" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738DE" Ref="SW14"  Part="1" 
F 0 "SW14" H 9500 2635 50  0000 C CNN
F 1 "SW_Push" H 9500 2544 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 9500 2550 50  0001 C CNN
F 3 "~" H 9500 2550 50  0001 C CNN
	1    9500 2350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F5738E4
P 9500 2000
AR Path="/5F5738E4" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F5738E4" Ref="SW13"  Part="1" 
F 0 "SW13" H 9500 2285 50  0000 C CNN
F 1 "SW_Push" H 9500 2194 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 9500 2200 50  0001 C CNN
F 3 "~" H 9500 2200 50  0001 C CNN
	1    9500 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1750 9700 1750
Wire Wire Line
	9700 1650 9700 1750
Connection ~ 9700 1750
Wire Wire Line
	9700 1750 10200 1750
Wire Wire Line
	10200 1650 10200 1750
Connection ~ 10200 1750
Wire Wire Line
	10200 1750 10700 1750
Wire Wire Line
	10700 2000 10700 2100
Wire Wire Line
	9150 2100 9700 2100
Wire Wire Line
	9700 2000 9700 2100
Connection ~ 9700 2100
Wire Wire Line
	9700 2100 10200 2100
Wire Wire Line
	10200 2000 10200 2100
Connection ~ 10200 2100
Wire Wire Line
	10200 2100 10700 2100
Wire Wire Line
	10700 2350 10700 2450
Wire Wire Line
	9150 2450 9700 2450
Wire Wire Line
	9700 2350 9700 2450
Connection ~ 9700 2450
Wire Wire Line
	9700 2450 10200 2450
Wire Wire Line
	10200 2350 10200 2450
Connection ~ 10200 2450
Wire Wire Line
	10200 2450 10700 2450
Wire Wire Line
	10700 2700 10700 2800
Wire Wire Line
	9150 2800 9700 2800
Wire Wire Line
	9700 2700 9700 2800
Connection ~ 9700 2800
Wire Wire Line
	9700 2800 10200 2800
Wire Wire Line
	10200 2700 10200 2800
Connection ~ 10200 2800
Wire Wire Line
	10200 2800 10700 2800
Wire Wire Line
	10300 1200 10300 1650
Wire Wire Line
	10300 1650 10300 2000
Connection ~ 10300 1650
Wire Wire Line
	10300 2000 10300 2350
Connection ~ 10300 2000
Wire Wire Line
	10300 2350 10300 2700
Connection ~ 10300 2350
Wire Wire Line
	9300 1200 9300 1650
Wire Wire Line
	9300 1650 9300 2000
Connection ~ 9300 1650
Wire Wire Line
	9300 2000 9300 2350
Connection ~ 9300 2000
Wire Wire Line
	9300 2350 9300 2700
Connection ~ 9300 2350
Wire Wire Line
	9800 1200 9800 1650
Wire Wire Line
	9800 1650 9800 2000
Connection ~ 9800 1650
Wire Wire Line
	9800 2000 9800 2350
Connection ~ 9800 2000
Wire Wire Line
	9800 2350 9800 2700
Connection ~ 9800 2350
Wire Wire Line
	8800 2450 8800 2800
Connection ~ 8800 2450
Wire Wire Line
	8800 2100 8800 2450
Connection ~ 8800 2100
Wire Wire Line
	8800 1750 8800 2100
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F573923
P 8950 1750
AR Path="/5F573923" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F573923" Ref="R20"  Part="1" 
F 0 "R20" V 9030 1750 50  0000 C CNN
F 1 "1k" V 8950 1750 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8880 1750 50  0001 C CNN
F 3 "" H 8950 1750 50  0000 C CNN
	1    8950 1750
	0    1    1    0   
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F573929
P 8950 2800
AR Path="/5F573929" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F573929" Ref="R23"  Part="1" 
F 0 "R23" V 9030 2800 50  0000 C CNN
F 1 "1k" V 8950 2800 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8880 2800 50  0001 C CNN
F 3 "" H 8950 2800 50  0000 C CNN
	1    8950 2800
	0    1    1    0   
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F57392F
P 8950 2450
AR Path="/5F57392F" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F57392F" Ref="R22"  Part="1" 
F 0 "R22" V 9030 2450 50  0000 C CNN
F 1 "1k" V 8950 2450 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8880 2450 50  0001 C CNN
F 3 "" H 8950 2450 50  0000 C CNN
	1    8950 2450
	0    1    1    0   
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F573935
P 8950 2100
AR Path="/5F573935" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F573935" Ref="R21"  Part="1" 
F 0 "R21" V 9030 2100 50  0000 C CNN
F 1 "1k" V 8950 2100 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8880 2100 50  0001 C CNN
F 3 "" H 8950 2100 50  0000 C CNN
	1    8950 2100
	0    1    1    0   
$EndComp
Connection ~ 9150 2800
Wire Wire Line
	9150 2800 9100 2800
Connection ~ 9150 2450
Wire Wire Line
	9150 2450 9100 2450
Connection ~ 9150 1750
Wire Wire Line
	9150 1750 9100 1750
Connection ~ 9150 2100
Wire Wire Line
	9150 2100 9100 2100
Wire Wire Line
	8800 2800 8750 2800
Connection ~ 8800 2800
Wire Notes Line
	8550 950  8550 3150
Wire Notes Line
	8550 3150 10850 3150
Wire Notes Line
	10850 3150 10850 950 
Wire Notes Line
	10850 950  8550 950 
Text Notes 8550 900  0    50   ~ 0
left hand
Text Label 7050 2050 0    60   ~ 0
c2
Text Label 5350 2050 2    60   ~ 0
r2
Text Label 5350 1750 2    60   ~ 0
r4
Text Label 7050 2150 0    60   ~ 0
c1
Text Label 9850 3850 3    50   ~ 0
GND
Text Label 9400 3850 3    50   ~ 0
Vcc
Text Label 8750 2800 2    50   ~ 0
GND
$Comp
L Hyper_Board_Traser-rescue:C C?
U 1 1 5F6D52FC
P 1950 1250
AR Path="/5F6D52FC" Ref="C?"  Part="1" 
AR Path="/5F548958/5F6D52FC" Ref="C?"  Part="1" 
AR Path="/5F548F89/5F6D52FC" Ref="C7"  Part="1" 
F 0 "C7" H 1975 1350 50  0000 L CNN
F 1 "0.1u" H 1975 1150 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 1988 1100 50  0001 C CNN
F 3 "" H 1950 1250 50  0000 C CNN
	1    1950 1250
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:CP C?
U 1 1 5F6D5302
P 3050 1250
AR Path="/5F6D5302" Ref="C?"  Part="1" 
AR Path="/5F548958/5F6D5302" Ref="C?"  Part="1" 
AR Path="/5F548F89/5F6D5302" Ref="C10"  Part="1" 
F 0 "C10" H 3075 1350 50  0000 L CNN
F 1 "100u" H 3075 1150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 3088 1100 50  0001 C CNN
F 3 "" H 3050 1250 50  0000 C CNN
	1    3050 1250
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:GND #PWR?
U 1 1 5F6D5308
P 2500 1450
AR Path="/5F6D5308" Ref="#PWR?"  Part="1" 
AR Path="/5F548958/5F6D5308" Ref="#PWR?"  Part="1" 
AR Path="/5F548F89/5F6D5308" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 2500 1200 50  0001 C CNN
F 1 "GND" H 2500 1300 50  0000 C CNN
F 2 "" H 2500 1450 50  0000 C CNN
F 3 "" H 2500 1450 50  0000 C CNN
	1    2500 1450
	1    0    0    -1  
$EndComp
NoConn ~ 1700 900 
$Comp
L Hyper_Board_Traser-rescue:CONN_01X02 P?
U 1 1 5F6D530F
P 1000 1050
AR Path="/5F6D530F" Ref="P?"  Part="1" 
AR Path="/5F548958/5F6D530F" Ref="P?"  Part="1" 
AR Path="/5F548F89/5F6D530F" Ref="P3"  Part="1" 
F 0 "P3" H 1000 1200 50  0000 C CNN
F 1 "CONN_01X02" V 1100 1050 50  0000 C CNN
F 2 "akizukit:Connector_EH_2pin" H 1000 1050 50  0001 C CNN
F 3 "" H 1000 1050 50  0000 C CNN
	1    1000 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 1400 1950 1450
Wire Wire Line
	3050 1450 3050 1400
Wire Wire Line
	1200 1000 1300 1000
$Comp
L Hyper_Board_Traser-rescue:C C?
U 1 1 5F6D5324
P 3300 1250
AR Path="/5F6D5324" Ref="C?"  Part="1" 
AR Path="/5F548958/5F6D5324" Ref="C?"  Part="1" 
AR Path="/5F548F89/5F6D5324" Ref="C11"  Part="1" 
F 0 "C11" H 3325 1350 50  0000 L CNN
F 1 "0.1u" H 3325 1150 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 3338 1100 50  0001 C CNN
F 3 "" H 3300 1250 50  0000 C CNN
	1    3300 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1400 3300 1450
Wire Wire Line
	3300 1450 3050 1450
Connection ~ 3050 1450
$Comp
L Switch:SW_SPDT SW?
U 1 1 5F6D532D
P 1500 1000
AR Path="/5F6D532D" Ref="SW?"  Part="1" 
AR Path="/5F548958/5F6D532D" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F6D532D" Ref="SW9"  Part="1" 
F 0 "SW9" H 1500 1285 50  0000 C CNN
F 1 "SW_SPDT" H 1500 1194 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1500 1000 50  0001 C CNN
F 3 "~" H 1500 1000 50  0001 C CNN
	1    1500 1000
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:C C?
U 1 1 5F6D5333
P 5200 950
AR Path="/5F6D5333" Ref="C?"  Part="1" 
AR Path="/5F548958/5F6D5333" Ref="C?"  Part="1" 
AR Path="/5F548F89/5F6D5333" Ref="C12"  Part="1" 
F 0 "C12" H 5225 1050 50  0000 L CNN
F 1 "0.1u" H 5225 850 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 5238 800 50  0001 C CNN
F 3 "" H 5200 950 50  0000 C CNN
	1    5200 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 950  5050 1050
Connection ~ 5050 1050
Wire Wire Line
	5050 1050 4800 1050
Text Label 1200 2150 2    60   ~ 0
DTR
Text Label 1200 2650 2    60   ~ 0
RTS
NoConn ~ 5950 2750
NoConn ~ 6050 2750
NoConn ~ 6150 2750
NoConn ~ 6250 2750
$Comp
L Switch:SW_Push SW?
U 1 1 5F6D5342
P 2900 2100
AR Path="/5F6D5342" Ref="SW?"  Part="1" 
AR Path="/5F548958/5F6D5342" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F6D5342" Ref="SW10"  Part="1" 
F 0 "SW10" H 2900 2385 50  0000 C CNN
F 1 "SW_Push" H 2900 2294 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 2900 2300 50  0001 C CNN
F 3 "~" H 2900 2300 50  0001 C CNN
	1    2900 2100
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F6D5348
P 3250 2100
AR Path="/5F6D5348" Ref="R?"  Part="1" 
AR Path="/5F548958/5F6D5348" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F6D5348" Ref="R16"  Part="1" 
F 0 "R16" V 3330 2100 50  0000 C CNN
F 1 "1k" V 3250 2100 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 3180 2100 50  0001 C CNN
F 3 "" H 3250 2100 50  0000 C CNN
	1    3250 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 2100 2600 2100
$Comp
L Hyper_Board_Traser-rescue:C C?
U 1 1 5F6D534F
P 2900 2300
AR Path="/5F6D534F" Ref="C?"  Part="1" 
AR Path="/5F548958/5F6D534F" Ref="C?"  Part="1" 
AR Path="/5F548F89/5F6D534F" Ref="C8"  Part="1" 
F 0 "C8" H 2925 2400 50  0000 L CNN
F 1 "0.1u" H 2925 2200 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 2938 2150 50  0001 C CNN
F 3 "" H 2900 2300 50  0000 C CNN
	1    2900 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 2300 2700 2300
Wire Wire Line
	2700 2300 2700 2100
Connection ~ 2700 2100
Wire Wire Line
	3100 2100 3100 2300
Wire Wire Line
	3100 2300 3050 2300
Connection ~ 3100 2100
Text Label 3100 2000 0    60   ~ 0
IO0
Wire Wire Line
	3100 2000 3100 2100
$Comp
L Switch:SW_Push SW?
U 1 1 5F6D535D
P 2900 2850
AR Path="/5F6D535D" Ref="SW?"  Part="1" 
AR Path="/5F548958/5F6D535D" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F6D535D" Ref="SW11"  Part="1" 
F 0 "SW11" H 2900 3135 50  0000 C CNN
F 1 "SW_Push" H 2900 3044 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 2900 3050 50  0001 C CNN
F 3 "~" H 2900 3050 50  0001 C CNN
	1    2900 2850
	1    0    0    -1  
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F6D5363
P 3250 2850
AR Path="/5F6D5363" Ref="R?"  Part="1" 
AR Path="/5F548958/5F6D5363" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F6D5363" Ref="R17"  Part="1" 
F 0 "R17" V 3330 2850 50  0000 C CNN
F 1 "1k" V 3250 2850 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 3180 2850 50  0001 C CNN
F 3 "" H 3250 2850 50  0000 C CNN
	1    3250 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 2850 2600 2850
$Comp
L Hyper_Board_Traser-rescue:C C?
U 1 1 5F6D536A
P 2900 3050
AR Path="/5F6D536A" Ref="C?"  Part="1" 
AR Path="/5F548958/5F6D536A" Ref="C?"  Part="1" 
AR Path="/5F548F89/5F6D536A" Ref="C9"  Part="1" 
F 0 "C9" H 2925 3150 50  0000 L CNN
F 1 "0.1u" H 2925 2950 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 2938 2900 50  0001 C CNN
F 3 "" H 2900 3050 50  0000 C CNN
	1    2900 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 3050 2700 3050
Wire Wire Line
	2700 3050 2700 2850
Connection ~ 2700 2850
Wire Wire Line
	3100 2850 3100 3050
Wire Wire Line
	3100 3050 3050 3050
Connection ~ 3100 2850
Text Label 3100 2750 0    60   ~ 0
EN
Wire Wire Line
	3100 2750 3100 2850
Text Label 5350 1150 2    60   ~ 0
EN
Text Label 1850 2950 0    60   ~ 0
IO0
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 5F6D537A
P 1750 2150
AR Path="/5F6D537A" Ref="Q?"  Part="1" 
AR Path="/5F548958/5F6D537A" Ref="Q?"  Part="1" 
AR Path="/5F548F89/5F6D537A" Ref="Q4"  Part="1" 
F 0 "Q4" H 1940 2196 50  0000 L CNN
F 1 "2SC1815" H 1940 2105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1950 2075 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 1750 2150 50  0001 L CNN
	1    1750 2150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 5F6D5380
P 1750 2650
AR Path="/5F6D5380" Ref="Q?"  Part="1" 
AR Path="/5F548958/5F6D5380" Ref="Q?"  Part="1" 
AR Path="/5F548F89/5F6D5380" Ref="Q5"  Part="1" 
F 0 "Q5" H 1940 2696 50  0000 L CNN
F 1 "2SC1815" H 1940 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1950 2575 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 1750 2650 50  0001 L CNN
	1    1750 2650
	1    0    0    -1  
$EndComp
Text Label 1850 1950 0    60   ~ 0
EN
Wire Wire Line
	1850 2850 1850 2950
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F6D5388
P 1400 2150
AR Path="/5F6D5388" Ref="R?"  Part="1" 
AR Path="/5F548958/5F6D5388" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F6D5388" Ref="R14"  Part="1" 
F 0 "R14" V 1480 2150 50  0000 C CNN
F 1 "1k" V 1400 2150 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 1330 2150 50  0001 C CNN
F 3 "" H 1400 2150 50  0000 C CNN
	1    1400 2150
	0    1    1    0   
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F6D538E
P 1400 2650
AR Path="/5F6D538E" Ref="R?"  Part="1" 
AR Path="/5F548958/5F6D538E" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F6D538E" Ref="R15"  Part="1" 
F 0 "R15" V 1480 2650 50  0000 C CNN
F 1 "1k" V 1400 2650 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 1330 2650 50  0001 C CNN
F 3 "" H 1400 2650 50  0000 C CNN
	1    1400 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 2650 1200 2650
Wire Wire Line
	1200 2150 1250 2150
Wire Wire Line
	1200 2150 1200 2450
Wire Wire Line
	1200 2450 1850 2450
Wire Wire Line
	1850 2350 1250 2350
Wire Wire Line
	1250 2350 1250 2650
NoConn ~ 7050 1550
Wire Wire Line
	1700 1100 1950 1100
Wire Wire Line
	1950 1450 2500 1450
NoConn ~ 6450 2750
NoConn ~ 6350 2750
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F6D53A4
P 6650 2900
AR Path="/5F6D53A4" Ref="R?"  Part="1" 
AR Path="/5F548958/5F6D53A4" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F6D53A4" Ref="R19"  Part="1" 
F 0 "R19" V 6730 2900 50  0000 C CNN
F 1 "1k" V 6650 2900 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 6580 2900 50  0001 C CNN
F 3 "" H 6650 2900 50  0000 C CNN
	1    6650 2900
	1    0    0    -1  
$EndComp
Connection ~ 1250 2650
Connection ~ 1950 1100
Connection ~ 2500 1450
Wire Wire Line
	2500 1450 3050 1450
Connection ~ 3050 1100
Wire Wire Line
	3050 1100 3300 1100
Connection ~ 3300 1100
Wire Wire Line
	3300 1100 3400 1100
$Comp
L Regulator_Linear:AMS1117-1.5 U?
U 1 1 5F6D53B2
P 2500 1100
AR Path="/5F6D53B2" Ref="U?"  Part="1" 
AR Path="/5F548958/5F6D53B2" Ref="U?"  Part="1" 
AR Path="/5F548F89/5F6D53B2" Ref="U3"  Part="1" 
F 0 "U3" H 2500 1342 50  0000 C CNN
F 1 "AMS1117-1.5" H 2500 1251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2500 1300 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2600 850 50  0001 C CNN
	1    2500 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1100 2200 1100
Wire Wire Line
	2500 1450 2500 1400
Wire Wire Line
	2800 1100 3050 1100
$Comp
L Hyper_Board_Traser-rescue:CONN_01X06 P?
U 1 1 5F6D53BB
P 1400 3750
AR Path="/5F6D53BB" Ref="P?"  Part="1" 
AR Path="/5F548F89/5F6D53BB" Ref="P4"  Part="1" 
AR Path="/5F548958/5F6D53BB" Ref="P?"  Part="1" 
F 0 "P4" H 1400 4100 50  0000 C CNN
F 1 "CONN_01X06" V 1500 3750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1400 3750 50  0001 C CNN
F 3 "" H 1400 3750 50  0000 C CNN
	1    1400 3750
	0    1    1    0   
$EndComp
Text Label 1250 3550 1    60   ~ 0
DTR
Text Label 1350 3550 1    60   ~ 0
RTS
Text Label 1450 3550 1    60   ~ 0
TXD
Text Label 1550 3550 1    60   ~ 0
RXD
Text Notes 1100 4000 0    60   ~ 0
ROBOX_Writer
Text Label 1150 3550 1    50   ~ 0
GND
Text Label 1650 3550 1    50   ~ 0
3v3
Text Label 5350 950  1    50   ~ 0
GND
Text Label 7050 950  0    50   ~ 0
GND
Text Label 6650 3050 3    50   ~ 0
GND
Text Label 5750 2750 3    50   ~ 0
GND
Text Label 2600 2850 2    50   ~ 0
GND
Text Label 2600 2100 2    50   ~ 0
GND
Text Label 1200 1450 2    50   ~ 0
GND
Text Label 4900 1050 2    50   ~ 0
3v3
Text Label 3400 1100 0    50   ~ 0
3v3
Text Label 1200 900  2    50   ~ 0
Vcc
Wire Wire Line
	1950 1450 1200 1450
Connection ~ 1950 1450
Wire Wire Line
	1200 1100 1200 1450
Wire Wire Line
	1200 900  1200 1000
Connection ~ 1200 1000
Text Label 3400 2100 0    50   ~ 0
3v3
Text Label 3400 2850 0    50   ~ 0
3v3
$Comp
L akizukit:ESP32 U?
U 1 1 5F6D53DE
P 6200 1650
AR Path="/5F6D53DE" Ref="U?"  Part="1" 
AR Path="/5F548958/5F6D53DE" Ref="U?"  Part="1" 
AR Path="/5F548F89/5F6D53DE" Ref="U4"  Part="1" 
F 0 "U4" H 6200 2597 60  0000 C CNN
F 1 "ESP32" H 6200 2491 60  0000 C CNN
F 2 "akizukit:ESP-WROOM-32" H 6200 1250 60  0001 C CNN
F 3 "" H 6200 1250 60  0001 C CNN
	1    6200 1650
	1    0    0    -1  
$EndComp
Text Label 7050 2250 0    60   ~ 0
IO0
Text Label 7050 1350 0    60   ~ 0
TXD
Text Label 7050 1250 0    60   ~ 0
RXD
Wire Wire Line
	5050 1050 5350 1050
Text Label 5850 2750 3    50   ~ 0
LEDs
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F6D53E9
P 4350 3200
AR Path="/5F6D53E9" Ref="R?"  Part="1" 
AR Path="/5F548958/5F6D53E9" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F6D53E9" Ref="R18"  Part="1" 
F 0 "R18" V 4430 3200 50  0000 C CNN
F 1 "1k" V 4350 3200 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4280 3200 50  0001 C CNN
F 3 "" H 4350 3200 50  0000 C CNN
	1    4350 3200
	0    1    1    0   
$EndComp
$Comp
L Device:Speaker LS?
U 1 1 5F6D53EF
P 4700 3650
AR Path="/5F548958/5F6D53EF" Ref="LS?"  Part="1" 
AR Path="/5F548F89/5F6D53EF" Ref="LS2"  Part="1" 
F 0 "LS2" H 4870 3646 50  0000 L CNN
F 1 "Speaker" H 4870 3555 50  0000 L CNN
F 2 "" H 4700 3450 50  0001 C CNN
F 3 "~" H 4690 3600 50  0001 C CNN
	1    4700 3650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q?
U 1 1 5F6D53F5
P 4400 4100
AR Path="/5F6D53F5" Ref="Q?"  Part="1" 
AR Path="/5F548958/5F6D53F5" Ref="Q?"  Part="1" 
AR Path="/5F548F89/5F6D53F5" Ref="Q6"  Part="1" 
F 0 "Q6" H 4590 4146 50  0000 L CNN
F 1 "2SC1815" H 4590 4055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4600 4025 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 4400 4100 50  0001 L CNN
	1    4400 4100
	1    0    0    -1  
$EndComp
Text Label 4500 4300 3    50   ~ 0
GND
Text Label 4200 3200 2    50   ~ 0
3v3
$Comp
L pspice:DIODE D?
U 1 1 5F6D53FD
P 4350 3550
AR Path="/5F548958/5F6D53FD" Ref="D?"  Part="1" 
AR Path="/5F548F89/5F6D53FD" Ref="D6"  Part="1" 
F 0 "D6" V 4400 3750 50  0000 R CNN
F 1 "DIODE" V 4300 3900 50  0000 R CNN
F 2 "" H 4350 3550 50  0001 C CNN
F 3 "~" H 4350 3550 50  0001 C CNN
	1    4350 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 3350 4500 3350
Wire Wire Line
	4500 3350 4500 3200
Wire Wire Line
	4500 3350 4500 3650
Connection ~ 4500 3350
Wire Wire Line
	4350 3750 4500 3750
Wire Wire Line
	4500 3750 4500 3900
Connection ~ 4500 3750
Text Label 5350 1850 2    50   ~ 0
spk
Text Label 4200 4100 2    50   ~ 0
spk
$Comp
L LED:WS2812B D?
U 1 1 5F6D540C
P 5900 4550
AR Path="/5F548958/5F6D540C" Ref="D?"  Part="1" 
AR Path="/5F548F89/5F6D540C" Ref="D7"  Part="1" 
F 0 "D7" H 6244 4596 50  0000 L CNN
F 1 "WS2812B" H 6244 4505 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 5950 4250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 6000 4175 50  0001 L TNN
	1    5900 4550
	1    0    0    -1  
$EndComp
Text Label 5600 4550 2    50   ~ 0
LEDs
Text Label 5900 4850 0    50   ~ 0
GND
Text Label 5900 4250 2    50   ~ 0
3v3
$Comp
L LED:WS2812B D?
U 1 1 5F6D5415
P 6500 4550
AR Path="/5F548958/5F6D5415" Ref="D?"  Part="1" 
AR Path="/5F548F89/5F6D5415" Ref="D8"  Part="1" 
F 0 "D8" H 6844 4596 50  0000 L CNN
F 1 "WS2812B" H 6844 4505 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 6550 4250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 6600 4175 50  0001 L TNN
	1    6500 4550
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D?
U 1 1 5F6D541B
P 7100 4550
AR Path="/5F548958/5F6D541B" Ref="D?"  Part="1" 
AR Path="/5F548F89/5F6D541B" Ref="D9"  Part="1" 
F 0 "D9" H 7444 4596 50  0000 L CNN
F 1 "WS2812B" H 7444 4505 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 7150 4250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7200 4175 50  0001 L TNN
	1    7100 4550
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D?
U 1 1 5F6D5421
P 7700 4550
AR Path="/5F548958/5F6D5421" Ref="D?"  Part="1" 
AR Path="/5F548F89/5F6D5421" Ref="D10"  Part="1" 
F 0 "D10" H 8044 4596 50  0000 L CNN
F 1 "WS2812B" H 8044 4505 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 7750 4250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7800 4175 50  0001 L TNN
	1    7700 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4850 7100 4850
Connection ~ 6500 4850
Wire Wire Line
	6500 4850 5900 4850
Connection ~ 7100 4850
Wire Wire Line
	7100 4850 6500 4850
Wire Wire Line
	5900 4250 6500 4250
Connection ~ 6500 4250
Wire Wire Line
	6500 4250 7100 4250
Connection ~ 7100 4250
Wire Wire Line
	7100 4250 7700 4250
NoConn ~ 8000 4550
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5F6D5432
P 5100 1250
AR Path="/5F548958/5F6D5432" Ref="J?"  Part="1" 
AR Path="/5F548F89/5F6D5432" Ref="J12"  Part="1" 
F 0 "J12" H 5250 1200 50  0000 C CNN
F 1 "Conn_01x01" H 5400 1300 50  0000 C CNN
F 2 "" H 5100 1250 50  0001 C CNN
F 3 "~" H 5100 1250 50  0001 C CNN
	1    5100 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 1250 5350 1250
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5F6D5439
P 4600 1050
AR Path="/5F548958/5F6D5439" Ref="J?"  Part="1" 
AR Path="/5F548F89/5F6D5439" Ref="J9"  Part="1" 
F 0 "J9" H 4750 1000 50  0000 C CNN
F 1 "Conn_01x01" H 4900 1100 50  0000 C CNN
F 2 "" H 4600 1050 50  0001 C CNN
F 3 "~" H 4600 1050 50  0001 C CNN
	1    4600 1050
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5F6D543F
P 7400 950
AR Path="/5F548958/5F6D543F" Ref="J?"  Part="1" 
AR Path="/5F548F89/5F6D543F" Ref="J16"  Part="1" 
F 0 "J16" H 7550 900 50  0000 C CNN
F 1 "Conn_01x01" H 7700 1000 50  0000 C CNN
F 2 "" H 7400 950 50  0001 C CNN
F 3 "~" H 7400 950 50  0001 C CNN
	1    7400 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5F6D5445
P 4950 1350
AR Path="/5F548958/5F6D5445" Ref="J?"  Part="1" 
AR Path="/5F548F89/5F6D5445" Ref="J11"  Part="1" 
F 0 "J11" H 5100 1300 50  0000 C CNN
F 1 "Conn_01x01" H 5250 1400 50  0000 C CNN
F 2 "" H 4950 1350 50  0001 C CNN
F 3 "~" H 4950 1350 50  0001 C CNN
	1    4950 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 1350 5150 1350
Text Notes 4250 1300 0    50   ~ 0
sub pin
Text Label 7050 1050 0    50   ~ 0
MOSI
Text Label 7050 1150 0    50   ~ 0
SCL
Text Label 7050 1450 0    50   ~ 0
SDA
Text Label 7050 1650 0    50   ~ 0
MISO
Text Label 7050 1750 0    50   ~ 0
SCK
Text Label 6550 2750 3    50   ~ 0
CS2
Wire Wire Line
	4900 2150 5350 2150
Wire Wire Line
	4900 2250 5350 2250
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5F6D5458
P 6750 3600
AR Path="/5F548958/5F6D5458" Ref="J?"  Part="1" 
AR Path="/5F548F89/5F6D5458" Ref="J14"  Part="1" 
F 0 "J14" H 6700 3900 50  0000 L CNN
F 1 "Conn_01x06" H 6350 3200 50  0000 L CNN
F 2 "" H 6750 3600 50  0001 C CNN
F 3 "~" H 6750 3600 50  0001 C CNN
	1    6750 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5F6D545E
P 7250 3600
AR Path="/5F548958/5F6D545E" Ref="J?"  Part="1" 
AR Path="/5F548F89/5F6D545E" Ref="J15"  Part="1" 
F 0 "J15" H 7200 3900 50  0000 L CNN
F 1 "Conn_01x06" H 6850 3200 50  0000 L CNN
F 2 "" H 7250 3600 50  0001 C CNN
F 3 "~" H 7250 3600 50  0001 C CNN
	1    7250 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3400 7050 3400
Wire Wire Line
	7050 3500 6550 3500
Wire Wire Line
	6550 3600 7050 3600
Wire Wire Line
	7050 3700 6550 3700
Wire Wire Line
	6550 3800 7050 3800
Text Label 7050 3900 2    50   ~ 0
CS2
Text Label 6550 3900 2    50   ~ 0
CS1
Text Label 6550 3500 2    50   ~ 0
MOSI
Text Label 6150 3500 0    50   ~ 0
SCL
Text Label 6150 3800 0    50   ~ 0
SDA
Text Label 6550 3400 2    50   ~ 0
MISO
Text Label 6550 3800 2    50   ~ 0
SCK
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F6D5470
P 5950 3600
AR Path="/5F548958/5F6D5470" Ref="J?"  Part="1" 
AR Path="/5F548F89/5F6D5470" Ref="J13"  Part="1" 
F 0 "J13" H 5868 3917 50  0000 C CNN
F 1 "Conn_01x04" H 5868 3826 50  0000 C CNN
F 2 "" H 5950 3600 50  0001 C CNN
F 3 "~" H 5950 3600 50  0001 C CNN
	1    5950 3600
	-1   0    0    -1  
$EndComp
Text Label 6550 3600 2    50   ~ 0
GND
Text Label 6150 3600 0    50   ~ 0
GND
Text Label 6550 3700 2    50   ~ 0
3v3
Text Label 6150 3700 0    50   ~ 0
3v3
Text Label 5350 1450 2    50   ~ 0
button1
Text Label 5350 1550 2    50   ~ 0
button2
Text Label 7050 1950 0    60   ~ 0
c3
Text Label 7050 1850 0    50   ~ 0
CS1
$Comp
L Connector_Generic:Conn_01x02 J10
U 1 1 5F7939AF
P 4700 2150
F 0 "J10" H 4618 2367 50  0000 C CNN
F 1 "Conn_01x02" H 4618 2276 50  0000 C CNN
F 2 "" H 4700 2150 50  0001 C CNN
F 3 "~" H 4700 2150 50  0001 C CNN
	1    4700 2150
	-1   0    0    -1  
$EndComp
Text Label 2900 4400 2    50   ~ 0
button1
Text Label 2900 4950 2    50   ~ 0
button2
Text Label 2500 4750 2    50   ~ 0
3v3
$Comp
L Switch:SW_Push SW?
U 1 1 5F7BA83D
P 2700 4750
AR Path="/5F7BA83D" Ref="SW?"  Part="1" 
AR Path="/5F548958/5F7BA83D" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F7BA83D" Ref="SW?"  Part="1" 
F 0 "SW?" H 2700 5035 50  0000 C CNN
F 1 "SW_Push" H 2700 4944 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 2700 4950 50  0001 C CNN
F 3 "~" H 2700 4950 50  0001 C CNN
	1    2700 4750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F7BAC1A
P 2700 5300
AR Path="/5F7BAC1A" Ref="SW?"  Part="1" 
AR Path="/5F548958/5F7BAC1A" Ref="SW?"  Part="1" 
AR Path="/5F548F89/5F7BAC1A" Ref="SW?"  Part="1" 
F 0 "SW?" H 2700 5585 50  0000 C CNN
F 1 "SW_Push" H 2700 5494 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 2700 5500 50  0001 C CNN
F 3 "~" H 2700 5500 50  0001 C CNN
	1    2700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4400 2900 4750
Wire Wire Line
	2900 4950 2900 5300
Wire Wire Line
	2500 5300 2500 4750
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F7E567D
P 3050 4750
AR Path="/5F7E567D" Ref="R?"  Part="1" 
AR Path="/5F548958/5F7E567D" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F7E567D" Ref="R?"  Part="1" 
F 0 "R?" V 3130 4750 50  0000 C CNN
F 1 "1k" V 3050 4750 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 2980 4750 50  0001 C CNN
F 3 "" H 3050 4750 50  0000 C CNN
	1    3050 4750
	0    1    1    0   
$EndComp
$Comp
L Hyper_Board_Traser-rescue:R R?
U 1 1 5F7E5A4D
P 3050 5300
AR Path="/5F7E5A4D" Ref="R?"  Part="1" 
AR Path="/5F548958/5F7E5A4D" Ref="R?"  Part="1" 
AR Path="/5F548F89/5F7E5A4D" Ref="R?"  Part="1" 
F 0 "R?" V 3130 5300 50  0000 C CNN
F 1 "1k" V 3050 5300 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 2980 5300 50  0001 C CNN
F 3 "" H 3050 5300 50  0000 C CNN
	1    3050 5300
	0    1    1    0   
$EndComp
Connection ~ 2900 5300
Connection ~ 2900 4750
Wire Wire Line
	3200 4750 3200 5300
Text Label 3200 5300 0    50   ~ 0
GND
$EndSCHEMATC
