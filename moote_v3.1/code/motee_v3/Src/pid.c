/**
*@file pid.c
*@brief this file contains functions for calculating PID algorithm
*@author Kamil Foryszewski
*/

#include "pid.h"

#define ERR_SUM_MAX		500

struct pid_params
{
	float kp;
	float ki;
	float kd;
	float err;
	float errSum;
	float errLast;
};

static struct pid_params pidParams;

void pid_init(float kp, float ki, float kd)
{
	pidParams.kp = kp;
	pidParams.ki = ki;
	pidParams.kd = kd;
	pidParams.err = 0;
	pidParams.errSum = 0;
	pidParams.errLast = 0;
}

void change_kp(float kp){
	pidParams.kp = kp;
}

void change_kd(float kd){
	pidParams.kd = kd;
}

void changeKi(float ki){
	pidParams.ki = ki;
}

float pid_calculate(float setVal, float readVal)
{
	float err_d, u;

	pidParams.err = setVal - readVal;
	pidParams.errSum += pidParams.err;

	if (pidParams.errSum > ERR_SUM_MAX) {
		pidParams.errSum = ERR_SUM_MAX;
	} else if (pidParams.errSum < -ERR_SUM_MAX) {
		pidParams.errSum = -ERR_SUM_MAX;
	}

	err_d = pidParams.errLast - pidParams.err;
	u = pidParams.kp * pidParams.err + pidParams.ki * pidParams.errSum + pidParams.kd * err_d;

	pidParams.errLast = pidParams.err;

	return u;
}
