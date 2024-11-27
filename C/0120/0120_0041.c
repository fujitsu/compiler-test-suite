#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	float a,b,x;
	a=5.0;
	b=3.0;
	x=((a*a-a*b)/2.0*a-b);
	printf("%8.2f\n",x);
	exit (0);
}
