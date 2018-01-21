/*
 * communication.c
 *
 *  Created on: Jan 8, 2018
 *      Author: kamil
 */

#include "communication.h"


volatile uint8_t frameReady = 0;
volatile uint8_t rxBuffer[8];
uint8_t txBuffer[8];
uint8_t myAddress = 10;
uint8_t myGroupAddress = 2;
uint8_t answerFlag=0;
uint8_t flagStatus;
uint16_t actCurrent=0;
uint16_t actSpeed=0;
uint16_t param;


void sendHello(){
	HAL_UART_Transmit_DMA(&huart1, "HELLO\r\n", 7);
}

void startAnswering(){
	answerFlag = 1;
}

void stopAnswering(){
	answerFlag = 0;
}

void communication_init(){
	  MX_USB_DEVICE_Init();
	  MX_DMA_Init();
	  MX_USART1_UART_Init();
	  HAL_UART_Receive_DMA(&huart1, rxBuffer, 8);
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart) {

	frameReady=1;
	HAL_UART_Receive_DMA(&huart1, rxBuffer, 8);
}

void handle_communication(){

	if(rxBuffer[1]==myAddress||rxBuffer[2]==myGroupAddress||rxBuffer[1]==0){

		switch (rxBuffer[0]){
		case 0: //start/stop answering
			if(rxBuffer[2]==1){
				startAnswering();
			}
			else stopAnswering();
		break;
		case 1: //send identification flag
			txBuffer[0] = 1;
			txBuffer[1] = myAddress;
			txBuffer[2] = myGroupAddress;
			txBuffer[3] = 1;
			txBuffer[4] = 1;
			txBuffer[5] = 1;
			txBuffer[6] = 1;
			txBuffer[7] = 1;
			flagStatus = CDC_Transmit_FS(txBuffer, 8);
		break;
		case 2: //set motor speed
			MOTOR_pid_on();
			startAnswering();
			MOTOR_brake_off();
			MOTOR_set_point((float)((uint16_t)rxBuffer[3] << 8 |rxBuffer[4])/20);
			MOTOR_set_direction(rxBuffer[5]);
		break;
		case 3: //change address
			stopAnswering();
			MOTOR_pid_off();
			myAddress = rxBuffer[4];
			myGroupAddress = rxBuffer[5];
		break;
		case 4: //change MaxSpeed
			MOTOR_pid_off();
			stopAnswering();
			param = (uint16_t)rxBuffer[3] << 8 |rxBuffer[4];
			MOTOR_set_max_speed(param);
		break;
		case 5: //change Kp
			MOTOR_pid_off();
			stopAnswering();
			param = (uint16_t)rxBuffer[3] << 8 |rxBuffer[4];
			changeKp((float)param/10);
		break;
		case 6: //change Kd
			MOTOR_pid_off();
			stopAnswering();
			param = (uint16_t)rxBuffer[3] << 8 |rxBuffer[4];
			changeKp((float)param/10);
		break;
		case 7: //change Ki
			MOTOR_pid_off();
			stopAnswering();
			param = (uint16_t)rxBuffer[3] << 8 |rxBuffer[4];
			changeKp((float)param/10);
		break;
		case 8: //reset
			MOTOR_pid_off();
			stopAnswering();
			pid_init(50.0, 2.0, 1.0);
			MOTOR_set_max_speed(1000);
		break;
		case 9: //brake
			MOTOR_pid_off();
			MOTOR_brake_on();
		break;
		default:
			MOTOR_pid_on();
		break;

		}
		//check context
		//HAL_GPIO_WritePin(RS485_DIR_GPIO_Port, RS485_DIR_Pin, GPIO_PIN_SET);
		///HAL_UART_Transmit_DMA(&huart1, txBuffer, 8);
		//HAL_GPIO_WritePin(RS485_DIR_GPIO_Port, RS485_DIR_Pin, GPIO_PIN_RESET);
	}
}

void send_controls(){

	if(answerFlag){

		actCurrent = MOTOR_GetCurrent();
		actSpeed = MOTOR_get_proces_variable();
		txBuffer[0] = 0; //functionId
		txBuffer[1] = myAddress;
		txBuffer[2] = (uint8_t)(actSpeed>>8);
		txBuffer[3] = (uint8_t)actSpeed;
		txBuffer[4] = MOTOR_get_direction();
		txBuffer[5] = (uint8_t)((actCurrent)>>8);
		txBuffer[6] = (uint8_t)(actCurrent);
		txBuffer[7] = 0;
		flagStatus = CDC_Transmit_FS(txBuffer, 8);
	}

	//HAL_GPIO_WritePin(RS485_DIR_GPIO_Port, RS485_DIR_Pin, GPIO_PIN_SET);
	///HAL_UART_Transmit_DMA(&huart1, txBuffer, 8);
	//HAL_GPIO_WritePin(RS485_DIR_GPIO_Port, RS485_DIR_Pin, GPIO_PIN_RESET);

}

