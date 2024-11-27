#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10][10],b[10][10],c[10][10];
	long int n=10;
	long int j,i;
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			a[j][i]=2.4;
			b[j][i]=3.4;
			c[j][i]=4.4;
		}
	}
	for(j=0;j<10;j+=2)
	{
		for(i=0;i<10;i++)
		{
			a[j+1][i]=b[j][i];
			c[j][i]=a[j][i];
		}
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			printf("a[%ld][%ld]=%g , b[%ld][%ld]=%g , c[%ld][%ld]=%g\n"
			    ,j,i,a[j][i],j,i,b[j][i],j,i,c[j][i]);
		}
	}
	exit (0);
}
