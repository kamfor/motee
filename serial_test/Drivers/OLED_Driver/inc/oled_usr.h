/*
 * oledControl.h
 *
 *  Created on: Mar 6, 2017
 *      Author: cezary
 */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef OLED_USR_H_
#define OLED_USR_H_

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Exported types ------------------------------------------------------------*/
typedef struct{
  uint16_t batteryLevel;
  uint16_t batteryVoltage;
  uint16_t batteryPercent;
} OLED_DISPLAY_DATA_St;

/* Exported constants --------------------------------------------------------*/
/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */

//void batterylevel(void);
void displayBatteryLevel(void);
void displayBatteryVoltage(void);
void displayBatteryPercent(void);
void batteryDisplayInit (void);

#endif /* OLED_USR_H_ */

/*-------------------------------END OF FILE-------------------------------*/



