#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	double a[2000],b[2000],t;
	long int i,n;
	for(i=0;i<2000;i++)
	{
		a[i] = 2.0;
		b[i] = -2.0;
	}
	n = (long int)(cos(0.0)) * 7;
	for(i=2;i<n*2;i++)
	{
		b[i+1] = a[i+2] / b[i+1] + a[i+2] - 3.0;
		t = a[i+2] * b[i] - b[i+1];
		a[i+2] = t * a[i];
	}
	for(i=0;i<20;i++)
		printf("a[%ld]=> %12.5f\n",i,a[i]);
	exit (0);
}
