#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	double a[100],b[100],c[100],z[100];
	long int i,n1=100;
	for(i=0;i<100;i++){
		a[i] = 0.10;
		b[i] = 0.20;
		c[i] = 0.30;
		z[i] = 0.0;
	}
	for(i=0;i<n1;i++)
	{
		a[i] = sin(c[i]);
	}
	for(i=0;i<n1-2;i++)
	{
		b[i] = -(i+1) + 1.0;
	}
	for(i=1;i<n1;i++)
	{
		z[i] = b[i-1] - c[i] + 2.0;
	}
	for(i=0;i<100;i++)
	{
		printf("z[%ld] = %g , a[%ld] = %g , b[%ld] = %g\n",i,z[i],
		    i,a[i],i,b[i]);
	}
	exit (0);
}
