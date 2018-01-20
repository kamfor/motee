/*
 * communication.h
 *
 *  Created on: Jan 8, 2018
 *      Author: kamil
 */

#ifndef COMMUNICATION_H_
#define COMMUNICATION_H_

#include "main.h"
#include "stm32f1xx_hal.h"
#include "dma.h"
#include "usart.h"

#define BUSADDR 0x30
#define BUSBRDC 0xFF

void communication_init();
void handle_communication(uint16_t*, uint8_t*);
void send_controls();
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart);
void send_hello();

#endif /* COMMUNICATION_H_ */
