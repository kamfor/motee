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
LIBS:ac-dc
LIBS:drv8850
LIBS:sn65hvd3082edgk
LIBS:symbols
LIBS:TLE4946-2K
LIBS:pad
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Motee"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY841-MU IC1
U 1 1 56E9859A
P 6700 2450
F 0 "IC1" H 5850 3200 50  0000 C CNN
F 1 "ATTINY841-MU" H 7400 1700 50  0000 C CNN
F 2 "kicad-libraries-master:QFN20-3X3" H 6700 2250 50  0000 C CIN
F 3 "" H 6700 2450 50  0000 C CNN
	1    6700 2450
	1    0    0    -1  
$EndComp
Text GLabel 8000 2150 2    60   Input ~ 0
DIR
Text GLabel 8000 2050 2    60   Input ~ 0
MCU_RXD0
Text GLabel 8000 1950 2    60   Input ~ 0
MCU_TXD0
$Comp
L GND #PWR01
U 1 1 56E98890
P 5500 3200
F 0 "#PWR01" H 5500 2950 50  0001 C CNN
F 1 "GND" H 5500 3050 50  0000 C CNN
F 2 "" H 5500 3200 50  0000 C CNN
F 3 "" H 5500 3200 50  0000 C CNN
	1    5500 3200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR02
U 1 1 56E98910
P 5500 1650
F 0 "#PWR02" H 5500 1500 50  0001 C CNN
F 1 "+3.3V" H 5500 1790 50  0000 C CNN
F 2 "" H 5500 1650 50  0000 C CNN
F 3 "" H 5500 1650 50  0000 C CNN
	1    5500 1650
	1    0    0    -1  
$EndComp
$Comp
L drv8850 J2
U 1 1 56E99D4C
P 3550 2350
F 0 "J2" H 3150 3100 60  0000 C CNN
F 1 "drv8850" H 3250 1450 60  0000 C CNN
F 2 "drv8850:DRV8850_RGY_24" H 3550 2350 60  0001 C CNN
F 3 "" H 3550 2350 60  0000 C CNN
	1    3550 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 56E9A18A
P 2850 2050
F 0 "#PWR03" H 2850 1800 50  0001 C CNN
F 1 "GND" H 2850 1900 50  0000 C CNN
F 2 "" H 2850 2050 50  0000 C CNN
F 3 "" H 2850 2050 50  0000 C CNN
	1    2850 2050
	0    1    1    0   
$EndComp
Text GLabel 2850 2300 0    60   Input ~ 0
VMOT
$Comp
L R R1
U 1 1 56E9A231
P 2250 2800
F 0 "R1" V 2330 2800 50  0000 C CNN
F 1 "127K" V 2250 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 2180 2800 50  0001 C CNN
F 3 "" H 2250 2800 50  0000 C CNN
	1    2250 2800
	1    0    0    -1  
$EndComp
$Comp
L C 0.1uF1
U 1 1 56E9A2E3
P 2050 2800
F 0 "0.1uF1" H 1950 3000 50  0000 L CNN
F 1 "C" H 2075 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2088 2650 50  0001 C CNN
F 3 "" H 2050 2800 50  0000 C CNN
	1    2050 2800
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 56E9A5B2
P 2250 3100
F 0 "R2" V 2330 3100 50  0000 C CNN
F 1 "40.2K" H 2200 3100 50  0000 R CNN
F 2 "Resistors_SMD:R_0402" V 2180 3100 50  0001 C CNN
F 3 "" H 2250 3100 50  0000 C CNN
	1    2250 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 56E9A6A9
P 2250 3300
F 0 "#PWR04" H 2250 3050 50  0001 C CNN
F 1 "GND" H 2250 3150 50  0000 C CNN
F 2 "" H 2250 3300 50  0000 C CNN
F 3 "" H 2250 3300 50  0000 C CNN
	1    2250 3300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 56E9A819
P 1800 2550
F 0 "#PWR05" H 1800 2400 50  0001 C CNN
F 1 "+3.3V" H 1800 2690 50  0000 C CNN
F 2 "" H 1800 2550 50  0000 C CNN
F 3 "" H 1800 2550 50  0000 C CNN
	1    1800 2550
	1    0    0    -1  
$EndComp
Text GLabel 2850 3050 0    60   Input ~ 0
VMOT
$Comp
L CP1 100u1
U 1 1 56E9ACCE
P 2900 3200
F 0 "100u1" H 2925 3300 50  0000 L CNN
F 1 "CP1" H 2925 3100 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeB_EIA-3528_Reflow" H 2900 3200 50  0001 C CNN
F 3 "" H 2900 3200 50  0000 C CNN
	1    2900 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 56E9AD3D
P 2900 3350
F 0 "#PWR06" H 2900 3100 50  0001 C CNN
F 1 "GND" H 2900 3200 50  0000 C CNN
F 2 "" H 2900 3350 50  0000 C CNN
F 3 "" H 2900 3350 50  0000 C CNN
	1    2900 3350
	1    0    0    -1  
$EndComp
$Comp
L CP1 100uF1
U 1 1 56E9AEDB
P 1800 2800
F 0 "100uF1" H 1500 2950 50  0000 L CNN
F 1 "CP1" H 1600 2700 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeB_EIA-3528_Reflow" H 1800 2800 50  0001 C CNN
F 3 "" H 1800 2800 50  0000 C CNN
	1    1800 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 56E9AFBE
P 1800 3100
F 0 "#PWR07" H 1800 2850 50  0001 C CNN
F 1 "GND" H 1800 2950 50  0000 C CNN
F 2 "" H 1800 3100 50  0000 C CNN
F 3 "" H 1800 3100 50  0000 C CNN
	1    1800 3100
	1    0    0    -1  
$EndComp
Text GLabel 4300 2750 2    60   Input ~ 0
IN1H
Text GLabel 4300 2850 2    60   Input ~ 0
IN1L
Text GLabel 4300 2950 2    60   Input ~ 0
IN2H
Text GLabel 4300 3050 2    60   Input ~ 0
IN2L
Text GLabel 4150 2150 2    60   Input ~ 0
OUT2
Text GLabel 4150 1850 2    60   Input ~ 0
OUT1
Text GLabel 4300 2550 2    60   Input ~ 0
nSLEEP
$Comp
L R R5
U 1 1 56E9C558
P 4200 2450
F 0 "R5" V 4280 2450 50  0000 C CNN
F 1 "2.4K" V 4200 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 4130 2450 50  0001 C CNN
F 3 "" H 4200 2450 50  0000 C CNN
	1    4200 2450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 56E9C5BA
P 4500 2450
F 0 "#PWR08" H 4500 2200 50  0001 C CNN
F 1 "GND" H 4500 2300 50  0000 C CNN
F 2 "" H 4500 2450 50  0000 C CNN
F 3 "" H 4500 2450 50  0000 C CNN
	1    4500 2450
	0    -1   -1   0   
$EndComp
$Comp
L C 0.1uF2
U 1 1 56E9D608
P 2400 2500
F 0 "0.1uF2" V 2250 2400 50  0000 L CNN
F 1 "C" V 2450 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2438 2350 50  0001 C CNN
F 3 "" H 2400 2500 50  0000 C CNN
	1    2400 2500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 56E9D65D
P 2250 2500
F 0 "#PWR09" H 2250 2250 50  0001 C CNN
F 1 "GND" V 2200 2350 50  0000 C CNN
F 2 "" H 2250 2500 50  0000 C CNN
F 3 "" H 2250 2500 50  0000 C CNN
	1    2250 2500
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 56E9DA58
P 2700 2600
F 0 "R12" V 2780 2600 50  0000 C CNN
F 1 "1K" H 2700 2600 50  0000 R CNN
F 2 "Resistors_SMD:R_0402" V 2630 2600 50  0001 C CNN
F 3 "" H 2700 2600 50  0000 C CNN
	1    2700 2600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR010
U 1 1 56E9DC2E
P 2550 2700
F 0 "#PWR010" H 2550 2450 50  0001 C CNN
F 1 "GND" H 2550 2550 50  0000 C CNN
F 2 "" H 2550 2700 50  0000 C CNN
F 3 "" H 2550 2700 50  0000 C CNN
	1    2550 2700
	1    0    0    -1  
$EndComp
$Comp
L SN65HVD3082EDGK J1
U 1 1 56E9E20E
P 3000 4800
F 0 "J1" H 2900 5300 60  0000 C CNN
F 1 "SN65HVD3082EDGK" H 3100 4650 60  0000 C CNN
F 2 "SN65HVD3082EDGK:VSSOP8_P0.65mm_W3mm" H 3100 4650 60  0001 C CNN
F 3 "" H 3100 4650 60  0000 C CNN
	1    3000 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2500 2550 2500
Wire Wire Line
	4050 2450 4000 2450
Wire Wire Line
	4500 2450 4350 2450
Wire Wire Line
	4000 2550 4300 2550
Wire Wire Line
	4000 2750 4300 2750
Wire Wire Line
	4000 2850 4300 2850
Wire Wire Line
	4000 2950 4300 2950
Wire Wire Line
	4000 3050 4300 3050
Connection ~ 4150 2150
Wire Wire Line
	4000 2150 4150 2150
Wire Wire Line
	4150 2250 4000 2250
Wire Wire Line
	4150 2050 4150 2250
Wire Wire Line
	4000 2050 4150 2050
Connection ~ 4150 1850
Wire Wire Line
	4000 1850 4150 1850
Wire Wire Line
	4150 1750 4000 1750
Wire Wire Line
	4150 1750 4150 1950
Wire Wire Line
	4150 1950 4000 1950
Wire Wire Line
	1800 2950 1800 3100
Connection ~ 2050 2650
Wire Wire Line
	2850 3050 2950 3050
Wire Wire Line
	2350 2650 2350 2850
Wire Wire Line
	2350 2850 2950 2850
Connection ~ 2250 2950
Connection ~ 2250 2650
Wire Wire Line
	1800 2650 2350 2650
Wire Wire Line
	2050 2950 2950 2950
Wire Wire Line
	2850 1750 2850 2050
Connection ~ 2850 2300
Wire Wire Line
	2850 2400 2950 2400
Wire Wire Line
	2850 2300 2950 2300
Wire Wire Line
	2850 2200 2850 2400
Wire Wire Line
	2950 2200 2850 2200
Connection ~ 2850 2050
Connection ~ 2850 1850
Wire Wire Line
	2950 1850 2850 1850
Connection ~ 2850 1950
Wire Wire Line
	2950 1950 2850 1950
Wire Wire Line
	2850 1750 2950 1750
Wire Wire Line
	2850 2050 2950 2050
Wire Wire Line
	5500 3050 5500 3200
Wire Wire Line
	5650 3050 5500 3050
Wire Wire Line
	5500 1850 5500 1650
Wire Wire Line
	5650 1850 5500 1850
Wire Wire Line
	7750 3050 8000 3050
Wire Wire Line
	7750 2950 8000 2950
Wire Wire Line
	7750 2850 8000 2850
Wire Wire Line
	7750 2750 8000 2750
Wire Wire Line
	7750 2550 8000 2550
Wire Wire Line
	7750 2450 8000 2450
Wire Wire Line
	7750 2350 8000 2350
Wire Wire Line
	7750 2250 8000 2250
Wire Wire Line
	7750 2150 8000 2150
Wire Wire Line
	7750 2050 8000 2050
Wire Wire Line
	7750 1950 8000 1950
Wire Wire Line
	2850 2600 2950 2600
Wire Wire Line
	2550 2600 2550 2700
Wire Wire Line
	2400 4500 2700 4500
Wire Wire Line
	2400 4700 2700 4700
Wire Wire Line
	3450 4600 3650 4600
Wire Wire Line
	3450 4700 3650 4700
Wire Wire Line
	2700 4800 2400 4800
Wire Wire Line
	2700 4600 2600 4600
Wire Wire Line
	2600 4600 2600 4700
Connection ~ 2600 4700
Text GLabel 2400 4800 0    60   Input ~ 0
MCU_TXD0
Text GLabel 2400 4700 0    60   Input ~ 0
DIR
Text GLabel 2400 4500 0    60   Input ~ 0
MCU_RXD0
Text GLabel 3650 4600 2    60   Input ~ 0
B
Text GLabel 3650 4700 2    60   Input ~ 0
A
$Comp
L GND #PWR011
U 1 1 56E9F141
P 3450 4800
F 0 "#PWR011" H 3450 4550 50  0001 C CNN
F 1 "GND" H 3450 4650 50  0000 C CNN
F 2 "" H 3450 4800 50  0000 C CNN
F 3 "" H 3450 4800 50  0000 C CNN
	1    3450 4800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR012
U 1 1 56E9F258
P 3450 4500
F 0 "#PWR012" H 3450 4350 50  0001 C CNN
F 1 "+3.3V" H 3450 4640 50  0000 C CNN
F 2 "" H 3450 4500 50  0000 C CNN
F 3 "" H 3450 4500 50  0000 C CNN
	1    3450 4500
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 56EA332A
P 2600 4850
F 0 "R4" V 2680 4850 50  0000 C CNN
F 1 "10K" H 2550 4850 50  0000 R CNN
F 2 "Resistors_SMD:R_0402" V 2530 4850 50  0001 C CNN
F 3 "" H 2600 4850 50  0000 C CNN
	1    2600 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 56EA3AD6
P 2600 5000
F 0 "#PWR013" H 2600 4750 50  0001 C CNN
F 1 "GND" H 2600 4850 50  0000 C CNN
F 2 "" H 2600 5000 50  0000 C CNN
F 3 "" H 2600 5000 50  0000 C CNN
	1    2600 5000
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 56EA4030
P 2600 4350
F 0 "R3" V 2680 4350 50  0000 C CNN
F 1 "10K" H 2550 4350 50  0000 R CNN
F 2 "Resistors_SMD:R_0402" V 2530 4350 50  0001 C CNN
F 3 "" H 2600 4350 50  0000 C CNN
	1    2600 4350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR014
U 1 1 56EA408F
P 2600 4200
F 0 "#PWR014" H 2600 4050 50  0001 C CNN
F 1 "+3.3V" H 2600 4340 50  0000 C CNN
F 2 "" H 2600 4200 50  0000 C CNN
F 3 "" H 2600 4200 50  0000 C CNN
	1    2600 4200
	1    0    0    -1  
$EndComp
Connection ~ 2600 4500
$Comp
L R R6
U 1 1 56EA4D46
P 8150 3050
F 0 "R6" V 8230 3050 50  0000 C CNN
F 1 "10K" H 8150 3050 50  0000 R CNN
F 2 "Resistors_SMD:R_0402" V 8080 3050 50  0001 C CNN
F 3 "" H 8150 3050 50  0000 C CNN
	1    8150 3050
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR015
U 1 1 56EA51BA
P 8400 3050
F 0 "#PWR015" H 8400 2900 50  0001 C CNN
F 1 "+3.3V" H 8400 3190 50  0000 C CNN
F 2 "" H 8400 3050 50  0000 C CNN
F 3 "" H 8400 3050 50  0000 C CNN
	1    8400 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3050 8300 3050
Wire Notes Line
	1500 3800 1500 5400
Wire Notes Line
	1500 5400 4150 5400
Wire Notes Line
	4150 5400 4150 3800
Wire Notes Line
	4150 3800 1500 3800
Wire Notes Line
	1500 1400 5000 1400
Wire Notes Line
	5000 1400 5000 3600
Wire Notes Line
	5000 3600 1500 3600
Wire Notes Line
	1500 3600 1500 1400
Wire Notes Line
	5200 1350 5200 3600
Wire Notes Line
	5200 3600 8900 3600
Wire Notes Line
	8900 3600 8900 1300
Wire Notes Line
	8900 1300 5200 1300
Wire Notes Line
	4350 3800 5700 3800
Wire Notes Line
	5700 3800 5700 4550
Wire Notes Line
	5700 4550 4350 4550
Connection ~ 2900 3050
Wire Wire Line
	2250 3250 2250 3300
$Comp
L TLE4946-2K U1
U 1 1 56EDAC90
P 8300 4200
F 0 "U1" H 8300 4500 60  0000 C CNN
F 1 "TLE4946-2K" H 8400 3850 60  0000 C CNN
F 2 "kicad-libraries-master:SC59" H 8400 3850 60  0000 C CNN
F 3 "" H 8400 3850 60  0000 C CNN
	1    8300 4200
	1    0    0    -1  
$EndComp
$Comp
L TLE4946-2K U2
U 1 1 56EDAD7D
P 8300 5000
F 0 "U2" H 8300 5300 60  0000 C CNN
F 1 "TLE4946-2K" H 8400 4650 60  0000 C CNN
F 2 "kicad-libraries-master:SC59" H 8400 4650 60  0000 C CNN
F 3 "" H 8400 4650 60  0000 C CNN
	1    8300 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 56EDB511
P 8750 4250
F 0 "#PWR016" H 8750 4000 50  0001 C CNN
F 1 "GND" H 8750 4100 50  0000 C CNN
F 2 "" H 8750 4250 50  0000 C CNN
F 3 "" H 8750 4250 50  0000 C CNN
	1    8750 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 56EDB6C5
P 8800 5050
F 0 "#PWR017" H 8800 4800 50  0001 C CNN
F 1 "GND" H 8800 4900 50  0000 C CNN
F 2 "" H 8800 5050 50  0000 C CNN
F 3 "" H 8800 5050 50  0000 C CNN
	1    8800 5050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR018
U 1 1 56EDBDFC
P 7900 4000
F 0 "#PWR018" H 7900 3850 50  0001 C CNN
F 1 "+3.3V" H 7900 4140 50  0000 C CNN
F 2 "" H 7900 4000 50  0000 C CNN
F 3 "" H 7900 4000 50  0000 C CNN
	1    7900 4000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR019
U 1 1 56EDC412
P 7900 4800
F 0 "#PWR019" H 7900 4650 50  0001 C CNN
F 1 "+3.3V" H 7900 4940 50  0000 C CNN
F 2 "" H 7900 4800 50  0000 C CNN
F 3 "" H 7900 4800 50  0000 C CNN
	1    7900 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4850 7900 4850
Wire Wire Line
	7900 4850 7900 4800
Wire Wire Line
	8000 4050 7900 4050
Wire Wire Line
	7900 4050 7900 4000
Wire Wire Line
	8650 4250 8750 4250
Wire Wire Line
	8650 5050 8800 5050
Wire Wire Line
	8000 4450 7850 4450
Text GLabel 7850 4450 0    60   Input ~ 0
HALL1
Wire Wire Line
	7850 5250 8000 5250
Text GLabel 7850 5250 0    60   Input ~ 0
HALL2
Text GLabel 8000 2250 2    60   Input ~ 0
IN1L
Text GLabel 8000 2350 2    60   Input ~ 0
IN1H
Text GLabel 8000 2450 2    60   Input ~ 0
IN2H
Text GLabel 8000 2550 2    60   Input ~ 0
IN2L
Text GLabel 8000 2950 2    60   Input ~ 0
HALL1
Text GLabel 8000 2850 2    60   Input ~ 0
HALL2
Wire Notes Line
	7350 3950 7350 5600
Wire Notes Line
	9100 5600 9100 3800
Wire Notes Line
	7350 3800 7350 4000
Wire Notes Line
	9100 3800 7350 3800
Wire Notes Line
	7350 5600 9100 5600
$Comp
L R R7
U 1 1 56EE0EF1
P 8150 2750
F 0 "R7" V 8230 2750 50  0000 C CNN
F 1 "220R" H 8150 2750 50  0000 R CNN
F 2 "Resistors_SMD:R_0402" V 8080 2750 50  0001 C CNN
F 3 "" H 8150 2750 50  0000 C CNN
	1    8150 2750
	0    -1   -1   0   
$EndComp
$Comp
L LED D1
U 1 1 56EE0F47
P 8550 2750
F 0 "D1" H 8550 2850 50  0000 C CNN
F 1 "LED" H 8550 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8550 2750 50  0000 C CNN
F 3 "" H 8550 2750 50  0000 C CNN
	1    8550 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8300 2750 8350 2750
Wire Wire Line
	8750 2750 8750 2850
$Comp
L GND #PWR020
U 1 1 56EE15F1
P 8750 2850
F 0 "#PWR020" H 8750 2600 50  0001 C CNN
F 1 "GND" H 8750 2700 50  0000 C CNN
F 2 "" H 8750 2850 50  0000 C CNN
F 3 "" H 8750 2850 50  0000 C CNN
	1    8750 2850
	1    0    0    -1  
$EndComp
$Comp
L C 0.1uF3
U 1 1 56EE284A
P 5500 2000
F 0 "0.1uF3" H 5525 2100 50  0000 L CNN
F 1 "C" H 5525 1900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5538 1850 50  0001 C CNN
F 3 "" H 5500 2000 50  0000 C CNN
	1    5500 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 56EE2E12
P 5500 2150
F 0 "#PWR021" H 5500 1900 50  0001 C CNN
F 1 "GND" H 5500 2000 50  0000 C CNN
F 2 "" H 5500 2150 50  0000 C CNN
F 3 "" H 5500 2150 50  0000 C CNN
	1    5500 2150
	1    0    0    -1  
$EndComp
Connection ~ 5500 1850
$Comp
L pad U6
U 1 1 56EF196A
P 6600 4350
F 0 "U6" H 6600 4550 60  0000 C CNN
F 1 "pad" H 6600 4200 60  0000 C CNN
F 2 "pad_round:square_22x22" H 6600 4600 60  0001 C CNN
F 3 "" H 6600 4600 60  0000 C CNN
	1    6600 4350
	1    0    0    -1  
$EndComp
$Comp
L pad U5
U 1 1 56EF1FA0
P 6600 4100
F 0 "U5" H 6600 4300 60  0000 C CNN
F 1 "pad" H 6600 3950 60  0000 C CNN
F 2 "pad_round:square_22x22" H 6600 4350 60  0001 C CNN
F 3 "" H 6600 4350 60  0000 C CNN
	1    6600 4100
	1    0    0    -1  
$EndComp
$Comp
L pad U7
U 1 1 56EF200C
P 6600 4600
F 0 "U7" H 6600 4800 60  0000 C CNN
F 1 "pad" H 6600 4450 60  0000 C CNN
F 2 "pad_round:square_22x22" H 6600 4850 60  0001 C CNN
F 3 "" H 6600 4850 60  0000 C CNN
	1    6600 4600
	1    0    0    -1  
$EndComp
$Comp
L pad U8
U 1 1 56EF2079
P 6600 4850
F 0 "U8" H 6600 5050 60  0000 C CNN
F 1 "pad" H 6600 4700 60  0000 C CNN
F 2 "pad_round:square_22x22" H 6600 5100 60  0001 C CNN
F 3 "" H 6600 5100 60  0000 C CNN
	1    6600 4850
	1    0    0    -1  
$EndComp
$Comp
L pad_round U3
U 1 1 56EF3BBC
P 5050 5000
F 0 "U3" H 4850 5250 60  0000 C CNN
F 1 "pad_round" H 4850 5050 60  0000 C CNN
F 2 "pad_round:pad_round" H 5050 5050 60  0001 C CNN
F 3 "" H 5050 5050 60  0000 C CNN
	1    5050 5000
	1    0    0    -1  
$EndComp
$Comp
L pad_round U4
U 1 1 56EF3C44
P 5050 5300
F 0 "U4" H 4850 5550 60  0000 C CNN
F 1 "pad_round" H 4850 5350 60  0000 C CNN
F 2 "pad_round:pad_round" H 5050 5350 60  0001 C CNN
F 3 "" H 5050 5350 60  0000 C CNN
	1    5050 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4100 6750 4100
Wire Wire Line
	6600 4350 6750 4350
Wire Wire Line
	6600 4600 6750 4600
Wire Wire Line
	6600 4850 6750 4850
Wire Wire Line
	5000 4850 5100 4850
Wire Wire Line
	5000 5150 5100 5150
Text GLabel 5100 4850 2    60   Input ~ 0
OUT1
Text GLabel 5100 5150 2    60   Input ~ 0
OUT2
Text GLabel 6750 4100 2    60   Input ~ 0
OUT1
Text GLabel 6750 4350 2    60   Input ~ 0
OUT2
Text GLabel 6750 4600 2    60   Input ~ 0
HALL1
Text GLabel 6750 4850 2    60   Input ~ 0
HALL2
$Comp
L pad U9
U 1 1 56EF5B7F
P 6600 5100
F 0 "U9" H 6600 5300 60  0000 C CNN
F 1 "pad" H 6600 5000 60  0000 C CNN
F 2 "pad_round:square_22x22" H 6600 5350 60  0001 C CNN
F 3 "" H 6600 5350 60  0000 C CNN
	1    6600 5100
	1    0    0    -1  
$EndComp
$Comp
L pad U10
U 1 1 56EF5BEA
P 6600 5350
F 0 "U10" H 6350 5200 60  0000 C CNN
F 1 "pad" H 6550 5200 60  0000 C CNN
F 2 "pad_round:square_22x22" H 6600 5600 60  0001 C CNN
F 3 "" H 6600 5600 60  0000 C CNN
	1    6600 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5100 6750 5100
Wire Wire Line
	6600 5350 6750 5350
$Comp
L GND #PWR022
U 1 1 56EF7333
P 4900 3950
F 0 "#PWR022" H 4900 3700 50  0001 C CNN
F 1 "GND" H 4900 3800 50  0000 C CNN
F 2 "" H 4900 3950 50  0000 C CNN
F 3 "" H 4900 3950 50  0000 C CNN
	1    4900 3950
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR023
U 1 1 56EF82AB
P 6750 5100
F 0 "#PWR023" H 6750 4950 50  0001 C CNN
F 1 "+3.3V" H 6750 5240 50  0000 C CNN
F 2 "" H 6750 5100 50  0000 C CNN
F 3 "" H 6750 5100 50  0000 C CNN
	1    6750 5100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR024
U 1 1 56EF899D
P 6750 5350
F 0 "#PWR024" H 6750 5100 50  0001 C CNN
F 1 "GND" H 6750 5200 50  0000 C CNN
F 2 "" H 6750 5350 50  0000 C CNN
F 3 "" H 6750 5350 50  0000 C CNN
	1    6750 5350
	1    0    0    -1  
$EndComp
$Comp
L pad U11
U 1 1 56EFC0B5
P 6450 4000
F 0 "U11" H 6450 4200 60  0000 C CNN
F 1 "pad" H 6450 3850 60  0000 C CNN
F 2 "pad_round:pad_square" H 6450 4250 60  0001 C CNN
F 3 "" H 6450 4250 60  0000 C CNN
	1    6450 4000
	1    0    0    -1  
$EndComp
$Comp
L pad U12
U 1 1 56EFC12C
P 6450 4250
F 0 "U12" H 6450 4450 60  0000 C CNN
F 1 "pad" H 6450 4100 60  0000 C CNN
F 2 "pad_round:pad_square" H 6450 4500 60  0001 C CNN
F 3 "" H 6450 4500 60  0000 C CNN
	1    6450 4250
	1    0    0    -1  
$EndComp
$Comp
L pad U13
U 1 1 56EFC472
P 6450 4500
F 0 "U13" H 6450 4700 60  0000 C CNN
F 1 "pad" H 6450 4350 60  0000 C CNN
F 2 "pad_round:pad_square" H 6450 4750 60  0001 C CNN
F 3 "" H 6450 4750 60  0000 C CNN
	1    6450 4500
	1    0    0    -1  
$EndComp
$Comp
L pad U14
U 1 1 56EFC4E9
P 6450 4750
F 0 "U14" H 6450 4950 60  0000 C CNN
F 1 "pad" H 6450 4600 60  0000 C CNN
F 2 "pad_round:pad_square" H 6450 5000 60  0001 C CNN
F 3 "" H 6450 5000 60  0000 C CNN
	1    6450 4750
	1    0    0    -1  
$EndComp
$Comp
L pad U15
U 1 1 56EFC567
P 6450 5000
F 0 "U15" H 6450 5200 60  0000 C CNN
F 1 "pad" H 6450 4850 60  0000 C CNN
F 2 "pad_round:pad_square" H 6450 5250 60  0001 C CNN
F 3 "" H 6450 5250 60  0000 C CNN
	1    6450 5000
	1    0    0    -1  
$EndComp
$Comp
L pad U16
U 1 1 56EFC5E8
P 6450 5250
F 0 "U16" H 6450 5450 60  0000 C CNN
F 1 "pad" H 6150 5150 60  0000 C CNN
F 2 "pad_round:pad_square" H 6450 5500 60  0001 C CNN
F 3 "" H 6450 5500 60  0000 C CNN
	1    6450 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5250 6650 5250
Wire Wire Line
	6650 5150 6650 5350
Connection ~ 6650 5350
Wire Wire Line
	6450 5000 6650 5000
Wire Wire Line
	6650 4900 6650 5100
Connection ~ 6650 5100
Wire Wire Line
	6450 4500 6650 4500
Wire Wire Line
	6650 4400 6650 4600
Wire Wire Line
	6450 4250 6650 4250
Wire Wire Line
	6650 4150 6650 4350
Wire Wire Line
	6450 4000 6650 4000
Wire Wire Line
	6650 3900 6650 4100
Wire Wire Line
	5000 4250 4800 4250
Wire Wire Line
	5000 4400 4800 4400
Text GLabel 4800 4250 0    60   Input ~ 0
A
Text GLabel 4800 4400 0    60   Input ~ 0
B
Wire Wire Line
	5000 3950 4900 3950
Wire Wire Line
	5000 4100 4800 4100
Text GLabel 4800 4100 0    60   Input ~ 0
VMOT
Wire Wire Line
	2900 2600 2900 2750
Connection ~ 2900 2600
Text GLabel 2900 2750 0    60   Input ~ 0
ADC
Wire Wire Line
	7750 1850 8000 1850
Text GLabel 8000 1850 2    60   Input ~ 0
ADC
Wire Wire Line
	6450 4750 6650 4750
Wire Wire Line
	6650 4650 6650 4850
Connection ~ 6650 4850
Connection ~ 6650 4600
Connection ~ 6650 4350
Connection ~ 6650 4100
Wire Notes Line
	5900 3800 7200 3800
Wire Notes Line
	7200 3800 7200 5600
Wire Notes Line
	7200 5600 5900 5600
Wire Notes Line
	5900 5600 5900 3800
Wire Notes Line
	4350 4650 5700 4650
Wire Notes Line
	5700 4650 5700 5400
Wire Notes Line
	5700 5400 4350 5400
Wire Notes Line
	4350 5400 4350 4650
Wire Notes Line
	4350 4550 4350 3800
Wire Wire Line
	1800 2650 1800 2550
Connection ~ 1800 2650
Connection ~ 6550 5350
$Comp
L pad U17
U 1 1 56F6A110
P 1800 5750
F 0 "U17" H 1600 5650 60  0000 C CNN
F 1 "MISO" H 1800 5650 60  0000 C CNN
F 2 "pad_round:pad_isp" H 1800 6000 60  0001 C CNN
F 3 "" H 1800 6000 60  0000 C CNN
	1    1800 5750
	-1   0    0    1   
$EndComp
$Comp
L pad U18
U 1 1 56F6A710
P 1800 5950
F 0 "U18" H 1600 5850 60  0000 C CNN
F 1 "SCK" H 1800 5850 60  0000 C CNN
F 2 "pad_round:pad_isp" H 1800 6200 60  0001 C CNN
F 3 "" H 1800 6200 60  0000 C CNN
	1    1800 5950
	-1   0    0    1   
$EndComp
$Comp
L pad U19
U 1 1 56F6A794
P 1800 6150
F 0 "U19" H 1600 6050 60  0000 C CNN
F 1 "RESET" H 1800 6050 60  0000 C CNN
F 2 "pad_round:pad_isp" H 1800 6400 60  0001 C CNN
F 3 "" H 1800 6400 60  0000 C CNN
	1    1800 6150
	-1   0    0    1   
$EndComp
$Comp
L pad U20
U 1 1 56F6A81F
P 2350 5750
F 0 "U20" H 2150 5850 60  0000 C CNN
F 1 "pad" H 2350 5850 60  0000 C CNN
F 2 "pad_round:pad_isp" H 2350 6000 60  0001 C CNN
F 3 "" H 2350 6000 60  0000 C CNN
	1    2350 5750
	1    0    0    -1  
$EndComp
$Comp
L pad U21
U 1 1 56F6AC43
P 2350 5950
F 0 "U21" H 2150 6050 60  0000 C CNN
F 1 "MOSI" H 2350 6050 60  0000 C CNN
F 2 "pad_round:pad_isp" H 2350 6200 60  0001 C CNN
F 3 "" H 2350 6200 60  0000 C CNN
	1    2350 5950
	1    0    0    -1  
$EndComp
$Comp
L pad U22
U 1 1 56F6ACD0
P 2350 6150
F 0 "U22" H 2150 6250 60  0000 C CNN
F 1 "pad" H 2350 6250 60  0000 C CNN
F 2 "pad_round:pad_isp" H 2350 6400 60  0001 C CNN
F 3 "" H 2350 6400 60  0000 C CNN
	1    2350 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6150 2450 6150
Wire Wire Line
	2350 5950 2450 5950
Wire Wire Line
	2350 5750 2450 5750
Wire Wire Line
	1800 5750 1700 5750
Wire Wire Line
	1800 5950 1700 5950
Wire Wire Line
	1800 6150 1700 6150
Wire Wire Line
	7850 3050 7850 3250
Wire Wire Line
	7850 3250 7950 3250
Connection ~ 7850 3050
Text GLabel 7950 3250 2    60   Input ~ 0
RESET
Text GLabel 1700 6150 0    60   Input ~ 0
RESET
Text GLabel 1700 5950 0    60   Input ~ 0
DIR
$Comp
L +3.3V #PWR025
U 1 1 56F72E64
P 2450 5750
F 0 "#PWR025" H 2450 5600 50  0001 C CNN
F 1 "+3.3V" H 2450 5890 50  0000 C CNN
F 2 "" H 2450 5750 50  0000 C CNN
F 3 "" H 2450 5750 50  0000 C CNN
	1    2450 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 56F73B67
P 2450 6150
F 0 "#PWR026" H 2450 5900 50  0001 C CNN
F 1 "GND" H 2450 6000 50  0000 C CNN
F 2 "" H 2450 6150 50  0000 C CNN
F 3 "" H 2450 6150 50  0000 C CNN
	1    2450 6150
	1    0    0    -1  
$EndComp
Text GLabel 1700 5750 0    60   Input ~ 0
IN1H
Text GLabel 2450 5950 2    60   Input ~ 0
IN2H
$Comp
L pad U23
U 1 1 56FC2159
P 5000 3950
F 0 "U23" H 4800 4050 60  0000 C CNN
F 1 "pad" H 5000 4050 60  0000 C CNN
F 2 "pad_round:pad_zlacze" H 5000 4200 60  0001 C CNN
F 3 "" H 5000 4200 60  0000 C CNN
	1    5000 3950
	-1   0    0    1   
$EndComp
$Comp
L pad U24
U 1 1 56FC26C3
P 5000 4100
F 0 "U24" H 4800 4200 60  0000 C CNN
F 1 "pad" H 5000 4200 60  0000 C CNN
F 2 "pad_round:pad_zlacze" H 5000 4350 60  0001 C CNN
F 3 "" H 5000 4350 60  0000 C CNN
	1    5000 4100
	-1   0    0    1   
$EndComp
$Comp
L pad U25
U 1 1 56FC274E
P 5000 4250
F 0 "U25" H 4800 4350 60  0000 C CNN
F 1 "pad" H 5000 4350 60  0000 C CNN
F 2 "pad_round:pad_zlacze" H 5000 4500 60  0001 C CNN
F 3 "" H 5000 4500 60  0000 C CNN
	1    5000 4250
	-1   0    0    1   
$EndComp
$Comp
L pad U26
U 1 1 56FC27DC
P 5000 4400
F 0 "U26" H 4800 4500 60  0000 C CNN
F 1 "pad" H 5000 4500 60  0000 C CNN
F 2 "pad_round:pad_zlacze" H 5000 4650 60  0001 C CNN
F 3 "" H 5000 4650 60  0000 C CNN
	1    5000 4400
	-1   0    0    1   
$EndComp
$Comp
L pad U27
U 1 1 56FC4D13
P 6150 4000
F 0 "U27" H 6150 4200 60  0000 C CNN
F 1 "pad" H 6150 3850 60  0000 C CNN
F 2 "pad_round:square_22x22" H 6150 4250 60  0001 C CNN
F 3 "" H 6150 4250 60  0000 C CNN
	1    6150 4000
	1    0    0    -1  
$EndComp
$Comp
L pad U28
U 1 1 56FC4DB7
P 6150 4250
F 0 "U28" H 6150 4450 60  0000 C CNN
F 1 "pad" H 6150 4100 60  0000 C CNN
F 2 "pad_round:square_22x22" H 6150 4500 60  0001 C CNN
F 3 "" H 6150 4500 60  0000 C CNN
	1    6150 4250
	1    0    0    -1  
$EndComp
$Comp
L pad U29
U 1 1 56FC4E56
P 6150 4500
F 0 "U29" H 6150 4700 60  0000 C CNN
F 1 "pad" H 6150 4350 60  0000 C CNN
F 2 "pad_round:square_22x22" H 6150 4750 60  0001 C CNN
F 3 "" H 6150 4750 60  0000 C CNN
	1    6150 4500
	1    0    0    -1  
$EndComp
$Comp
L pad U30
U 1 1 56FC4EF6
P 6150 4750
F 0 "U30" H 6150 4950 60  0000 C CNN
F 1 "pad" H 6150 4600 60  0000 C CNN
F 2 "pad_round:square_22x22" H 6150 5000 60  0001 C CNN
F 3 "" H 6150 5000 60  0000 C CNN
	1    6150 4750
	1    0    0    -1  
$EndComp
$Comp
L pad U31
U 1 1 56FC4F9D
P 6150 5000
F 0 "U31" H 6150 5200 60  0000 C CNN
F 1 "pad" H 6150 4850 60  0000 C CNN
F 2 "pad_round:square_22x22" H 6150 5250 60  0001 C CNN
F 3 "" H 6150 5250 60  0000 C CNN
	1    6150 5000
	1    0    0    -1  
$EndComp
$Comp
L pad U32
U 1 1 56FC5043
P 6150 5250
F 0 "U32" H 6150 5450 60  0000 C CNN
F 1 "pad" H 6150 5100 60  0000 C CNN
F 2 "pad_round:square_22x22" H 6150 5500 60  0001 C CNN
F 3 "" H 6150 5500 60  0000 C CNN
	1    6150 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4000 6200 4000
Wire Wire Line
	6200 4000 6200 3900
Wire Wire Line
	6200 3900 6650 3900
Connection ~ 6650 4000
Wire Wire Line
	6150 4250 6200 4250
Wire Wire Line
	6200 4250 6200 4150
Wire Wire Line
	6200 4150 6650 4150
Connection ~ 6650 4250
Wire Wire Line
	6150 4500 6150 4400
Wire Wire Line
	6150 4400 6650 4400
Connection ~ 6650 4500
Wire Wire Line
	6150 4750 6150 4650
Wire Wire Line
	6150 4650 6650 4650
Connection ~ 6650 4750
Wire Wire Line
	6150 5000 6150 4900
Wire Wire Line
	6150 4900 6650 4900
Connection ~ 6650 5000
Wire Wire Line
	6150 5250 6150 5150
Wire Wire Line
	6150 5150 6650 5150
Connection ~ 6650 5250
$EndSCHEMATC
