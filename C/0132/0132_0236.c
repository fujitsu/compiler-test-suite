
#include "001.h"
int func(I8 x, I8 y);
int main() {
	I8	a=0x7fffffffffffffffll;
	I8	b=0xffffffffffffffffll;
	U8	c=0x0000000fffffffffll;
	U8	d=0x0000000fffffffffll;
	
	a -= c;
	b -= d;
	func(a,b);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 0x7ffffff000000000ll )	printf("***** cal(i8 -= u8) OK *****\n");
	else				printf("***** cal(i8 -= u8) NG *****\n");
	if( y == 0xfffffff000000000ll )	printf("***** cal(i8 -= u8) OK *****\n");
	else				printf("***** cal(i8 -= u8) NG *****\n");

}
