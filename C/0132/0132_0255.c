
#include "001.h"
int func(I8 x, I8 y);
int main() {
	R16	a = 1.0;
	R16	b = -1.0;
	I8	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 1 )	printf("***** conv(R16 -> i8) OK *****\n");
	else		printf("***** conv(R16 -> i8) NG *****\n");
	if( y == -1 )	printf("***** conv(R16 -> i8) OK *****\n");
	else		printf("***** conv(R16 -> i8) NG *****\n");
}
