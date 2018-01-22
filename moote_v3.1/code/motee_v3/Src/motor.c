/**
  ******************************************************************************
  * File Name          : motor.c
  * Description        : This file provides code for the controlling DC motor..
  *****************************************************************************/

#include "motor.h"

float setPoint;
float motorPidControl;
uint8_t setDirection;
uint8_t controlOn=0;
uint16_t procesVariable;
uint16_t speedRegister;
uint16_t maxSpeed=1000;

void MOTOR_init(void){
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
	setPoint = 10;
	HAL_Delay(1000);
	HAL_Delay(1000);
	controlOn = 0;
	setPoint = 0;
}

void MOTOR_enable(){
	HAL_GPIO_WritePin(MOTOR_SLEEP_GPIO_Port, MOTOR_SLEEP_Pin, GPIO_PIN_SET);
}

void MOTOR_disable(){
	HAL_GPIO_WritePin(MOTOR_SLEEP_GPIO_Port, MOTOR_SLEEP_Pin, GPIO_PIN_RESET);
}

void MOTOR_set_dir_forward(){
	HAL_GPIO_WritePin(MOTOR_PHASE_GPIO_Port, MOTOR_PHASE_Pin, GPIO_PIN_RESET);
}
void MOTOR_set_dir_reverse(){
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
	setPoint = point;
}

float MOTOR_get_set_point(){
	return setPoint;
}

void MOTOR_set_direction(uint8_t setDir){
	setDirection = setDir;
}

void MOTOR_set_max_speed(uint16_t speed){
	maxSpeed = speed;
}


uint8_t MOTOR_get_direction(){
	return setDirection;
}

uint16_t MOTOR_get_proces_variable(){
	return procesVariable;
}

void MOTOR_set_speed(float speed){
	if (speed >= 0.0){
		MOTOR_set_dir_forward();
	}else{
		MOTOR_set_dir_reverse();
		speed = -speed;
	}
	speedRegister = (uint16_t)speed;
	if(speedRegister >maxSpeed){
		TIM2->CCR1 = maxSpeed;
	}else TIM2->CCR1 = speedRegister;
}

void MOTOR_get_encoder_value(){
	procesVariable = TIM4->CNT;
	TIM4->CNT = 0;
}

uint16_t MOTOR_get_current(){
	uint16_t read =0;
	if (HAL_ADC_PollForConversion(&hadc1, 10) == HAL_OK) {
		read = HAL_ADC_GetValue(&hadc1);
		HAL_ADC_Start(&hadc1);
	}
	return read;
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim){
	MOTOR_get_encoder_value();
	if(controlOn==1){

		if (procesVariable>10000){
			procesVariable = 65536-procesVariable;
		}
		motorPidControl = pid_calculate(setPoint, (float)procesVariable);
		if(setDirection==1){
			motorPidControl = -1.0*motorPidControl;
		}
		MOTOR_set_speed(motorPidControl);
	}
	else {
	MOTOR_set_speed(0);
	}
}

/************************ KF **********************************END OF FILE****/
