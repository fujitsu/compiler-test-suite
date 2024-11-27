#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10],b[10],c[10],d[10];
	long int m=10;
	long int n=10;
	long int o=10;
	long int p=10;
	long int i,j,k,l;
	for(i=0;i<m;i++)
	{
		a[i]=1.0;
	}
	for(j=0;j<n;j++)
	{
		b[j]=2.0;
	}
	for(k=0;k<o;k++)
	{
		c[k]=3.0;
	}
	for(l=0;l<p;l++)
	{
		d[l]=3.0;
	}
	printf("''\n");
	for(i=0;i<10;i++)
	{
		printf("a[%ld]=%g , b[%ld]=%g , c[%ld]=%g , d[%ld]=%g\n",
		    i,a[i],i,b[i],i,c[i],i,d[i]);
	}
	exit (0);
}
