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
#include "usbd_cdc_if.h"
#include "usb_device.h"
#include "usart.h"
#include "dma.h"
#include "motor.h"
#include "pid.h"

#define BUSADDR 0x30
#define BUSBRDC 0xFF

void communication_init();
void handle_communication();
void send_controls();
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart);
void send_hello();
void startAnswering();
void stopAnswering();

#endif /* COMMUNICATION_H_ */
