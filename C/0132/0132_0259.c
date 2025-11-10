
#include "001.h"
int func(U8 x, U8 y);
int main() {
	U1	a = 0x7f;
	U1	b = 0xff;
	U8	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
U8	x,y;
{
	if( x == 127 )	printf("***** conv(U1 -> u8) OK *****\n");
	else		printf("***** conv(U1 -> u8) NG *****\n");
	if( y == 255 )	printf("***** conv(U1 -> u8) OK *****\n");
	else		printf("***** conv(U1 -> u8) NG *****\n");
}
