
#include "001.h"
int func(I8 x, I8 y);
int main() {
	I8	a=0x7fffffffffffffffll;
	I8	b=0xffffffffffffffffll;
	R16	c=15.0l;
	R16	d=-1.0l;
	
	a -= c;
	b -= d;
	func(a,b);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 0x7ffffffffffffff0ll )	printf("***** cal(i8 -= r16) OK *****\n");
	else				printf("***** cal(i8 -= r16) NG *****\n");
	if( y == 0 )			printf("***** cal(i8 -= r16) OK *****\n");
	else				printf("***** cal(i8 -= r16) NG *****\n");

}
