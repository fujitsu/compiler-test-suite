
#include "001.h"
int func(U1 x, U1 y);
int main() {
	I8	a=0x7fffffffffffffffll;
	I8	b=0xffffffffffffffffll;
	U1	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
U1	x,y;
{
	if( x == 255 )	printf("***** conv(i8 -> u1) OK *****\n");
	else		printf("***** conv(i8 -> u1) NG *****\n");
	if( y == 255 )	printf("***** conv(i8 -> u1) OK *****\n");
	else		printf("***** conv(i8 -> u1) NG *****\n");
}
