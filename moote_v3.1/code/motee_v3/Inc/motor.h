/**
  ******************************************************************************
  * File Name          : motor.h
  * Description        : This file provides code for controlling dc motor drver.
  *****************************************************************************/
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __motor_H
#define __motor_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"
#include "main.h"
#include "adc.h"
#include "tim.h"
#include "gpio.h"


void MOTOR_Init(void);
void MOTOR_SetSpeed(uint16_t speed);
void MOTOR_Enable(void);
void MOTOR_Disable(void);
void MOTOR_SetDirForward(void);
void MOTOR_SetDirReverse(void);
uint16_t MOTOR_GetCurrent(void);
uint16_t MOTOR_GetEncoderValue(void);


/* USER CODE BEGIN Prototypes */

/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif
#endif /*__ motor_H */



/************************ KF **************************************************/
