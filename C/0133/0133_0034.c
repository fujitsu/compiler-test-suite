#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10],b[10];
	float x[10],y[10],z[10];
	long int i,j;
	for(i=0;i<10;i++)
	{
		x[i]=1.0;
		y[i]=2.4;
		z[i]=5.1;
		a[i]=0.0;
		b[i]=0.0;
	}
	printf("''\n");
	for(i=0;i<10;i++)
	{
		a[i]=a[i]+b[i];
		for(j=0;j<10;j++)
		{
			b[j]=1.0;
		}
	}
	for(i=0;i<10;i++)
	{
		printf("a[%ld]=%g , b[%ld]=%g\n",i,a[i],i,b[i]);
	}
	for(i=0;i<10;i++)
	{
		z[i]=x[i]+y[i];
		for(j=0;j<10;j++)
		{
			x[j]=1.0;
		}
	}
	for(i=0;i<10;i++)
	{
		printf("x[%ld]=%g , y[%ld]=%g , z[%ld]=%g\n",i,x[i],
		    i,y[i],i,z[i]);
	}
	exit (0);
}
