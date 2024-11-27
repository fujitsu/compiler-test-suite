#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float a[10]={
		5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0	},
	b[10]={
		3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0	},
	c[10],s;
	long int i;
	s = 0.0;
	for(i=0;i<10;i++)
	{
		c[i] = a[i] + b[i];
		s = s + a[i];
	}
	printf("s => %f\n",s);
	for(i=0;i<10;i++) printf("c[%ld] => %f\n",i,c[i]);
	exit (0);
}
