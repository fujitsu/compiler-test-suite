
#include "001.h"
int func(I8 x, I8 y);
int main() {
	I8	a=0x7fffffffffff0000ll;
	I8	b=0xffffffffffffffffll;
	U2	c=0xffff;
	U2	d=0xffff;
	
	a += c;
	b += d;
	func(a,b);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 0x7fffffffffffffffll )	printf("***** cal(i8 += u2) OK *****\n");
	else				printf("***** cal(i8 += u2) NG *****\n");
	if( y == 65534 )		printf("***** cal(i8 += u2) OK *****\n");
	else				printf("***** cal(i8 += u2) NG *****\n");

}
