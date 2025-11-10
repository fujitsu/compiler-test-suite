
#include "001.h"
int func(I8 x, I8 y);
int main() {
	U4	a = 0x7fffffff;
	U4	b = 0xffffffff;
	I8	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 0x7fffffff )	printf("***** conv(u4 -> i8) OK *****\n");
	else			printf("***** conv(u4 -> i8) NG *****\n");
	if( y == 0xffffffff )	printf("***** conv(u4 -> i8) OK *****\n");
	else			printf("***** conv(u4 -> i8) NG *****\n");
}
