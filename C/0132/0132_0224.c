
#include "001.h"
int func(I8 x, I8 y);
int main() {
	I8	a=0x7fffffff00000000ll;
	I8	b=0xffffffffffffffffll;
	I8	c=0x000000007fffffffll;
	I8	d=0xffffffffffffffffll;
	
	a += c;
	b += d;
	func(a,b);

	return(0);
}

int func(x,y) 
I8	x,y;
{
	if( x == 0x7fffffff7fffffffll )	printf("***** cal(i8 += i8) OK *****\n");
	else				printf("***** cal(i8 += i8) NG *****\n");
	if( y == -2 )			printf("***** cal(i8 += i8) OK *****\n");
	else				printf("***** cal(i8 += i8) NG *****\n");

}
