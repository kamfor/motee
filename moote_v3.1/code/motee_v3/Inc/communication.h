/**
*@file communication.h
*@brief this header file contains prototypes of functions for handling communication protocols
*@author Kamil Foryszewski
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

/**
*This method will be used to init communication peripheral
*@author Kamil Foryszewski
*@param noparam
*/
void communication_init();
/**
*This method will be used to handle incomming data
*@author Kamil Foryszewski
*@param noparam
*/
void handle_communication();
/**
*This method will be used to send data to control device
*@author Kamil Foryszewski
*@param noparam
*/
void send_controls();
/**
*This method is hardware usart rx interrupt callback
*@author Kamil Foryszewski
*@param huart pointer to used uard structure
*/
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart);
/**
*This method will be used to send hello string throught UART.
*@author Kamil Foryszewski
*@param noparam
*/
void send_hello();
/**
*This method will be used to set answering mode on
*@author Kamil Foryszewski
*@param noparam
*/
void start_answering();
/**
*This method will be used to set answering mode off
*@author Kamil Foryszewski
*@param noparam
*/
void stop_answering();

#endif /* COMMUNICATION_H_ */
