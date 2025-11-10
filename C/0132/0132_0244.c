
#include "001.h"
int func(R8 x, R8 y);
#ifdef __uxppx__
#define		RESULT	9223372036854775800.0
#else
#define		RESULT	9223372036854775600.0
#endif
int main() {
	I8	a=0x7fffffffffffffffll;
	I8	b=0xffffffffffffffffll;
	R8	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
R8	x,y;
{
	if( x == RESULT )	printf("***** conv(i8 -> r8) OK *****\n");
	else			printf("***** conv(i8 -> r8) NG *****\n");
	if( y == -1.0   )	printf("***** conv(i8 -> r8) OK *****\n");
	else			printf("***** conv(i8 -> r8) NG *****\n");
}
