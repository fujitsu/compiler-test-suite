
#include "001.h"
int func(U8 x, U8 y);
int main() {
	I1	a = 0x7f;
	I1	b = 0xff;
	U8	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
U8	x,y;
{
	if( x == 127 )	printf("***** conv(I1 -> u8) OK *****\n");
	else		printf("***** conv(I1 -> u8) NG *****\n");
	if( y == -1  )	printf("***** conv(I1 -> u8) OK *****\n");
	else		printf("***** conv(I1 -> u8) NG *****\n");
}
