
#include "001.h"
int func(I8 x, I8 y);
int main() {
	I8	a=0x7fffffffffffffffll;
	I8	b=0xffffffffffffffffll;
	I8	c=0x7f00000000000000ll;
	I8	d=0xffffffffffffffffll;
	
	a -= c;
	b -= d;
	func(a,b);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 0x00ffffffffffffffll )	printf("***** cal(i8 -= i8) OK *****\n");
	else				printf("***** cal(i8 -= i8) NG *****\n");
	if( y == 0 )			printf("***** cal(i8 -= i8) OK *****\n");
	else				printf("***** cal(i8 -= i8) NG *****\n");

}
