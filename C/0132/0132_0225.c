
#include "001.h"
int func(I8 x, I8 y);
int main() {
	I8	a=0x7fffffffffffff00ll;
	I8	b=0xffffffffffffffffll;
	U1	c=0xff;
	U1	d=0xff;
	
	a += c;
	b += d;
	func(a,b);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 0x7fffffffffffffffll )	printf("***** cal(i8 += u1) OK *****\n");
	else				printf("***** cal(i8 += u1) NG *****\n");
	if( y == 254 )			printf("***** cal(i8 += u1) OK *****\n");
	else				printf("***** cal(i8 += u1) NG *****\n");

}
