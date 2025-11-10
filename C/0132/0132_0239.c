
#include "001.h"
int func(I2 x, I2 y);
int main() {
	I8	a=0x7fffffffffffffffll;
	I8	b=0xffffffffffffffffll;
	I2	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
I2	x,y;
{
	if( x == -1 )	printf("***** conv(i8 -> i2) OK *****\n");
	else		printf("***** conv(i8 -> i2) NG *****\n");
	if( y == -1 )	printf("***** conv(i8 -> i2) OK *****\n");
	else		printf("***** conv(i8 -> i2) NG *****\n");
}
