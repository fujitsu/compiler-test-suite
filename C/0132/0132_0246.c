
#include "001.h"
int func(I8 x, I8 y);
int main() {
	I1	a = 0x7f;
	I1	b = 0xff;
	I8	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 127 )	printf("***** conv(i1 -> i8) OK *****\n");
	else		printf("***** conv(i1 -> i8) NG *****\n");
	if( y == -1  )	printf("***** conv(i1 -> i8) OK *****\n");
	else		printf("***** conv(i1 -> i8) NG *****\n");
}
