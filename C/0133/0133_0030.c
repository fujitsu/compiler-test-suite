#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10][10],b[10][10];
	float c[10][10],d[10][10];
	float e[10][10],f[10][10];
	long int i,j;
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			a[j][i]=c[j][i]=e[j][i]=1.0;
		}
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			b[j][i]=d[j][i]=f[j][i]=2.0;
		}
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			printf("a[%ld][%ld]=%g , b[%ld][%ld]=%g\n",j,i,a[j][i],
			    j,i,b[j][i]);
		}
		for(i=0;i<10;i++)
		{
			b[j][i]=a[j][i];
		}
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			printf("c[%ld][%ld]=%g , d[%ld][%ld]=%g\n",j,i,c[j][i],
			    j,i,d[j][i]);
		}
		for(i=0;i<10;i++)
		{
			e[j][i]=f[j][i];
		}
	}
	exit (0);
}

