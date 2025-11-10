
#include "001.h"
int func(I1 x, I1 y);
int main() {
	I8	a=0x7fffffffffffffffll;
	I8	b=0xffffffffffffffffll;
	I1	c,d;
	
	c = a;
	d = b;
	func(c,d);

	return(0);
}

int func(I1 x, I1 y)
{
	if( x == -1 )	printf("***** conv(i8 -> i1) OK *****\n");
	else		printf("***** conv(i8 -> i1) NG *****\n");

	if( y == -1 )	printf("***** conv(i8 -> i1) OK *****\n");
	else		printf("***** conv(i8 -> i1) NG *****\n");

	return 0;
}
