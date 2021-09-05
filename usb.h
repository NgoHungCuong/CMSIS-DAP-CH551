#ifndef _USB_H_
#define _USB_H_
#include <stdint.h>

void USB_InitClock(void);
void USB_Init(void);
void USB_Task(void);
uint32_t calc(void);

//#define USB_DBG

#endif