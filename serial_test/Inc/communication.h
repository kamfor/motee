/*
 * communication.h
 *
 *  Created on: Jan 8, 2018
 *      Author: kamil
 */

#ifndef COMMUNICATION_H_
#define COMMUNICATION_H_

#include "main.h"
#include "stm32f4xx_hal.h"
#include "dma.h"
#include "usart.h"

#define BUSADDR 0x30
#define BUSBRDC 0xFF

void communicationInit();
void handleCommunication(uint16_t*, uint8_t*);
void HAL_UART_RxCpltCallback(UART_HandleTypeDef*);
void sendHello();

#endif /* COMMUNICATION_H_ */
