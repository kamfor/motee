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
LIBS:stm32f103T8U
LIBS:drv8801
LIBS:pad
LIBS:sn65hvd3082edgk
LIBS:TLE4946-2K
LIBS:lp38693
LIBS:micro-usb
LIBS:motee_v3-cache
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
L STM32F103 U1
U 1 1 577A59CC
P 6450 3700
F 0 "U1" H 6050 5300 60  0000 C CNN
F 1 "STM32F103" H 6250 2600 60  0000 C CNN
F 2 "stm32f103t8u:untitled-QFN50P600X600X100-37N" H 6450 3700 60  0001 C CNN
F 3 "" H 6450 3700 60  0000 C CNN
	1    6450 3700
	1    0    0    -1  
$EndComp
$Comp
L DRV8801 U2
U 1 1 577A6371
P 3250 2950
F 0 "U2" H 3000 3850 60  0000 C CNN
F 1 "DRV8801" H 3100 2300 60  0000 C CNN
F 2 "Housings_DFN_QFN:UQFN-16-1EP_4x4mm_Pitch0.65mm" H 3250 2950 60  0001 C CNN
F 3 "" H 3250 2950 60  0000 C CNN
	1    3250 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 577A65BD
P 2650 3500
F 0 "#PWR01" H 2650 3250 50  0001 C CNN
F 1 "GND" H 2650 3350 50  0000 C CNN
F 2 "" H 2650 3500 50  0000 C CNN
F 3 "" H 2650 3500 50  0000 C CNN
	1    2650 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 577A664B
P 5650 2850
F 0 "#PWR02" H 5650 2600 50  0001 C CNN
F 1 "GND" H 5650 2700 50  0000 C CNN
F 2 "" H 5650 2850 50  0000 C CNN
F 3 "" H 5650 2850 50  0000 C CNN
	1    5650 2850
	1    0    0    -1  
$EndComp
$Comp
L +8V #PWR03
U 1 1 577A67CC
P 2450 3150
F 0 "#PWR03" H 2450 3000 50  0001 C CNN
F 1 "+8V" H 2450 3290 50  0000 C CNN
F 2 "" H 2450 3150 50  0000 C CNN
F 3 "" H 2450 3150 50  0000 C CNN
	1    2450 3150
	0    -1   -1   0   
$EndComp
Text GLabel 3900 2900 2    60   Input ~ 0
PWM
Text GLabel 3900 2800 2    60   Input ~ 0
IN2
Text GLabel 3900 2700 2    60   Input ~ 0
IN1
$Comp
L +3.3V #PWR04
U 1 1 577A6FD7
P 5650 2300
F 0 "#PWR04" H 5650 2150 50  0001 C CNN
F 1 "+3.3V" H 5650 2440 50  0000 C CNN
F 2 "" H 5650 2300 50  0000 C CNN
F 3 "" H 5650 2300 50  0000 C CNN
	1    5650 2300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 577A707D
P 4900 3600
F 0 "#PWR05" H 4900 3450 50  0001 C CNN
F 1 "+3.3V" H 4900 3740 50  0000 C CNN
F 2 "" H 4900 3600 50  0000 C CNN
F 3 "" H 4900 3600 50  0000 C CNN
	1    4900 3600
	1    0    0    -1  
$EndComp
$Comp
L L_Small L1
U 1 1 577A71BE
P 5050 3650
F 0 "L1" H 5080 3690 50  0000 L CNN
F 1 "10uH" H 5080 3610 50  0000 L CNN
F 2 "SMD_Packages:SMD-1206_Pol" H 5050 3650 50  0001 C CNN
F 3 "" H 5050 3650 50  0000 C CNN
	1    5050 3650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 577A72B0
P 5600 3750
F 0 "#PWR06" H 5600 3500 50  0001 C CNN
F 1 "GND" H 5600 3600 50  0000 C CNN
F 2 "" H 5600 3750 50  0000 C CNN
F 3 "" H 5600 3750 50  0000 C CNN
	1    5600 3750
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 577A7347
P 5550 3900
F 0 "R5" V 5630 3900 50  0000 C CNN
F 1 "10k" V 5550 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 5480 3900 50  0001 C CNN
F 3 "" H 5550 3900 50  0000 C CNN
	1    5550 3900
	0    1    1    0   
$EndComp
$Comp
L C_Small C1
U 1 1 577A7895
P 2650 2650
F 0 "C1" H 2660 2720 50  0000 L CNN
F 1 "0.1uF" H 2660 2570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2650 2650 50  0001 C CNN
F 3 "" H 2650 2650 50  0000 C CNN
	1    2650 2650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 577A7916
P 2650 3050
F 0 "C2" H 2660 3120 50  0000 L CNN
F 1 "0.1uF" H 2660 2970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2650 3050 50  0001 C CNN
F 3 "" H 2650 3050 50  0000 C CNN
	1    2650 3050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 577A7A9A
P 5200 3750
F 0 "C3" H 5210 3820 50  0000 L CNN
F 1 "100nF" H 5200 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5200 3750 50  0001 C CNN
F 3 "" H 5200 3750 50  0000 C CNN
	1    5200 3750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 577A7FCA
P 5350 3900
F 0 "#PWR07" H 5350 3750 50  0001 C CNN
F 1 "+3.3V" H 5350 4040 50  0000 C CNN
F 2 "" H 5350 3900 50  0000 C CNN
F 3 "" H 5350 3900 50  0000 C CNN
	1    5350 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 577A8415
P 5200 3850
F 0 "#PWR08" H 5200 3600 50  0001 C CNN
F 1 "GND" H 5200 3700 50  0000 C CNN
F 2 "" H 5200 3850 50  0000 C CNN
F 3 "" H 5200 3850 50  0000 C CNN
	1    5200 3850
	1    0    0    -1  
$EndComp
$Comp
L TLE4946-2K U3
U 1 1 577BF298
P 3200 4950
F 0 "U3" H 3200 5250 60  0000 C CNN
F 1 "TLE4946-2K" H 3300 4600 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3300 4600 60  0001 C CNN
F 3 "" H 3300 4600 60  0000 C CNN
	1    3200 4950
	1    0    0    -1  
$EndComp
$Comp
L TLE4946-2K U4
U 1 1 577BF61F
P 3200 5700
F 0 "U4" H 3200 6000 60  0000 C CNN
F 1 "TLE4946-2K" H 3300 5350 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3300 5350 60  0001 C CNN
F 3 "" H 3300 5350 60  0000 C CNN
	1    3200 5700
	1    0    0    -1  
$EndComp
$Comp
L SN65HVD3082EDGK J1
U 1 1 577BF6CC
P 9200 2700
F 0 "J1" H 9100 3200 60  0000 C CNN
F 1 "SN65HVD3082EDGK" H 9300 2550 60  0000 C CNN
F 2 "SN65HVD3082EDGK:VSSOP8_P0.65mm_W3mm" H 9300 2550 60  0001 C CNN
F 3 "" H 9300 2550 60  0000 C CNN
	1    9200 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 577BFEE8
P 3700 5050
F 0 "#PWR09" H 3700 4800 50  0001 C CNN
F 1 "GND" H 3700 4900 50  0000 C CNN
F 2 "" H 3700 5050 50  0000 C CNN
F 3 "" H 3700 5050 50  0000 C CNN
	1    3700 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 577C00F1
P 3650 5800
F 0 "#PWR010" H 3650 5550 50  0001 C CNN
F 1 "GND" H 3650 5650 50  0000 C CNN
F 2 "" H 3650 5800 50  0000 C CNN
F 3 "" H 3650 5800 50  0000 C CNN
	1    3650 5800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR011
U 1 1 577C0700
P 2800 4650
F 0 "#PWR011" H 2800 4500 50  0001 C CNN
F 1 "+3.3V" H 2800 4790 50  0000 C CNN
F 2 "" H 2800 4650 50  0000 C CNN
F 3 "" H 2800 4650 50  0000 C CNN
	1    2800 4650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR012
U 1 1 577C0729
P 2800 5450
F 0 "#PWR012" H 2800 5300 50  0001 C CNN
F 1 "+3.3V" H 2800 5590 50  0000 C CNN
F 2 "" H 2800 5450 50  0000 C CNN
F 3 "" H 2800 5450 50  0000 C CNN
	1    2800 5450
	1    0    0    -1  
$EndComp
Text GLabel 2600 5200 0    60   Input ~ 0
HALL1
Text GLabel 2650 5950 0    60   Input ~ 0
HALL2
$Comp
L R R2
U 1 1 577C137A
P 2550 2350
F 0 "R2" V 2630 2350 50  0000 C CNN
F 1 "100k" V 2550 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 2480 2350 50  0001 C CNN
F 3 "" H 2550 2350 50  0000 C CNN
	1    2550 2350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR013
U 1 1 577C18C2
P 2150 2550
F 0 "#PWR013" H 2150 2300 50  0001 C CNN
F 1 "GND" H 2150 2400 50  0000 C CNN
F 2 "" H 2150 2550 50  0000 C CNN
F 3 "" H 2150 2550 50  0000 C CNN
	1    2150 2550
	1    0    0    -1  
$EndComp
Text GLabel 2400 2500 3    60   Input ~ 0
ADC
$Comp
L R R1
U 1 1 577C1B57
P 2450 2200
F 0 "R1" V 2530 2200 50  0000 C CNN
F 1 "0.2 R" V 2450 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 2380 2200 50  0001 C CNN
F 3 "" H 2450 2200 50  0000 C CNN
	1    2450 2200
	0    1    1    0   
$EndComp
$Comp
L pad_round U5
U 1 1 577C24F9
P 4200 3950
F 0 "U5" H 4150 4250 60  0000 C CNN
F 1 "pad_round" H 4200 4000 60  0000 C CNN
F 2 "pad_round:pad_round" H 4200 4000 60  0001 C CNN
F 3 "" H 4200 4000 60  0000 C CNN
	1    4200 3950
	-1   0    0    1   
$EndComp
$Comp
L pad_round U6
U 1 1 577C268F
P 4200 4100
F 0 "U6" H 4150 4400 60  0000 C CNN
F 1 "pad_round" H 4200 4150 60  0000 C CNN
F 2 "pad_round:pad_round" H 4200 4150 60  0001 C CNN
F 3 "" H 4200 4150 60  0000 C CNN
	1    4200 4100
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 577C2EC8
P 3850 2050
F 0 "R3" V 3930 2050 50  0000 C CNN
F 1 "10k" V 3850 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 3780 2050 50  0001 C CNN
F 3 "" H 3850 2050 50  0000 C CNN
	1    3850 2050
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 577C32CB
P 4050 2200
F 0 "R4" V 4130 2200 50  0000 C CNN
F 1 "10k" V 4050 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 3980 2200 50  0001 C CNN
F 3 "" H 4050 2200 50  0000 C CNN
	1    4050 2200
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR014
U 1 1 577C37C4
P 3950 1850
F 0 "#PWR014" H 3950 1700 50  0001 C CNN
F 1 "+3.3V" H 3950 1990 50  0000 C CNN
F 2 "" H 3950 1850 50  0000 C CNN
F 3 "" H 3950 1850 50  0000 C CNN
	1    3950 1850
	1    0    0    -1  
$EndComp
Text GLabel 4250 2350 2    60   Input ~ 0
nFAULT
Text GLabel 4250 2200 2    60   Input ~ 0
nSLEEP
Text GLabel 3900 3000 2    60   Input ~ 0
PHASE
$Comp
L GND #PWR015
U 1 1 577C5AFD
P 9700 2750
F 0 "#PWR015" H 9700 2500 50  0001 C CNN
F 1 "GND" H 9700 2600 50  0000 C CNN
F 2 "" H 9700 2750 50  0000 C CNN
F 3 "" H 9700 2750 50  0000 C CNN
	1    9700 2750
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 577C6368
P 8750 2250
F 0 "R6" V 8830 2250 50  0000 C CNN
F 1 "10K" V 8750 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 8680 2250 50  0001 C CNN
F 3 "" H 8750 2250 50  0000 C CNN
	1    8750 2250
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 577C6912
P 8750 2750
F 0 "R7" V 8830 2750 50  0000 C CNN
F 1 "10k" V 8750 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 8680 2750 50  0001 C CNN
F 3 "" H 8750 2750 50  0000 C CNN
	1    8750 2750
	-1   0    0    1   
$EndComp
Text GLabel 8550 2700 0    60   Input ~ 0
MCU_TXD0
Text GLabel 8550 2600 0    60   Input ~ 0
DIR
Text GLabel 8550 2400 0    60   Input ~ 0
MCU_RXD0
Text GLabel 9900 2500 2    60   Input ~ 0
B
Text GLabel 9900 2600 2    60   Input ~ 0
A
$Comp
L +3.3V #PWR016
U 1 1 577C74CE
P 8750 2050
F 0 "#PWR016" H 8750 1900 50  0001 C CNN
F 1 "+3.3V" H 8750 2190 50  0000 C CNN
F 2 "" H 8750 2050 50  0000 C CNN
F 3 "" H 8750 2050 50  0000 C CNN
	1    8750 2050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR017
U 1 1 577C77DF
P 9750 2300
F 0 "#PWR017" H 9750 2150 50  0001 C CNN
F 1 "+3.3V" H 9750 2440 50  0000 C CNN
F 2 "" H 9750 2300 50  0000 C CNN
F 3 "" H 9750 2300 50  0000 C CNN
	1    9750 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 577C7820
P 8750 2950
F 0 "#PWR018" H 8750 2700 50  0001 C CNN
F 1 "GND" H 8750 2800 50  0000 C CNN
F 2 "" H 8750 2950 50  0000 C CNN
F 3 "" H 8750 2950 50  0000 C CNN
	1    8750 2950
	1    0    0    -1  
$EndComp
Text GLabel 7200 2300 2    60   Input ~ 0
HALL1
Text GLabel 7200 2400 2    60   Input ~ 0
HALL2
Text GLabel 7250 3850 2    60   Input ~ 0
PWM
Text GLabel 7250 3550 2    60   Input ~ 0
D-
Text GLabel 7250 3750 2    60   Input ~ 0
MCU_TXD0
Text GLabel 7250 3950 2    60   Input ~ 0
nSLEEP
Text GLabel 7250 4050 2    60   Input ~ 0
nFAULT
Text GLabel 7200 4550 2    60   Input ~ 0
ADC
Text GLabel 7250 3650 2    60   Input ~ 0
MCU_RXD0
Text GLabel 7250 3450 2    60   Input ~ 0
D+
Text GLabel 7250 4150 2    60   Input ~ 0
DIR
$Comp
L LP38693 U9
U 1 1 577CEC2B
P 9500 5400
F 0 "U9" H 9450 5850 60  0000 C CNN
F 1 "LP38693" H 9700 4800 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 9500 5400 60  0001 C CNN
F 3 "" H 9500 5400 60  0000 C CNN
	1    9500 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 577CF970
P 9250 5850
F 0 "#PWR019" H 9250 5600 50  0001 C CNN
F 1 "GND" H 9250 5700 50  0000 C CNN
F 2 "" H 9250 5850 50  0000 C CNN
F 3 "" H 9250 5850 50  0000 C CNN
	1    9250 5850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR020
U 1 1 577CF9BD
P 10300 5150
F 0 "#PWR020" H 10300 5000 50  0001 C CNN
F 1 "+3.3V" H 10300 5290 50  0000 C CNN
F 2 "" H 10300 5150 50  0000 C CNN
F 3 "" H 10300 5150 50  0000 C CNN
	1    10300 5150
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 577CFCE2
P 10100 5350
F 0 "R9" V 10180 5350 50  0000 C CNN
F 1 "1k" V 10100 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 10030 5350 50  0001 C CNN
F 3 "" H 10100 5350 50  0000 C CNN
	1    10100 5350
	-1   0    0    1   
$EndComp
$Comp
L C_Small C10
U 1 1 577D150E
P 8750 5400
F 0 "C10" H 8760 5470 50  0000 L CNN
F 1 "1uF" H 8750 5300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 8750 5400 50  0001 C CNN
F 3 "" H 8750 5400 50  0000 C CNN
	1    8750 5400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR021
U 1 1 577D406D
P 8750 5550
F 0 "#PWR021" H 8750 5300 50  0001 C CNN
F 1 "GND" H 8750 5400 50  0000 C CNN
F 2 "" H 8750 5550 50  0000 C CNN
F 3 "" H 8750 5550 50  0000 C CNN
	1    8750 5550
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C12
U 1 1 577D4BB9
P 10300 5300
F 0 "C12" H 10310 5370 50  0000 L CNN
F 1 "1uF" H 10310 5220 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10300 5300 50  0001 C CNN
F 3 "" H 10300 5300 50  0000 C CNN
	1    10300 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 577D5240
P 10300 5500
F 0 "#PWR022" H 10300 5250 50  0001 C CNN
F 1 "GND" H 10300 5350 50  0000 C CNN
F 2 "" H 10300 5500 50  0000 C CNN
F 3 "" H 10300 5500 50  0000 C CNN
	1    10300 5500
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C8
U 1 1 577D5793
P 8600 5400
F 0 "C8" H 8610 5470 50  0000 L CNN
F 1 "1uF" H 8610 5320 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeT_EIA-3528" H 8600 5400 50  0001 C CNN
F 3 "" H 8600 5400 50  0000 C CNN
	1    8600 5400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 577D7C5A
P 5550 2600
F 0 "C6" H 5560 2670 50  0000 L CNN
F 1 "100nf" H 5550 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5550 2600 50  0001 C CNN
F 3 "" H 5550 2600 50  0000 C CNN
	1    5550 2600
	-1   0    0    1   
$EndComp
Connection ~ 5650 2400
Wire Wire Line
	9950 5500 10100 5500
Connection ~ 9950 5200
Wire Wire Line
	9950 5200 10300 5200
Wire Wire Line
	9950 5200 9950 5350
Wire Wire Line
	7250 4150 7100 4150
Wire Wire Line
	7100 3450 7250 3450
Wire Wire Line
	7100 4550 7200 4550
Wire Wire Line
	7250 4050 7100 4050
Wire Wire Line
	7100 3950 7250 3950
Wire Wire Line
	7100 3550 7250 3550
Wire Wire Line
	7100 3650 7250 3650
Wire Wire Line
	7100 3750 7250 3750
Wire Wire Line
	7100 3850 7250 3850
Wire Wire Line
	7100 2300 7200 2300
Wire Wire Line
	7100 2400 7200 2400
Wire Wire Line
	8750 2050 8750 2100
Wire Wire Line
	8750 2950 8750 2900
Wire Wire Line
	9700 2700 9700 2750
Wire Wire Line
	9650 2700 9700 2700
Wire Wire Line
	9650 2600 9900 2600
Wire Wire Line
	9650 2500 9900 2500
Wire Wire Line
	9750 2400 9750 2300
Wire Wire Line
	9650 2400 9750 2400
Connection ~ 8750 2600
Wire Wire Line
	8750 2500 8750 2600
Wire Wire Line
	8750 2500 8900 2500
Wire Wire Line
	8550 2600 8900 2600
Wire Wire Line
	8550 2700 8900 2700
Wire Wire Line
	8550 2400 8900 2400
Wire Wire Line
	3800 3000 3900 3000
Connection ~ 3950 1850
Connection ~ 4050 2350
Connection ~ 3850 2200
Wire Wire Line
	3850 1850 3850 1900
Wire Wire Line
	3850 1850 4050 1850
Wire Wire Line
	4050 1850 4050 2050
Wire Wire Line
	3800 2200 4250 2200
Wire Wire Line
	3800 2350 4250 2350
Wire Wire Line
	3950 3400 3800 3400
Wire Wire Line
	3800 3250 3950 3250
Connection ~ 2150 2350
Wire Wire Line
	2300 2200 2150 2200
Wire Wire Line
	2750 2200 2600 2200
Wire Wire Line
	2150 2200 2150 2550
Connection ~ 2400 2350
Wire Wire Line
	2400 2500 2400 2500
Wire Wire Line
	2400 2350 2400 2500
Wire Wire Line
	2750 2350 2700 2350
Wire Wire Line
	3650 5750 3650 5800
Wire Wire Line
	3550 5750 3650 5750
Wire Wire Line
	3700 5000 3700 5050
Wire Wire Line
	3550 5000 3700 5000
Wire Wire Line
	2800 4800 2800 4650
Wire Wire Line
	2900 4800 2800 4800
Wire Wire Line
	2900 5200 2600 5200
Wire Wire Line
	2800 5550 2800 5450
Wire Wire Line
	2900 5550 2800 5550
Wire Wire Line
	2900 5950 2650 5950
Wire Wire Line
	5650 2850 5750 2850
Wire Wire Line
	5650 2650 5650 2850
Wire Wire Line
	5650 2650 5750 2650
Wire Wire Line
	5550 2750 5750 2750
Connection ~ 5650 2750
Wire Wire Line
	5650 2300 5750 2300
Wire Wire Line
	5750 2400 5650 2400
Connection ~ 5650 2850
Wire Wire Line
	2750 3300 2650 3300
Wire Wire Line
	2650 3300 2650 3500
Wire Wire Line
	2750 3400 2650 3400
Connection ~ 2650 3400
Wire Wire Line
	2450 3150 2750 3150
Wire Wire Line
	2750 2950 2650 2950
Wire Wire Line
	3800 2700 3900 2700
Wire Wire Line
	3800 2800 3900 2800
Wire Wire Line
	3800 2900 3900 2900
Wire Wire Line
	2750 2550 2650 2550
Wire Wire Line
	2750 2750 2650 2750
Wire Wire Line
	5750 3750 5600 3750
Wire Wire Line
	5150 3650 5750 3650
Connection ~ 5200 3650
Wire Wire Line
	4950 3650 4900 3650
Wire Wire Line
	4900 3650 4900 3600
Wire Wire Line
	5750 3900 5700 3900
Connection ~ 10100 5200
Wire Wire Line
	5650 2300 5650 2500
Wire Wire Line
	5650 2750 5650 2700
Wire Wire Line
	8750 5500 8750 5550
Wire Wire Line
	10300 5200 10300 5150
Wire Wire Line
	10300 5400 10300 5500
Connection ~ 10300 5200
Wire Wire Line
	8600 5500 8600 5550
Wire Wire Line
	8600 5550 8750 5550
Wire Wire Line
	8600 5200 8850 5200
Wire Wire Line
	8600 5100 8600 5300
Wire Wire Line
	8850 5300 8750 5300
Wire Wire Line
	8750 5300 8750 5200
Connection ~ 8750 5200
Connection ~ 8600 5200
Connection ~ 8750 5300
Connection ~ 8750 5550
Connection ~ 8750 2400
Connection ~ 2650 3150
Connection ~ 5650 2500
Wire Wire Line
	5550 2500 5750 2500
Wire Wire Line
	5550 2700 5550 2750
Text GLabel 5400 5100 2    60   Input ~ 0
VBUS
Text GLabel 5400 5200 2    60   Input ~ 0
D+
Text GLabel 5400 5300 2    60   Input ~ 0
D-
$Comp
L GND #PWR023
U 1 1 578FC5EE
P 5400 5400
F 0 "#PWR023" H 5400 5150 50  0001 C CNN
F 1 "GND" H 5400 5250 50  0000 C CNN
F 2 "" H 5400 5400 50  0000 C CNN
F 3 "" H 5400 5400 50  0000 C CNN
	1    5400 5400
	0    -1   -1   0   
$EndComp
$Comp
L LP38693 U8
U 1 1 578FDA1D
P 9500 4000
F 0 "U8" H 9450 4450 60  0000 C CNN
F 1 "LP38693" H 9700 3400 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 9500 4000 60  0001 C CNN
F 3 "" H 9500 4000 60  0000 C CNN
	1    9500 4000
	1    0    0    -1  
$EndComp
$Comp
L +8V #PWR024
U 1 1 578FDA23
P 8600 3700
F 0 "#PWR024" H 8600 3550 50  0001 C CNN
F 1 "+8V" H 8600 3840 50  0000 C CNN
F 2 "" H 8600 3700 50  0000 C CNN
F 3 "" H 8600 3700 50  0000 C CNN
	1    8600 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 578FDA29
P 9250 4450
F 0 "#PWR025" H 9250 4200 50  0001 C CNN
F 1 "GND" H 9250 4300 50  0000 C CNN
F 2 "" H 9250 4450 50  0000 C CNN
F 3 "" H 9250 4450 50  0000 C CNN
	1    9250 4450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR026
U 1 1 578FDA2F
P 10300 3750
F 0 "#PWR026" H 10300 3600 50  0001 C CNN
F 1 "+3.3V" H 10300 3890 50  0000 C CNN
F 2 "" H 10300 3750 50  0000 C CNN
F 3 "" H 10300 3750 50  0000 C CNN
	1    10300 3750
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 578FDA35
P 10100 3950
F 0 "R8" V 10180 3950 50  0000 C CNN
F 1 "1k" V 10100 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 10030 3950 50  0001 C CNN
F 3 "" H 10100 3950 50  0000 C CNN
	1    10100 3950
	-1   0    0    1   
$EndComp
$Comp
L C_Small C9
U 1 1 578FDA3B
P 8750 4000
F 0 "C9" H 8760 4070 50  0000 L CNN
F 1 "1uF" H 8750 3900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 8750 4000 50  0001 C CNN
F 3 "" H 8750 4000 50  0000 C CNN
	1    8750 4000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR027
U 1 1 578FDA41
P 8750 4150
F 0 "#PWR027" H 8750 3900 50  0001 C CNN
F 1 "GND" H 8750 4000 50  0000 C CNN
F 2 "" H 8750 4150 50  0000 C CNN
F 3 "" H 8750 4150 50  0000 C CNN
	1    8750 4150
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C11
U 1 1 578FDA47
P 10300 3900
F 0 "C11" H 10310 3970 50  0000 L CNN
F 1 "1uF" H 10310 3820 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeT_EIA-3528" H 10300 3900 50  0001 C CNN
F 3 "" H 10300 3900 50  0000 C CNN
	1    10300 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 578FDA4D
P 10300 4100
F 0 "#PWR028" H 10300 3850 50  0001 C CNN
F 1 "GND" H 10300 3950 50  0000 C CNN
F 2 "" H 10300 4100 50  0000 C CNN
F 3 "" H 10300 4100 50  0000 C CNN
	1    10300 4100
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C7
U 1 1 578FDA53
P 8600 4000
F 0 "C7" H 8610 4070 50  0000 L CNN
F 1 "1uF" H 8610 3920 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeT_EIA-3528" H 8600 4000 50  0001 C CNN
F 3 "" H 8600 4000 50  0000 C CNN
	1    8600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 4100 10100 4100
Connection ~ 9950 3800
Wire Wire Line
	9950 3800 10300 3800
Wire Wire Line
	9950 3800 9950 3950
Connection ~ 10100 3800
Wire Wire Line
	8750 4100 8750 4150
Wire Wire Line
	10300 3800 10300 3750
Wire Wire Line
	10300 4000 10300 4100
Connection ~ 10300 3800
Wire Wire Line
	8600 4100 8600 4150
Wire Wire Line
	8600 4150 8750 4150
Wire Wire Line
	8600 3800 8850 3800
Wire Wire Line
	8600 3700 8600 3900
Wire Wire Line
	8850 3900 8750 3900
Wire Wire Line
	8750 3900 8750 3800
Connection ~ 8750 3800
Connection ~ 8600 3800
Connection ~ 8750 3900
Connection ~ 8750 4150
Text GLabel 8600 5100 0    60   Input ~ 0
VBUS
$Comp
L micro-usb U7
U 1 1 57908FDE
P 5050 5250
F 0 "U7" H 4900 5550 60  0000 C CNN
F 1 "micro-usb" H 5100 4950 60  0000 C CNN
F 2 "mikrousb:microusb-USB-MICRO-SMD" H 5050 5250 60  0001 C CNN
F 3 "" H 5050 5250 60  0000 C CNN
	1    5050 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5100 5400 5100
Wire Wire Line
	5300 5200 5400 5200
Wire Wire Line
	5300 5300 5400 5300
Wire Wire Line
	5300 5400 5400 5400
$Comp
L pad U19
U 1 1 57961E60
P 6900 5700
F 0 "U19" H 6750 5800 60  0000 C CNN
F 1 "pad" H 6750 5600 60  0000 C CNN
F 2 "pad_round:pad_square" H 6900 5950 60  0001 C CNN
F 3 "" H 6900 5950 60  0000 C CNN
	1    6900 5700
	1    0    0    -1  
$EndComp
$Comp
L pad U20
U 1 1 579620CD
P 6900 5850
F 0 "U20" H 6750 5950 60  0000 C CNN
F 1 "pad" H 6750 5750 60  0000 C CNN
F 2 "pad_round:pad_square" H 6900 6100 60  0001 C CNN
F 3 "" H 6900 6100 60  0000 C CNN
	1    6900 5850
	1    0    0    -1  
$EndComp
$Comp
L pad U21
U 1 1 57962148
P 6900 6000
F 0 "U21" H 6750 6100 60  0000 C CNN
F 1 "pad" H 6750 5900 60  0000 C CNN
F 2 "pad_round:pad_square" H 6900 6250 60  0001 C CNN
F 3 "" H 6900 6250 60  0000 C CNN
	1    6900 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4250 7250 4250
Wire Wire Line
	7100 4350 7250 4350
Text GLabel 7250 4250 2    60   Input ~ 0
IN1
Text GLabel 7250 4350 2    60   Input ~ 0
IN2
$Comp
L pad U16
U 1 1 57964346
P 6550 5700
F 0 "U16" H 6400 5800 60  0000 C CNN
F 1 "pad" H 6400 5600 60  0000 C CNN
F 2 "pad_round:pad_square" H 6550 5950 60  0001 C CNN
F 3 "" H 6550 5950 60  0000 C CNN
	1    6550 5700
	1    0    0    -1  
$EndComp
$Comp
L pad U17
U 1 1 5796434C
P 6550 5850
F 0 "U17" H 6400 5950 60  0000 C CNN
F 1 "pad" H 6400 5750 60  0000 C CNN
F 2 "pad_round:pad_square" H 6550 6100 60  0001 C CNN
F 3 "" H 6550 6100 60  0000 C CNN
	1    6550 5850
	1    0    0    -1  
$EndComp
$Comp
L pad U18
U 1 1 57964352
P 6550 6000
F 0 "U18" H 6400 6100 60  0000 C CNN
F 1 "pad" H 6400 5900 60  0000 C CNN
F 2 "pad_round:pad_square" H 6550 6250 60  0001 C CNN
F 3 "" H 6550 6250 60  0000 C CNN
	1    6550 6000
	1    0    0    -1  
$EndComp
$Comp
L pad U13
U 1 1 57964811
P 6200 5700
F 0 "U13" H 6050 5800 60  0000 C CNN
F 1 "pad" H 6050 5600 60  0000 C CNN
F 2 "pad_round:pad_square" H 6200 5950 60  0001 C CNN
F 3 "" H 6200 5950 60  0000 C CNN
	1    6200 5700
	1    0    0    -1  
$EndComp
$Comp
L pad U14
U 1 1 57964817
P 6200 5850
F 0 "U14" H 6050 5950 60  0000 C CNN
F 1 "pad" H 6050 5750 60  0000 C CNN
F 2 "pad_round:pad_square" H 6200 6100 60  0001 C CNN
F 3 "" H 6200 6100 60  0000 C CNN
	1    6200 5850
	1    0    0    -1  
$EndComp
$Comp
L pad U15
U 1 1 5796481D
P 6200 6000
F 0 "U15" H 6050 6100 60  0000 C CNN
F 1 "pad" H 6050 5900 60  0000 C CNN
F 2 "pad_round:pad_square" H 6200 6250 60  0001 C CNN
F 3 "" H 6200 6250 60  0000 C CNN
	1    6200 6000
	1    0    0    -1  
$EndComp
$Comp
L pad U10
U 1 1 57964823
P 5850 5700
F 0 "U10" H 5700 5800 60  0000 C CNN
F 1 "pad" H 5700 5600 60  0000 C CNN
F 2 "pad_round:pad_square" H 5850 5950 60  0001 C CNN
F 3 "" H 5850 5950 60  0000 C CNN
	1    5850 5700
	1    0    0    -1  
$EndComp
$Comp
L pad U11
U 1 1 57964829
P 5850 5850
F 0 "U11" H 5700 5950 60  0000 C CNN
F 1 "pad" H 5700 5750 60  0000 C CNN
F 2 "pad_round:pad_square" H 5850 6100 60  0001 C CNN
F 3 "" H 5850 6100 60  0000 C CNN
	1    5850 5850
	1    0    0    -1  
$EndComp
$Comp
L pad U12
U 1 1 5796482F
P 5850 6000
F 0 "U12" H 5700 6100 60  0000 C CNN
F 1 "pad" H 5700 5900 60  0000 C CNN
F 2 "pad_round:pad_square" H 5850 6250 60  0001 C CNN
F 3 "" H 5850 6250 60  0000 C CNN
	1    5850 6000
	1    0    0    -1  
$EndComp
$Comp
L pad U25
U 1 1 579649CA
P 7600 5700
F 0 "U25" H 7450 5800 60  0000 C CNN
F 1 "pad" H 7450 5600 60  0000 C CNN
F 2 "pad_round:pad_square" H 7600 5950 60  0001 C CNN
F 3 "" H 7600 5950 60  0000 C CNN
	1    7600 5700
	1    0    0    -1  
$EndComp
$Comp
L pad U26
U 1 1 579649D0
P 7600 5850
F 0 "U26" H 7450 5950 60  0000 C CNN
F 1 "pad" H 7450 5750 60  0000 C CNN
F 2 "pad_round:pad_square" H 7600 6100 60  0001 C CNN
F 3 "" H 7600 6100 60  0000 C CNN
	1    7600 5850
	1    0    0    -1  
$EndComp
$Comp
L pad U27
U 1 1 579649D6
P 7600 6000
F 0 "U27" H 7450 6100 60  0000 C CNN
F 1 "pad" H 7450 5900 60  0000 C CNN
F 2 "pad_round:pad_square" H 7600 6250 60  0001 C CNN
F 3 "" H 7600 6250 60  0000 C CNN
	1    7600 6000
	1    0    0    -1  
$EndComp
$Comp
L pad U22
U 1 1 579649DC
P 7250 5700
F 0 "U22" H 7100 5800 60  0000 C CNN
F 1 "pad" H 7100 5600 60  0000 C CNN
F 2 "pad_round:pad_square" H 7250 5950 60  0001 C CNN
F 3 "" H 7250 5950 60  0000 C CNN
	1    7250 5700
	1    0    0    -1  
$EndComp
$Comp
L pad U23
U 1 1 579649E2
P 7250 5850
F 0 "U23" H 7100 5950 60  0000 C CNN
F 1 "pad" H 7100 5750 60  0000 C CNN
F 2 "pad_round:pad_square" H 7250 6100 60  0001 C CNN
F 3 "" H 7250 6100 60  0000 C CNN
	1    7250 5850
	1    0    0    -1  
$EndComp
$Comp
L pad U24
U 1 1 579649E8
P 7250 6000
F 0 "U24" H 7100 6100 60  0000 C CNN
F 1 "pad" H 7100 5900 60  0000 C CNN
F 2 "pad_round:pad_square" H 7250 6250 60  0001 C CNN
F 3 "" H 7250 6250 60  0000 C CNN
	1    7250 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5550 5850 6000
Connection ~ 5850 5850
Connection ~ 5850 5700
Wire Wire Line
	6200 5700 6200 6100
Connection ~ 6200 5850
Connection ~ 6200 6000
Wire Wire Line
	6550 5550 6550 6000
Connection ~ 6550 5850
Connection ~ 6550 5700
Wire Wire Line
	6900 5550 6900 6000
Connection ~ 6900 5850
Connection ~ 6900 5700
Wire Wire Line
	7250 5550 7250 6000
Connection ~ 7250 5850
Connection ~ 7250 5700
Wire Wire Line
	7600 5550 7600 6000
Connection ~ 7600 5850
Connection ~ 7600 5700
Text GLabel 7600 5550 2    60   Input ~ 0
OUT1
Text GLabel 7250 5550 2    60   Input ~ 0
OUT2
Text GLabel 6900 5550 2    60   Input ~ 0
HALL1
Text GLabel 6550 5550 2    60   Input ~ 0
HALL2
$Comp
L GND #PWR029
U 1 1 57966536
P 6200 6100
F 0 "#PWR029" H 6200 5850 50  0001 C CNN
F 1 "GND" H 6200 5950 50  0000 C CNN
F 2 "" H 6200 6100 50  0000 C CNN
F 3 "" H 6200 6100 50  0000 C CNN
	1    6200 6100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR030
U 1 1 579669AD
P 5850 5550
F 0 "#PWR030" H 5850 5400 50  0001 C CNN
F 1 "+3.3V" H 5850 5690 50  0000 C CNN
F 2 "" H 5850 5550 50  0000 C CNN
F 3 "" H 5850 5550 50  0000 C CNN
	1    5850 5550
	1    0    0    -1  
$EndComp
$Comp
L pad U28
U 1 1 5798AA8A
P 4750 5900
F 0 "U28" H 4600 6000 60  0000 C CNN
F 1 "pad" H 4600 5800 60  0000 C CNN
F 2 "pad_round:pad_zlacze" H 4750 6150 60  0001 C CNN
F 3 "" H 4750 6150 60  0000 C CNN
	1    4750 5900
	1    0    0    -1  
$EndComp
$Comp
L pad U29
U 1 1 5798AB4D
P 4750 6050
F 0 "U29" H 4600 6150 60  0000 C CNN
F 1 "pad" H 4600 5950 60  0000 C CNN
F 2 "pad_round:pad_zlacze" H 4750 6300 60  0001 C CNN
F 3 "" H 4750 6300 60  0000 C CNN
	1    4750 6050
	1    0    0    -1  
$EndComp
$Comp
L pad U30
U 1 1 5798ABFB
P 4750 6200
F 0 "U30" H 4600 6300 60  0000 C CNN
F 1 "pad" H 4600 6100 60  0000 C CNN
F 2 "pad_round:pad_zlacze" H 4750 6450 60  0001 C CNN
F 3 "" H 4750 6450 60  0000 C CNN
	1    4750 6200
	1    0    0    -1  
$EndComp
$Comp
L pad U31
U 1 1 5798ACA6
P 4750 6350
F 0 "U31" H 4600 6450 60  0000 C CNN
F 1 "pad" H 4600 6250 60  0000 C CNN
F 2 "pad_round:pad_zlacze" H 4750 6600 60  0001 C CNN
F 3 "" H 4750 6600 60  0000 C CNN
	1    4750 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5900 5000 5900
Wire Wire Line
	4750 6050 5000 6050
Wire Wire Line
	4750 6200 5000 6200
Wire Wire Line
	4750 6350 5000 6350
$Comp
L GND #PWR031
U 1 1 5798B12B
P 5000 6350
F 0 "#PWR031" H 5000 6100 50  0001 C CNN
F 1 "GND" H 5000 6200 50  0000 C CNN
F 2 "" H 5000 6350 50  0000 C CNN
F 3 "" H 5000 6350 50  0000 C CNN
	1    5000 6350
	1    0    0    -1  
$EndComp
$Comp
L +8V #PWR032
U 1 1 5798B67E
P 5000 6200
F 0 "#PWR032" H 5000 6050 50  0001 C CNN
F 1 "+8V" H 5000 6340 50  0000 C CNN
F 2 "" H 5000 6200 50  0000 C CNN
F 3 "" H 5000 6200 50  0000 C CNN
	1    5000 6200
	0    1    1    0   
$EndComp
Text GLabel 5000 5900 2    60   Input ~ 0
B
Text GLabel 5000 6050 2    60   Input ~ 0
A
Wire Wire Line
	7100 3150 7200 3150
Wire Wire Line
	7100 3250 7200 3250
Text GLabel 7200 3250 2    60   Input ~ 0
SWCLK
Text GLabel 7200 3350 2    60   Input ~ 0
SWDIO
Wire Wire Line
	7100 3350 7200 3350
$Comp
L pad U32
U 1 1 579904F1
P 5900 6500
F 0 "U32" H 5750 6600 60  0000 C CNN
F 1 "pad" H 5750 6400 60  0000 C CNN
F 2 "pad_round:pad_isp" H 5900 6750 60  0001 C CNN
F 3 "" H 5900 6750 60  0000 C CNN
	1    5900 6500
	1    0    0    -1  
$EndComp
$Comp
L pad U33
U 1 1 579905B8
P 5900 6650
F 0 "U33" H 5750 6750 60  0000 C CNN
F 1 "pad" H 5750 6550 60  0000 C CNN
F 2 "pad_round:pad_isp" H 5900 6900 60  0001 C CNN
F 3 "" H 5900 6900 60  0000 C CNN
	1    5900 6650
	1    0    0    -1  
$EndComp
$Comp
L pad U34
U 1 1 57990682
P 5900 6800
F 0 "U34" H 5750 6900 60  0000 C CNN
F 1 "pad" H 5750 6700 60  0000 C CNN
F 2 "pad_round:pad_isp" H 5900 7050 60  0001 C CNN
F 3 "" H 5900 7050 60  0000 C CNN
	1    5900 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 6500 6000 6500
Wire Wire Line
	5900 6650 6000 6650
Wire Wire Line
	5900 6800 6000 6800
Text GLabel 6000 6500 2    60   Input ~ 0
SWDIO
Text GLabel 6000 6650 2    60   Input ~ 0
SWCLK
$Comp
L GND #PWR033
U 1 1 57990C5F
P 6000 6800
F 0 "#PWR033" H 6000 6550 50  0001 C CNN
F 1 "GND" H 6000 6650 50  0000 C CNN
F 2 "" H 6000 6800 50  0000 C CNN
F 3 "" H 6000 6800 50  0000 C CNN
	1    6000 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4100 4100 4100
Wire Wire Line
	4250 4250 4100 4250
Text GLabel 4100 4100 0    60   Input ~ 0
OUT1
Text GLabel 4100 4250 0    60   Input ~ 0
OUT2
Text GLabel 3950 3250 2    60   Input ~ 0
OUT1
Text GLabel 3950 3400 2    60   Input ~ 0
OUT2
Wire Wire Line
	5400 3900 5350 3900
$Comp
L C_Small C4
U 1 1 57D75701
P 2250 2350
F 0 "C4" H 2260 2420 50  0000 L CNN
F 1 "1000pF" H 2260 2270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2250 2350 50  0001 C CNN
F 3 "" H 2250 2350 50  0000 C CNN
	1    2250 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 2350 2350 2350
$Comp
L LED D1
U 1 1 57D88835
P 7300 2600
F 0 "D1" H 7300 2700 50  0000 C CNN
F 1 "LED" H 7300 2500 50  0000 C CNN
F 2 "LEDs:LED_0402" H 7300 2600 50  0001 C CNN
F 3 "" H 7300 2600 50  0000 C CNN
	1    7300 2600
	-1   0    0    1   
$EndComp
$Comp
L R R10
U 1 1 57D891DE
P 7650 2600
F 0 "R10" V 7750 2600 50  0000 C CNN
F 1 "1k" V 7650 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 7580 2600 50  0001 C CNN
F 3 "" H 7650 2600 50  0000 C CNN
	1    7650 2600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR034
U 1 1 57D8A06E
P 7800 2600
F 0 "#PWR034" H 7800 2350 50  0001 C CNN
F 1 "GND" H 7800 2450 50  0000 C CNN
F 2 "" H 7800 2600 50  0000 C CNN
F 3 "" H 7800 2600 50  0000 C CNN
	1    7800 2600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
