#include <stdlib.h>
#include <stdio.h>
#include <math.h>


int main()
{
	long int i;
	double  a[20],b[20],c[20];
	unsigned long int x[20],y[20],z[20];
	for(i=0;i<20;i++)
	{
		a[i]=i;
		b[i]=10*(-i);
		c[i]=21-i;
		x[i]=i;
		y[i]=22-i;
		z[i]=1+i;
	}
	for(i=0;i<20;i++)
	{
		a[i]=(b[i]>c[i])? b[i]:c[i];
		x[i]=(y[i]>z[i])? y[i]:z[i];
	}
	printf(" main result \n");
	for(i=0;i<20;i++)
	{
		printf("a=%lg x=%lu \n",a[i],x[i]);
	}
	exit (0);
}
