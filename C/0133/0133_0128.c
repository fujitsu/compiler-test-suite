#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[100],b[100],c[100],z[100],x[100];
	long int i,n1=100;
	for(i=0;i<100;i++){
		a[i] = 0.10;
		b[i] = 0.20;
		c[i] = 0.30;
	}
	for(i=1;i<n1;i++)
	{
		a[i] = sin(a[i]) + 0.11;
	}
	for(i=0;i<n1;i++)
	{
		x[i] = sin(c[i]) + a[i];
	}
	for(i=0;i<n1;i++)
	{
		z[i] = c[i] - x[i];
	}
	for(i=0;i<n1;i++)
	{
		z[i] = z[i] + 1.0;
	}
	for(i=0;i<100;i++)
	{
		printf("z[%ld] = %g  x[%ld] = %g  a[%ld] = %g\n",i,z[i],
		    i,x[i],i,a[i]);
	}
	exit (0);
}
