#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10][10],b[10][10],c[10][10];
	long int i,j;
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			a[j][i]=4.0;
		}
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			b[j][i]=3.0;
		}
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			c[j][i]=2.0;
		}
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			a[j][i]=b[j][i];
			c[j][i]=a[j][i];
		}
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			printf("c[%ld][%ld]=%g\n",j,i,c[j][i]);
		}
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			a[j][i]=b[j][i];
			c[j][i]=a[j][i];
		}
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			printf("c[%ld][%ld]=%g\n",j,i,c[j][i]);
		}
	}
	exit (0);
}
