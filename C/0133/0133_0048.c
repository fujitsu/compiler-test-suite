#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10][10],b[10][10],c[10][10],d[10][10];
	float s;
	long int k=8;
	long int i,j,l;
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			a[j][i]=1.0;
			b[j][i]=a[j][i];
			c[j][i]=b[j][i];
			d[j][i]=c[j][i];
		}
		s=b[1][1];
		for(l=0;l<10;l++)
		{
			c[k][l]=2.0;
			d[k][l]=c[k][l];
		}
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			printf("a[%ld][%ld]=%g , b[%ld][%ld]=%g",j,i,a[j][i],
			    j,i,b[j][i]);
			printf(" c[%ld][%ld]=%g , d[%ld][%ld]=%g\n",j,i,c[j][i],
			    j,i,d[j][i]);
		}
	}
	exit (0);
}
