
#include "001.h"
int func(I8 x, I8 y);
int main() {
	I8	a=0x7fffffffffffffffll;
	I8	b=0xffffffffffffffffll;
	I2	c=0x7fff;
	I2	d=0xffff;
	
	a -= c;
	b -= d;
	func(a,b);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 0x7fffffffffff8000ll )	printf("***** cal(i8 -= i2) OK *****\n");
	else				printf("***** cal(i8 -= i2) NG *****\n");
	if( y == 0 )			printf("***** cal(i8 -= i2) OK *****\n");
	else				printf("***** cal(i8 -= i2) NG *****\n");

}
