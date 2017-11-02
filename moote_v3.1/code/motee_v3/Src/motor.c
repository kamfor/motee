/**
  ******************************************************************************
  * File Name          : motor.c
  * Description        : This file provides code for the controlling DC motor..
  *****************************************************************************/

/* Includes ------------------------------------------------------------------*/
#include "motor.h"


void MOTOR_Init(void){
	 MX_GPIO_Init(); //GPIO controll
	 MX_TIM4_Init(); //encoder mode
	 MX_ADC1_Init(); //current sense
	 MX_TIM1_Init(); //PWM generation

	 HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1);
	 HAL_TIM_Encoder_Start(&htim4, TIM_CHANNEL_ALL);
	 HAL_ADC_Start(&hadc1);

}

void MOTOR_Enable(){
	HAL_GPIO_WritePin(MOTOR_SLEEP_GPIO_Port, MOTOR_SLEEP_Pin, GPIO_PIN_SET);
}

void MOTOR_Disable(){
	HAL_GPIO_WritePin(MOTOR_SLEEP_GPIO_Port, MOTOR_SLEEP_Pin, GPIO_PIN_RESET);
}

void MOTOR_SetDirForward(){
	HAL_GPIO_WritePin(MOTOR_DIR_GPIO_Port, MOTOR_DIR_Pin, GPIO_PIN_SET);
}
void MOTOR_SetDirReverse(){
	HAL_GPIO_WritePin(MOTOR_DIR_GPIO_Port, MOTOR_DIR_Pin, GPIO_PIN_RESET);
}

void MOTOR_SetSpeed(uint16_t speed){
	TIM1->CCR1 = speed;
}

uint16_t MOTOR_GetEncoderValue(){
	return TIM4->CNT;
}

uint16_t MOTOR_GetCurrent(){
	uint16_t read;
	if (HAL_ADC_PollForConversion(&hadc1, 10) == HAL_OK) {
		read = HAL_ADC_GetValue(&hadc1);
		HAL_ADC_Start(&hadc1);
	}

	return read;
}

/************************ KF **********************************END OF FILE****/
