#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "001.h"
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i) c[i-1]
#define D(i) d[i-1]
double a[100],b[100],c[100],d[100];
int main()
{
	long int i,j;
	double amx,han;
	for(i=0;i<100;i++){
		a[i]=0.0;
		b[i]=0.0;
		c[i]=0.0;
		d[i]=0.0;
	}
	d[99]=1.0;
	for(i=0;i<100;i+=2)
	{
		a[i]=1.5;
		a[i+1]=2.5;
		b[i]=(-1.0);
		b[i+1]=2.0;
		c[i]=0.0;
		c[i+1]=(-10.0);
	}
	for(i=0;i<=98;i++)
	{

	}
	printf(" %ld\n",i);
	amx=0;
	for(i=0;i<=98;i++)
	{
		han=0;
		han=d[i]+b[i+1];
		if (amx < han)
		{
			amx=han;
			j=i;
		}
		c[i+1]=c[i]*d[i]*a[i];
	}
	printf(" %g,%ld\n",amx,j);
	for(i=0;i<=98;i++)
	{
		han=0;
		han=d[i]+b[i+1];
		if (amx < han)
		{
			amx=han;
		}
		c[i+1]=c[i]*d[i]*a[i];
	}
	printf("%g\n",amx);
	for(i=0;i<=98;i++)
	{
		d[i]=a[i]*(b[i]-1);
		a[i+1]=(d[i]-1+i)/(c[i]+1);
		d[99]=d[99]+a[9];
	}
	printf(" %ld\n",i);
	for(i=0;i<=99;i++){
		printf(" %g,%g,%g,%g    ",a[i],b[i],c[i],d[i]);
                if(i>0 && !(i%10) ) printf("\n");
	}
        printf("\n");
	exit (0);
}
