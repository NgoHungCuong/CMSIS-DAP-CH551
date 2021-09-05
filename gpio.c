#include "gpio.h"

static SBIT(led, 0x90, 4);

void Led_Init(void)
{
	P1_MOD_OC &= ~(1 << 4);
	P1_DIR_PU |= (1 << 4);
	led = 0;
}
void Led_On(void)
{
	led = 1;
}
void Led_Off(void)
{
	led = 0;
}
