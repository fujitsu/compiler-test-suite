
#include "001.h"
int func(U8 x, U8 y);
int main() {
	U2	a = 0x7fff;
	U2	b = 0xffff;
	U8	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
U8	x,y;
{
	if( x == 0x7fff )	printf("***** conv(U2 -> u8) OK *****\n");
	else			printf("***** conv(U2 -> u8) NG *****\n");
	if( y == 0xffff )	printf("***** conv(U2 -> u8) OK *****\n");
	else			printf("***** conv(U2 -> u8) NG *****\n");
}
