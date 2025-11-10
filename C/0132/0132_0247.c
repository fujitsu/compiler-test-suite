
#include "001.h"
int func(I8 x, I8 y);
int main() {
	I2	a = 0x7fff;
	I2	b = 0xffff;
	I8	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 0x7fff )	printf("***** conv(i2 -> i8) OK *****\n");
	else			printf("***** conv(i2 -> i8) NG *****\n");
	if( y == -1 )		printf("***** conv(i2 -> i8) OK *****\n");
	else			printf("***** conv(i2 -> i8) NG *****\n");
}
