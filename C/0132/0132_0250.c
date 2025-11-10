
#include "001.h"
int func(I8 x, I8 y);
int main() {
	U2	a = 0x7fff;
	U2	b = 0xffff;
	I8	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 0x7fff )	printf("***** conv(u2 -> i8) OK *****\n");
	else			printf("***** conv(u2 -> i8) NG *****\n");
	if( y == 0xffff )	printf("***** conv(u2 -> i8) OK *****\n");
	else			printf("***** conv(u2 -> i8) NG *****\n");
}
