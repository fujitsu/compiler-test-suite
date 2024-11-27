#include <stdlib.h>
#include <math.h>
#include<stdio.h>
#define CARRY 0x1
#define EVEN  0x4
#define INTER 0X10
#define ZERO  0x40
#define MINUS 0x80
int main()
{
	int psw;
	psw = 0;
	psw |= CARRY;
	printf("%2x\n",psw);
	psw |= EVEN ;
	printf("%2x\n",psw);
	psw = 0;
	psw = psw | MINUS | INTER | EVEN ;
	printf("%2x\n",psw);
	exit (0);
}
