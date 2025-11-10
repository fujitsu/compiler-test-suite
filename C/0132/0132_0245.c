
#include "001.h"
int func(R16 x, R16 y);
#ifdef __uxppx__
#define		RESULT	9223372036854775800.0
#else
#define		RESULT	9223372036854775600.0 
#endif
int main() {
	I8	a=0x7fffffffffffffffll;
	I8	b=0xffffffffffffffffll;
	R16	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
R16	x,y;
{
	if( (double)x == RESULT )	printf("***** conv(i8 -> r16) OK *****\n");
	else				printf("***** conv(i8 -> r16) NG *****\n");
	if( y == -1.0l		 )	printf("***** conv(i8 -> r16) OK *****\n");
	else				printf("***** conv(i8 -> r16) NG *****\n");
}
