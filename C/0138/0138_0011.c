#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	double a[10],b[10];
	long int n;
	long int i,j;
	for(i=0;i<10;i++)
	{
		a[i]=0.5;
	}
	n=10;
	for(i=0;i<n;i++)
	{
		a[i]=a[i]+1.;
		b[i]=a[i];
	}
	for(i=0;i<10;i++)
	{
		b[i]=((b[i]-1.0)+10.0)/10.0+(a[i]+2.0)/
		    (a[i]*15.0-(a[i]+1.0))*(1.0+a[i]);
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]=%g b[%ld]=%g \n",i,a[i],i,b[i]);
	}
	exit (0);
}
