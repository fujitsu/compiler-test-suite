#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	double a[20]={
		2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,
		                 2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0	},
	b[20]={
		-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,
		                 -2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0	},
	t;
	long int i;
	for(i=0;i<10;i++)
	{
		t = a[i+3] * b[i] - b[i+1];
		a[i+3] = a[i+1] * t;
		a[i+1] = a[i+1] * b[i] - b[i+1];
		t = a[i] * t ;
	}
	for(i=0;i<20;i++)
		printf("a[%ld]=> %12.5f\n",i,a[i]);
	exit (0);
}
