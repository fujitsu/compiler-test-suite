#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10],b[10];
	float x=0.0,c=0.0;
	long int j,i;
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			x=x+1.0;
		}
		b[j]=x;
		a[j]=b[j];
	}
	for(i=0;i<10;i++)
	{
		printf("a[%ld]=%g\n",i,a[i]);
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			x=x+1.0;
		}
		b[j]=c;
		a[j]=b[j];
	}
	for(i=0;i<10;i++)
	{
		printf("a[%ld]=%g\n",i,a[i]);
	}
	exit (0);
}
