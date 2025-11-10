
#include "001.h"
int func(I8 x, I8 y);
int main() {
	I8	a=0x00000000ffffffffll;
	I8	b=0xffffffffffffffffll;
	U8	c=0x7fffffff00000000ll;
	U8	d=0x7fffffffffffffffll;
	
	a += c;
	b += d;
	func(a,b);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 0x7fffffffffffffffll )	printf("***** cal(i8 += u8) OK *****\n");
	else				printf("***** cal(i8 += u8) NG *****\n");
	if( y == 0x7ffffffffffffffell )	printf("***** cal(i8 += u8) OK *****\n");
	else				printf("***** cal(i8 += u8) NG *****\n");

}
