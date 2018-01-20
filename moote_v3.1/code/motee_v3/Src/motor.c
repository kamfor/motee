/**
  ******************************************************************************
  * File Name          : motor.c
  * Description        : This file provides code for the controlling DC motor..
  *****************************************************************************/

/* Includes ------------------------------------------------------------------*/
#include "motor.h"
#include "pid.h"

volatile float set_point;
volatile uint8_t set_direction;
volatile uint16_t proces_variable;
volatile float motor_pid_control;


void MOTOR_Init(void){
	 //MX_GPIO_Init(); //GPIO controll
	 //MX_TIM4_Init(); //encoder mode
	 //MX_ADC1_Init(); //current sense
	 //MX_TIM2_Init(); //PWM generation
	 //MX_TIM1_Init(); //200Hz Loop for PID

	 HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_1);
	 HAL_TIM_Base_Start_IT(&htim1);
	 HAL_TIM_Encoder_Start(&htim4, TIM_CHANNEL_ALL);
	 HAL_ADC_Start(&hadc1);

	 pid_init(50.0, 2.0, 1.0);
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

void MOTOR_SetSpeed(float speed){

	if(speed==0.0){
		TIM2->CCR1 = 0;
		MOTOR_SetDirForward();
	}else{

		if (speed > 0.0){
			MOTOR_SetDirForward();
		}else{
			MOTOR_SetDirReverse();
			speed = -speed;
		}

		TIM2->CCR1 = (uint16_t)speed;

	}

}

uint16_t MOTOR_GetEncoderValue(){
	return TIM4->CNT;
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
 proces_variable = MOTOR_GetEncoderValue();
 if (proces_variable>10000){
	 proces_variable = 65536-proces_variable;
 }
 motor_pid_control = pid_calculate(set_point, (float)proces_variable);
 TIM4->CNT = 0;
 if(set_direction==1)motor_pid_control = -1.0*motor_pid_control;
 MOTOR_SetSpeed(motor_pid_control);
}


/************************ KF **********************************END OF FILE****/
