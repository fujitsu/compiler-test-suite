
#include "001.h"
int func(U2 x, U2 y);
int main() {
	I8	a=0x7fffffffffffffffll;
	I8	b=0xffffffffffffffffll;
	U2	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
U2	x,y;
{
	if( x == 0xffff )	printf("***** conv(i8 -> u2) OK *****\n");
	else			printf("***** conv(i8 -> u2) NG *****\n");
	if( y == 0xffff )	printf("***** conv(i8 -> u2) OK *****\n");
	else			printf("***** conv(i8 -> u2) NG *****\n");
}
