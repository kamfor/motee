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
#include "pid.h"


void MOTOR_Init(void);
void MOTOR_pid_test(void);
void MOTOR_SetSpeed(float speed);
void MOTOR_Enable(void);
void MOTOR_Disable(void);
void MOTOR_SetDirForward(void);
void MOTOR_SetDirReverse(void);
uint16_t MOTOR_GetCurrent(void);
void MOTOR_GetEncoderValue(void);
void MOTOR_brake_on(void);
void MOTOR_brake_off(void);
void MOTOR_pid_on(void);
void MOTOR_pid_off(void);
void MOTOR_set_point(float point);
float MOTOR_get_set_point(void);
void MOTOR_set_direction(uint8_t setDir);
void MOTOR_set_max_speed(uint16_t speed);
uint8_t MOTOR_get_direction(void);
uint16_t MOTOR_get_proces_variable(void);

/* USER CODE BEGIN Prototypes */

/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif
#endif /*__ motor_H */



/************************ KF **************************************************/
