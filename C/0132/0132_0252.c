
#include "001.h"
int func(I8 x, I8 y);
int main() {
	U8	a = 0x7fffffffffffffffll;
	U8	b = 0xffffffffffffffffll;
	I8	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 0x7fffffffffffffffll )	printf("***** conv(u8 -> i8) OK *****\n");
	else				printf("***** conv(u8 -> i8) NG *****\n");
	if( y == 0xffffffffffffffffll )	printf("***** conv(u8 -> i8) OK *****\n");
	else				printf("***** conv(u8 -> i8) NG *****\n");
}
