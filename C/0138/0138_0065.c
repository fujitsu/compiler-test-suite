#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	float a[10],b[10],c[10];
	long int i;
	for(i=0;i<10;i++)
	{
		b[i]=2.0;
	}
	for(i=0;i<10;i++)
	{
		c[i]=0.3;
	}
	for(i=0;i<10;i++)
	{
		a[i]=sin(b[i]);
	}
	for(i=0;i<10;i++)
	{
		a[i]=b[i];
		a[i]=sin(b[i]);
		c[i]=b[i]*0.5;
	}
	for(i=0;i<10;i++)
	{
		if (a[i] > 6)
		{
			a[i]=sin(b[i]);
		}
		else
		{
			a[i]=0.5;
		}
	}
	for(i=0;i<10;i++)
	{
		a[i]=sin(b[i]);
		c[i]=sin(c[i]);
	}
	for(i=0;i<10;i++)
	{
		a[i]=b[i];
		if (a[i] >  0.5)
		{
			a[i]=sin(b[i]);
			c[i]=sin(b[i]);
		}
		else
		{
			c[i]=b[i]*0.5+c[i];
		}
	}
	printf(" *****  ****\n");
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]= %f  b[%ld]= %f ",i,a[i],i,b[i]);
		printf(" c[%ld]= %f \n",i,c[i]);
	}
	exit (0);
}
 
