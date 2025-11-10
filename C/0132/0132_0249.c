
#include "001.h"
int func(I8 x, I8 y);
int main() {
	U1	a = 0x7f;
	U1	b = 0xff;
	I8	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 127 )	printf("***** conv(u1 -> i8) OK *****\n");
	else		printf("***** conv(u1 -> i8) NG *****\n");
	if( y == 255 )	printf("***** conv(u1 -> i8) OK *****\n");
	else		printf("***** conv(u1 -> i8) NG *****\n");
}
