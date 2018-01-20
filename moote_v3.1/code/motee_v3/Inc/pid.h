#ifndef PID_H_
#define PID_H_


void pid_init(float kp, float ki, float kd);

float pid_calculate(float set_val, float read_val);

void changeKp(float kp);
void changeKd(float kd);
void changeKp(float ki);

#endif /* PID_H_ */
