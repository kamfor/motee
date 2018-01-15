/*
 * communication.c
 *
 *  Created on: Jan 8, 2018
 *      Author: kamil
 */

#include "communication.h"

volatile uint8_t frameReady = 0;
uint8_t txBuffer[8];
uint8_t rxBuffer[8];
uint8_t rxByte = 0;
uint8_t txSize = 0;
uint8_t rxSize = 0;
uint8_t myAddress = 10;
uint8_t myGroupAddress = 2;
uint8_t answerFlag=0;

void sendHello(){
	HAL_UART_Transmit_DMA(&huart1, "HELLO\r\n", 7);
}


void communication_init(){
	  MX_USB_DEVICE_Init();
	  MX_DMA_Init();
	  MX_USART1_UART_Init();
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
		HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_5);

		switch (rxBuffer[0]){
		case 0: //start/stop answering
			if(rxBuffer[2]==1)
				answerFlag = 1;
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
		break;
		case 2: //set motor speed
			*speed = (uint16_t)rxBuffer[3] << 8 |rxBuffer[4];
			*dir = rxBuffer[5];
			txBuffer[0] = 0;
			txBuffer[1] = 5;
			txBuffer[2] = (uint8_t)(*speed>>8);
			txBuffer[3] = (uint8_t)*speed;
			txBuffer[4] = *dir;
			txBuffer[5] = (uint8_t)((*speed)>>8);
			txBuffer[6] = (uint8_t)(*speed);
			txBuffer[7] = 0;
		break;
		}
		HAL_GPIO_WritePin(RS485_DIR_GPIO_Port, RS485_DIR_Pin, GPIO_PIN_SET);
		HAL_UART_Transmit_DMA(&huart1, txBuffer, 8);
		HAL_GPIO_WritePin(RS485_DIR_GPIO_Port, RS485_DIR_Pin, GPIO_PIN_RESET);
	}
}

