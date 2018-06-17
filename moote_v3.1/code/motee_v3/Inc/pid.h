/**
*@file pid.h
*@brief this header file contains prototypes of functions for calculating PID algorithm
*@author Kamil Foryszewski
*/
/* Define to prevent recursive inclusion -------------------------------------*/

#ifndef PID_H_
#define PID_H_


/**
*This method will be used to init pid values
*@author Kamil Foryszewski
*@param kp proportional part
*@param ki integral part
*@param kd derivative part
*/
void pid_init(float kp, float ki, float kd);

/**
*This method will be used to calculate actual PID steering value
*@author Kamil Foryszewski
*@param set_val value to reach
*@param read_val actual speed from encoder
*@retval float actual PID control value
*/
float pid_calculate(float set_val, float read_val);

/**
*This method will be used to change PID settings
*@author Kamil Foryszewski
*@param kp proportional part to set
*/
void change_kp(float kp);
/**
*This method will be used to change PID settings
*@author Kamil Foryszewski
*@param kd proportional part to set
*/
void change_kd(float kd);
/**
*This method will be used to change PID settings
*@author Kamil Foryszewski
*@param ki proportional part to set
*/
void change_ki(float ki);

#endif /* PID_H_ */

/************************ KF **************************************************/
