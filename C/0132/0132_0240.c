
#include "001.h"
int func(I8 x, I8 y);
int main() {
	I8	a=0x7fffffffffffffffll;
	I8	b=0xffffffffffffffffll;
	I8	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 0x7fffffffffffffffll )	printf("***** conv(i8 -> i8) OK *****\n");
	else				printf("***** conv(i8 -> i8) NG *****\n");
	if( y == -1 )			printf("***** conv(i8 -> i8) OK *****\n");
	else				printf("***** conv(i8 -> i8) NG *****\n");
}
