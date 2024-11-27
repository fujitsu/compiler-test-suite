#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[600],b[600],c[600],d[600];
	long int e[600],f[600];
	long int g[600],h[600],i[600],k[600];
	long int n;
	static int l,j;
	for(l=0;l<600;l++)
	{
		a[l]=1;
	}
	for(l=0;l<600;l++)
	{
		b[l]=2;
	}
	for(l=0;l<600;l++)
	{
		c[l]=3;
	}
	for(l=0;l<600;l++)
	{
		d[l]=4;
	}
	for(l=0;l<600;l++)
	{
		e[l]=5;
	}
	for(l=0;l<600;l++)
	{
		f[l]=6;
	}
	for(l=0;l<600;l++)
	{
		g[l]=7;
	}
	for(l=0;l<600;l++)
	{
		h[l]=8;
	}
	n=600;
	for(j=0;j<n;j++)
	{
		i[j]=a[j]*b[j]*c[j]*d[j]*e[j]*f[j]*g[j]*h[j];
		k[j]=a[j]*b[j]*c[j]*d[j]*e[j]*f[j]*g[j]*h[j]*i[j];
	}
	printf("  *****  *****\n");
	printf(" a[1]= %ld  b[1]= %ld  c[1]= %ld \n",a[1],b[1],c[1]);
	printf(" d[1]= %ld  e[1]= %ld  f[1]= %ld \n",d[1],e[1],f[1]);
	printf(" g[1]= %ld  h[1]= %ld  \n",g[1],h[1]);
	printf(" i[1]= %ld \n",i[1]);
	printf(" k[1]= %ld \n",k[1]);
	exit (0);
}
 
