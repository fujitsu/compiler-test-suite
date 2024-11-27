#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	float r,alpha,s;
	r=15.25;
	alpha=120.0;
	s=alpha*3.14159*r*r/360.0;
	printf("%8.1f\n",s);
	exit (0);
}
