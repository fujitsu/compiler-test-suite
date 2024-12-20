#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	double a[20]={
		2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,
		                 -2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0	},
	b[20]={
		-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,
		                 9.0,9.0,9.0,9.0,9.0,9.0,9.0,9.0,9.0,9.0	},
	c[20]={
		9.0,9.0,9.0,9.0,9.0,9.0,9.0,9.0,9.0,9.0,
		                 1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0	};
	long int i;
	for(i=0;i<9;i++)
	{
		a[i+1] = a[i] * b[i] - b[i+1];
		c[i+2] = c[i] * b[i] - b[i+1];
	}
	for(i=0;i<20;i++)
		printf("a[%ld] => %12.5f\n",i,a[i]);
	for(i=0;i<20;i++)
		printf("c[%ld] => %12.5f\n",i,c[i]);
	exit (0);
}
