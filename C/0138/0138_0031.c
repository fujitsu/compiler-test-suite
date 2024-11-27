#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[10]={
				10*1		},
	b[10]={
				10*1		},
	c[10]={
				10*2		},
	d[10]={
				10*3		};
	long int e[10],f[10],g[10],h[10];
	static int i,j;
	for(i=0;i<10;i++)
	{
		a[i]=1;
	}
	for(i=0;i<10;i++)
	{
		b[i]=1;
	}
	for(i=0;i<10;i++)
	{
		c[i]=2;
	}
	for(i=0;i<10;i++)
	{
		d[i]=3;
	}
	for(i=0;i<10;i++)
	{
		e[i]=4;
	}
	for(i=0;i<10;i++)
	{
		f[i]=5;
	}
	for(j=0;j<10;j++)
	{
		g[j]=a[j]+b[j]+c[j]+d[j]+e[j]+f[j];
		h[j]=a[j]*b[j]*c[j]*d[j]*e[j]*f[j];
	}
	printf("  *****  *****\n");
	printf(" a[1]= %2ld  b[1]= %2ld  c[1]= %2ld ",a[1],b[1],c[1]);
	printf(" d[1]= %2ld  e[1]= %2ld  f[1]= %2ld \n",d[1],e[1],f[1]);
	printf(" g[1]= %2ld  h[1]= %2ld  \n",g[1],h[1]);
	exit (0);
}
 
