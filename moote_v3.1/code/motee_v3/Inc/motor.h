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

 /* USER CODE BEGIN Prototypes */

void MOTOR_init(void);
void MOTOR_pid_test(void);
void MOTOR_set_speed(float speed);
void MOTOR_enable(void);
void MOTOR_disable(void);
void MOTOR_set_dir_forward(void);
void MOTOR_set_dir_reverse(void);
void MOTOR_get_encoder_value(void);
void MOTOR_brake_on(void);
void MOTOR_brake_off(void);
void MOTOR_pid_on(void);
void MOTOR_pid_off(void);
void MOTOR_set_point(float point);
void MOTOR_set_direction(uint8_t setDir);
void MOTOR_set_max_speed(uint16_t speed);
float MOTOR_get_set_point(void);
uint16_t MOTOR_get_proces_variable(void);
uint16_t MOTOR_get_current(void);
uint8_t MOTOR_get_direction(void);

/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif
#endif /*__ motor_H */



/************************ KF **************************************************/
