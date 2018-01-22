/**
  ******************************************************************************
  * File Name          : pid.h
  * Description        : This file provides code for calculating PID algorithm
  *****************************************************************************/
/* Define to prevent recursive inclusion -------------------------------------*/

#ifndef PID_H_
#define PID_H_


void pid_init(float kp, float ki, float kd);

float pid_calculate(float set_val, float read_val);

void change_kp(float kp);
void change_kd(float kd);
void change_ki(float ki);

#endif /* PID_H_ */

/************************ KF **************************************************/
