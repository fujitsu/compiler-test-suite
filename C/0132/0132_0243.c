
#include "001.h"
int func(U8 x, U8 y);
int main() {
	I8	a=0x7fffffffffffffffll;
	I8	b=0xffffffffffffffffll;
	U8	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
U8	x,y;
{
	if( x == 0x7fffffffffffffffll )	printf("***** conv(i8 -> u8) OK *****\n");
	else				printf("***** conv(i8 -> u8) NG *****\n");
	if( y == 0xffffffffffffffffll )	printf("***** conv(i8 -> u8) OK *****\n");
	else				printf("***** conv(i8 -> u8) NG *****\n");
}
