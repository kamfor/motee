/**
*@file motor.h
*@brief this header file contains prototypes of functions for interface with dc motor driver and endcoder
*@author Kamil Foryszewski
*/
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

 /**
 *This method will be used to init dc motor peripheral
 *@author Kamil Foryszewski
 *@param noparam
 */
void MOTOR_init(void);
/**
*This method will be used to test pid calculations
*@author Kamil Foryszewski
*@param noparam
*/
void MOTOR_pid_test(void);
/**
*This method will be used to set motor PWM speed
*@author Kamil Foryszewski
*@param speed int value from -1000 to 1000
*/
void MOTOR_set_speed(float speed);
/**
*This method will be used to enable motor controller
*@author Kamil Foryszewski
*@param noparam
*/
void MOTOR_enable(void);
/**
*This method will be used to disable motor controller
*@author Kamil Foryszewski
*@param noparam
*/
void MOTOR_disable(void);
/**
*This method will be used to set forward motor direction
*@author Kamil Foryszewski
*@param noparam
*/
void MOTOR_set_dir_forward(void);
/**
*This method will be used to set reverse motor direction
*@author Kamil Foryszewski
*@param noparam
*/
void MOTOR_set_dir_reverse(void);
/**
*This method will be used to get encoder counter
*@author Kamil Foryszewski
*@param noparamr
*/
void MOTOR_get_encoder_value(void);
/**
*This method will be used to turn on motor brake
*@author Kamil Foryszewski
*@param noparamr
*/
void MOTOR_brake_on(void);
/**
*This method will be used to turn off motor brake
*@author Kamil Foryszewski
*@param noparam
*/
void MOTOR_brake_off(void);
/**
*This method will be used to turn on PID calculations
*@author Kamil Foryszewski
*@param noparam
*/
void MOTOR_pid_on(void);
/**
*This method will be used to turn off motor brake
*@author Kamil Foryszewski
*@param noparam
*/
void MOTOR_pid_off(void);
/**
*This method will be used to set PID desire value
*@author Kamil Foryszewski
*@param piont motor speed value to set
*/
void MOTOR_set_point(float point);
/**
*This method will be used to set motor direction using param
*@author Kamil Foryszewski
*@param setDir 8 bit 0 - forward 1-reverse
*/
void MOTOR_set_direction(uint8_t setDir);
/**
*This method will be used to set maximum PWM speed
*@author Kamil Foryszewski
*@param noparamr
*/
void MOTOR_set_max_speed(uint16_t speed);
/**
*This method will be used to get PID setpoint value
*@author Kamil Foryszewski
*@param noparamr
*@retval folat PID setpoint value
*/
float MOTOR_get_set_point(void);
/**
*This method will be used to get PID process variable
*@author Kamil Foryszewski
*@param noparamr
*@retval 16bit PID process variable
*/
uint16_t MOTOR_get_proces_variable(void);
/**
*This method will be used to get actual motor current from ADC
*@author Kamil Foryszewski
*@param noparamr
*@retval 16bit current from ADC
*/
uint16_t MOTOR_get_current(void);
/**
*This method will be used to get actual set direction
*@author Kamil Foryszewski
*@param noparamr
*@retval 8bit PID direction value 0 or 1
*/
uint8_t MOTOR_get_direction(void);

/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif
#endif /*__ motor_H */



/************************ KF **************************************************/
