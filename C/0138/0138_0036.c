#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[600],b[600],c[600],d[600];
	long int e[600],f[600];
	long int g[600],h[600],i[600],k[600];
	static int j;
	for(j=0;j< 600;j++)
	{
		a[j]=1;
	}
	for(j=0;j< 600;j++)
	{
		b[j]=2;
	}
	for(j=0;j< 600;j++)
	{
		c[j]=3;
	}
	for(j=0;j< 600;j++)
	{
		d[j]=4;
	}
	for(j=0;j< 600;j++)
	{
		e[j]=5;
	}
	for(j=0;j< 600;j++)
	{
		f[j]=6;
	}
	for(j=0;j< 600;j++)
	{
		g[j]=7;
	}
	for(j=0;j< 600;j++)
	{
		h[j]=8;
	}
	for(j=1;j<=10;j++)
	{
		i[j]=a[j]*b[j]*c[j]*d[j]*e[j]*f[j]*g[j]*h[j];
		k[j]=a[j]*b[j]*c[j]*d[j]*e[j]*f[j]*g[j]*h[j]*i[j];
	}
	printf("  *****  *****\n");
	printf(" a[1]= %ld  b[1]= %ld  c[1]= %ld \n",a[1],b[1],c[1]);
	printf(" d[1]= %ld  e[1]= %ld  f[1]= %ld \n",d[1],e[1],f[1]);
	printf(" g[1]= %ld  g[1]= %ld  \n",g[1],h[1]);
	printf(" i[1]= %ld \n",i[1]);
	printf(" k[1]= %ld  \n",k[1]);
	exit (0);
}
 
