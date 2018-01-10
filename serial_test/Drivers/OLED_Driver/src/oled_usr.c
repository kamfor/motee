/*
 * oledControl.c
 *
 *  Created on: Mar 6, 2017
 *      Author: cezary
 */

/* Includes ------------------------------------------------------------------*/
#include "oled_usr.h"
#include "oled.h"
#include "Fonts.h"
/* Private typedef -----------------------------------------------------------*/
extern OLED_DISPLAY_DATA_St    OledDisplayData;
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

void displayBatteryLevel(void)
{
  //lvl, cha
 //0, 0 - empty battery
 //0, 1 - blink 1 seg
 //1, 0 - shine 1 seg
 //1, 1 - blink 1 to 2 seg
 //2, 0 - shine 2 seg
 //2, 1 - blink 1 to 3 seg
 //3, 0 - shine 3 seg
 //3, 1 - blink 1 to 4 seg
 //4, 0 - shine 4 seg
 //4, 1 - blink 1 to 5 seg
 //5, 0 - shine 5 seg             <-- full charged
 //5, 1 - blink all 5 seg         <-- full charged and charging flag is still on




  static uint8_t i=0;
  uint8_t charging;
  uint8_t level;

  level = OledDisplayData.batteryLevel & 0x0007; //maska 0000 0111
  charging = (OledDisplayData.batteryLevel & (1 << 3)) ? 1 : 0;

  if (charging){ // charging flag
    i++;

    if ((i-1)>level) i=0;  //blink 1 to 5 seg
    if (level == 5) {//blink all 5 seg
        if (i==6){
            i=0;
        } else {
            i=5;
        }
    }
  } else {
    i=level; //shine segments, without charging
  }




  switch(i){
  case 0: //empty frame
    ssd1306_fill_screen(17,23,119,54,0);
    break;
  case 1:
    ssd1306_fill_screen(17,23,119,54,0);
    ssd1306_draw_bitmap(102, 23, &c_chBatterySegment[0], 18, 32);
    break;
  case 2:
    ssd1306_fill_screen(17,23,119,54,0);
    ssd1306_draw_bitmap(81, 23, &c_chBatterySegment[0], 18, 32);
    ssd1306_draw_bitmap(102, 23, &c_chBatterySegment[0], 18, 32);
    break;
  case 3:
    ssd1306_fill_screen(17,23,119,54,0);
    ssd1306_draw_bitmap(60, 23, &c_chBatterySegment[0], 18, 32);
    ssd1306_draw_bitmap(81, 23, &c_chBatterySegment[0], 18, 32);
    ssd1306_draw_bitmap(102, 23, &c_chBatterySegment[0], 18, 32);
  //  ssd1306_clear_screen(0xFF);
    break;
  case 4:
    ssd1306_fill_screen(17,23,119,54,0);
    ssd1306_draw_bitmap(39, 23, &c_chBatterySegment[0], 18, 32);
    ssd1306_draw_bitmap(60, 23, &c_chBatterySegment[0], 18, 32);
    ssd1306_draw_bitmap(81, 23, &c_chBatterySegment[0], 18, 32);
    ssd1306_draw_bitmap(102, 23, &c_chBatterySegment[0], 18, 32);
    break;
  case 5:
    ssd1306_fill_screen(17,23,119,54,0);
    ssd1306_draw_bitmap(18, 23, &c_chBatterySegment[0], 18, 32);
    ssd1306_draw_bitmap(39, 23, &c_chBatterySegment[0], 18, 32);
    ssd1306_draw_bitmap(60, 23, &c_chBatterySegment[0], 18, 32);
    ssd1306_draw_bitmap(81, 23, &c_chBatterySegment[0], 18, 32);
    ssd1306_draw_bitmap(102, 23, &c_chBatterySegment[0], 18, 32);
    break;
  default:

    break;
  }
  ssd1306_refresh_gram();
}

void displayBatteryVoltage(void ){
  uint8_t nint;
  uint16_t nfra;

  nfra = OledDisplayData.batteryVoltage % 1000;
  nfra = nfra / 100;
  nint = OledDisplayData.batteryVoltage / 1000;

  if (OledDisplayData.batteryVoltage<1000) {
	  nint=0;
  }

  ssd1306_display_num(20, 0,nint, 2, 12);
  ssd1306_display_string(33, 0, ",", 12, 1);
  ssd1306_display_num(38, 0, nfra, 1, 12);
}


void displayBatteryPercent(void) {
  ssd1306_display_num(100, 0, OledDisplayData.batteryPercent, 3, 12);
}

void batteryDisplayInit(void) {
  //ssd1306_display_string(5, 0, "VersaBox Sp. z o.o.", 12, 1);
  //ssd1306_draw_bitmap(0, 16, c_chVBLogo, 128, 48);

  //ssd1306_refresh_gram();
  //HAL_Delay(1000);
  ssd1306_clear_screen(0x00);
  ssd1306_draw_bitmap(0, 16, c_chBatteryFrame, 128, 48);//18,39,60,81,102
  //ssd1306_display_string(49, 0, "V", 12, 1);
  //ssd1306_display_string(120, 0, "%", 12, 2);
  ssd1306_display_string(25, 0, "Motee Battery", 12, 1);
  ssd1306_refresh_gram();
}


/*----------------------------------------------------------------------------------*/
/*-------------------------------END OF FILE-------------------------------*/

