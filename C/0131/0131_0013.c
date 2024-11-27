#include <stdlib.h>
#include <stdio.h>
#include <math.h>


int main()
{
	long int i;
	double  a[20],b[20],c[20];
	double  *x[20],*y[20],*z[20];
	for(i=0;i<20;i++)
	{
		a[i]=i;
		b[i]=10*(-i);
		c[i]=21-i;
		x[i]=&a[i];
		y[i]=&b[i];
		z[i]=&c[i];
	}
	for(i=0;i<20;i++)
	{
		a[i]=b[i]+c[i];
	}
	printf(" main result-1 \n");
	for(i=0;i<20;i++)
	{
		printf("a=%lg ",a[i]);
	}
	printf("\n");
	for(i=0;i<20;i++)
	{
		*x[i]=*y[i]+*z[i];
	}
	printf(" main result-2 \n");
	for(i=0;i<20;i++)
	{
		printf("x=%lg ",*x[i]);
	}
	printf("\n");
	exit (0);
}
