/*
 * oled.h
 *
 *  Created on: Feb 23, 2017
 *      Author: cezary
 */

#ifndef OLED_H_
#define OLED_H_

//###### ######## ################ INCLUDES:

#include "main.h"
#include "spi.h"
#include "oled_usr.h"

//###### ######## ################ DEFINE:
#define SSD1306

#define SSD1306_CMD    0
#define SSD1306_DAT    1

#define SSD1306_WIDTH    128
#define SSD1306_HEIGHT   64



#if defined(SSD1306)
#define __SET_COL_START_ADDR()  do { \
                  ssd1306_write_byte(0x00, SSD1306_CMD); \
                  ssd1306_write_byte(0x10, SSD1306_CMD); \
                } while(0)

#endif

extern SPI_HandleTypeDef hspi2;
/* Private variables ---------------------------------------------------------*/
static uint8_t s_chDispalyBuffer[128][8];





#define __SSD1306_CS_SET()      HAL_GPIO_WritePin(OLED_CS_GPIO_Port, OLED_CS_Pin, SET)
#define __SSD1306_CS_CLR()      HAL_GPIO_WritePin(OLED_CS_GPIO_Port, OLED_CS_Pin, RESET)

#define __SSD1306_RES_SET()     HAL_GPIO_WritePin(OLED_RES_GPIO_Port, OLED_RES_Pin, SET)
#define __SSD1306_RES_CLR()     HAL_GPIO_WritePin(OLED_RES_GPIO_Port, OLED_RES_Pin, RESET)

#define __SSD1306_DC_SET()      HAL_GPIO_WritePin(OLED_DC_GPIO_Port, OLED_DC_Pin, SET)
#define __SSD1306_DC_CLR()      HAL_GPIO_WritePin(OLED_DC_GPIO_Port, OLED_DC_Pin, RESET)

#define __SSD1306_CLK_SET()     HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, SET)
#define __SSD1306_CLK_CLR()     HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, RESET)

#define __SSD1306_DIN_SET()     HAL_GPIO_WritePin(GPIOA, GPIO_PIN_7, SET)
#define __SSD1306_DIN_CLR()     HAL_GPIO_WritePin(GPIOA, GPIO_PIN_7, RESET)

#define __SSD1306_WRITE_BYTE(__DATA)		HAL_SPI_Transmit(&hspi1, &__DATA, 1, 1000)

//##                                      #### ######## ################ REG ADDR MAP:


//##                                      #### ######## ################ PROTOTYPES:
void ssd1306_write_byte(uint8_t chData, uint8_t chCmd);
extern void ssd1306_clear_screen(uint8_t chFill);
extern void ssd1306_refresh_gram(void);
extern void ssd1306_draw_point(uint8_t chXpos, uint8_t chYpos, uint8_t chPoint);
extern void ssd1306_fill_screen(uint8_t chXpos1, uint8_t chYpos1, uint8_t chXpos2, uint8_t chYpos2, uint8_t chDot);
extern void ssd1306_display_char(uint8_t chXpos, uint8_t chYpos, uint8_t chChr, uint8_t chSize, uint8_t chMode);
extern void ssd1306_display_num(uint8_t chXpos, uint8_t chYpos, uint32_t chNum, uint8_t chLen,uint8_t chSize);
extern void ssd1306_display_string(uint8_t chXpos, uint8_t chYpos, const uint8_t *pchString, uint8_t chSize, uint8_t chMode);
extern void ssd1306_draw_1616char(uint8_t chXpos, uint8_t chYpos, uint8_t chChar);
extern void ssd1306_draw_3216char(uint8_t chXpos, uint8_t chYpos, uint8_t chChar);
extern void ssd1306_draw_bitmap(uint8_t chXpos, uint8_t chYpos, const uint8_t *pchBmp, uint8_t chWidth, uint8_t chHeight);
void oled_Init(void);

#endif /* OLED_H_ */
