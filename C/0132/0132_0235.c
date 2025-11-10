
#include "001.h"
int func(I8 x, I8 y);
int main() {
	I8	a=0x7fffffffffffffffll;
	I8	b=0xffffffffffffffffll;
	U4	c=0xffffffff;
	U4	d=0xffffffff;
	
	a -= c;
	b -= d;
	func(a,b);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 0x7fffffff00000000ll )	printf("***** cal(i8 -= u4) OK *****\n");
	else				printf("***** cal(i8 -= u4) NG *****\n");
	if( y == 0xffffffff00000000ll )	printf("***** cal(i8 -= u4) OK *****\n");
	else				printf("***** cal(i8 -= u4) NG *****\n");

}
