/*
 * communication.c
 *
 *  Created on: Jan 8, 2018
 *      Author: kamil
 */

#include "communication.h"
#include "motor.h"
#include "pid.h"

volatile uint8_t frameReady = 0;
uint8_t txBuffer[8];
uint8_t rxBuffer[8];
uint8_t rxByte = 0;
uint8_t txSize = 0;
uint8_t rxSize = 0;
uint8_t myAddress = 10;
uint8_t myGroupAddress = 2;
uint8_t answerFlag=0;
uint16_t actCurrent=0;
uint8_t pidKp;
uint8_t pidKd;
uint8_t pidKi;
extern volatile uint16_t proces_variable;
extern uint8_t set_direction;

void sendHello(){
	HAL_UART_Transmit_DMA(&huart1, "HELLO\r\n", 7);
}


void communication_init(){
	  //MX_USB_DEVICE_Init();
	  //MX_DMA_Init();
	  //MX_USART1_UART_Init();
	  HAL_UART_Receive_DMA(&huart1, rxBuffer, 8);
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart) {

	if((rxBuffer[0]=='0'||rxBuffer[0]==BUSBRDC)){

	}
	frameReady=1;
	HAL_UART_Receive_DMA(&huart1, rxBuffer, 8);
}

void handle_communication(uint16_t *speed, uint8_t *dir){ // add params change functionids

	if(rxBuffer[1]==myAddress||rxBuffer[2]==myGroupAddress||rxBuffer[1]==0){

		switch (rxBuffer[0]){
		case 0: //start/stop answering
			if(rxBuffer[2]==1){
				//answerFlag = 1;
			}
			else answerFlag = 0;
		break;
		case 1: //send identification flag
			txBuffer[0] = 1;
			txBuffer[1] = myAddress;
			txBuffer[2] = myGroupAddress;
			txBuffer[3] = 0;
			txBuffer[4] = 0;
			txBuffer[5] = 0;
			txBuffer[6] = 0;
			txBuffer[7] = 0;
			CDC_Transmit_FS(txBuffer, 8);
			answerFlag = 0;
		break;
		case 2: //set motor speed
			*speed = (uint16_t)rxBuffer[3] << 8 |rxBuffer[4];
			*dir = rxBuffer[5];
			answerFlag = 1;
		break;
		case 3: //change address
			answerFlag = 0;
			myAddress = rxBuffer[4];
			myGroupAddress = rxBuffer[5];
		break;
		case 4: //change MaxSpeed
			answerFlag = 0;
			*speed=0;
		break;
		case 5: //change Kp
			answerFlag = 0;
			*speed=0;
			HAL_TIM_Base_DeInit(&htim1);
			pidKp = (uint16_t)rxBuffer[3] << 8 |rxBuffer[4];
			changeKp((float)pidKp/10);
			HAL_TIM_Base_Start_IT(&htim1);
		break;
		case 6: //change Kd
			answerFlag = 0;
			*speed=0;
			HAL_TIM_Base_DeInit(&htim1);
			pidKd = (uint16_t)rxBuffer[3] << 8 |rxBuffer[4];
			changeKp((float)pidKd/10);
			HAL_TIM_Base_Start_IT(&htim1);
		break;
		case 7: //change Ki
			answerFlag = 0;
			*speed=0;
			HAL_TIM_Base_DeInit(&htim1);
			pidKi = (uint16_t)rxBuffer[3] << 8 |rxBuffer[4];
			changeKp((float)pidKi/10);
			HAL_TIM_Base_Start_IT(&htim1);
		break;
		}
		//check context
		//HAL_GPIO_WritePin(RS485_DIR_GPIO_Port, RS485_DIR_Pin, GPIO_PIN_SET);
		///HAL_UART_Transmit_DMA(&huart1, txBuffer, 8);
		//HAL_GPIO_WritePin(RS485_DIR_GPIO_Port, RS485_DIR_Pin, GPIO_PIN_RESET);
	}
}

void send_controls(){ // add params change functionids

	actCurrent = MOTOR_GetCurrent();
	txBuffer[0] = 0;
	txBuffer[1] = 5;
	txBuffer[2] = (uint8_t)(proces_variable>>8);
	txBuffer[3] = (uint8_t)proces_variable;
	txBuffer[4] = set_direction;
	txBuffer[5] = (uint8_t)((actCurrent)>>8);
	txBuffer[6] = (uint8_t)(actCurrent);
	txBuffer[7] = 0;

	//check context
	if(answerFlag){
		CDC_Transmit_FS(txBuffer, 8);
	}

	//HAL_GPIO_WritePin(RS485_DIR_GPIO_Port, RS485_DIR_Pin, GPIO_PIN_SET);
	///HAL_UART_Transmit_DMA(&huart1, txBuffer, 8);
	//HAL_GPIO_WritePin(RS485_DIR_GPIO_Port, RS485_DIR_Pin, GPIO_PIN_RESET);

}

