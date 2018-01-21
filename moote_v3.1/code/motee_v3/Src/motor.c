/**
  ******************************************************************************
  * File Name          : motor.c
  * Description        : This file provides code for the controlling DC motor..
  *****************************************************************************/

#include "motor.h"

float set_point;
uint8_t set_direction;
uint16_t proces_variable;
float motor_pid_control;
uint8_t controlOn=0;
uint16_t speedRegister;
uint16_t maxSpeed=1000;

void MOTOR_Init(void){
	 MX_GPIO_Init(); //GPIO controll
	 MX_TIM4_Init(); //encoder mode
	 MX_ADC1_Init(); //current sense
	 MX_TIM2_Init(); //PWM generation
	 MX_TIM1_Init(); //200Hz Loop for PID

	 HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_1);
	 HAL_TIM_Base_Start_IT(&htim1);
	 HAL_TIM_Encoder_Start(&htim4, TIM_CHANNEL_ALL);
	 HAL_ADC_Start(&hadc1);

	 pid_init(50.0, 2.0, 1.0);
}

void MOTOR_pid_test(){
	controlOn = 1;
	set_point = 10;
	HAL_Delay(1000);
	HAL_Delay(1000);
	controlOn = 0;
	set_point = 0;
}

void MOTOR_Enable(){
	HAL_GPIO_WritePin(MOTOR_SLEEP_GPIO_Port, MOTOR_SLEEP_Pin, GPIO_PIN_SET);
}

void MOTOR_Disable(){
	HAL_GPIO_WritePin(MOTOR_SLEEP_GPIO_Port, MOTOR_SLEEP_Pin, GPIO_PIN_RESET);
}

void MOTOR_SetDirForward(){
	HAL_GPIO_WritePin(MOTOR_PHASE_GPIO_Port, MOTOR_PHASE_Pin, GPIO_PIN_RESET);
}
void MOTOR_SetDirReverse(){
	HAL_GPIO_WritePin(MOTOR_PHASE_GPIO_Port, MOTOR_PHASE_Pin, GPIO_PIN_SET);
}
void MOTOR_brake_on(){
	HAL_GPIO_WritePin(MOTOR_MODE1_GPIO_Port, MOTOR_MODE1_Pin, GPIO_PIN_SET);
}
void MOTOR_brake_off(){
	HAL_GPIO_WritePin(MOTOR_MODE1_GPIO_Port, MOTOR_MODE1_Pin, GPIO_PIN_RESET);
}

void MOTOR_pid_on(){
	controlOn=1;
}

void MOTOR_pid_off(){
	controlOn=0;
}

void MOTOR_set_point(float point){
	set_point = point;
}

float MOTOR_get_set_point(){
	return set_point;
}

void MOTOR_set_direction(uint8_t setDir){
	set_direction = setDir;
}

void MOTOR_set_max_speed(uint16_t speed){
	maxSpeed = speed;
}


uint8_t MOTOR_get_direction(){
	return set_direction;
}

uint16_t MOTOR_get_proces_variable(){
	return proces_variable;
}

void MOTOR_SetSpeed(float speed){
	if (speed >= 0.0){
		MOTOR_SetDirForward();
	}else{
		MOTOR_SetDirReverse();
		speed = -speed;
	}
	speedRegister = (uint16_t)speed;
	if(speedRegister >maxSpeed){
		TIM2->CCR1 = maxSpeed;
	}else TIM2->CCR1 = speedRegister;
}

void MOTOR_GetEncoderValue(){
	proces_variable = TIM4->CNT;
	TIM4->CNT = 0;
}

uint16_t MOTOR_GetCurrent(){
	uint16_t read =0;
	if (HAL_ADC_PollForConversion(&hadc1, 10) == HAL_OK) {
		read = HAL_ADC_GetValue(&hadc1);
		HAL_ADC_Start(&hadc1);
	}
	return read;
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim){
	MOTOR_GetEncoderValue();
	if(controlOn==1){

		if (proces_variable>10000){
			proces_variable = 65536-proces_variable;
		}
		motor_pid_control = pid_calculate(set_point, (float)proces_variable);
		if(set_direction==1){
			motor_pid_control = -1.0*motor_pid_control;
		}
		MOTOR_SetSpeed(motor_pid_control);
	}
	else {
	MOTOR_SetSpeed(0);
	}
}

/************************ KF **********************************END OF FILE****/
