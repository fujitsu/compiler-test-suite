#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{

	float pi,c,s,r,v;
	pi=3.14159;
	r=6.3784;
	c=2.0*pi*r;
	s=pi*r*r;
	v=4.0*r*s/3.0;
	printf("%g\n",v);
	exit (0);
}
