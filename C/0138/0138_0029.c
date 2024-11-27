#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[1],b[2],c[1],d[1],e[1],f[1],g[1],h[1];
	long int i,j,n;
	for(i=0;i<2;i++)
	{
		b[i]=10;
	}
	n=2;
	for(j=0;j<1;j++)
	{
		a[j]=1;
		b[j]=2;
		c[j]=3;
		d[j]=4;
		e[j]=5;
		f[j]=6;
		g[j]=7;
		h[j]=8;
	}
	printf("  *****  *****\n");
	for(i=0;i<1;i++)
	{
		printf(" a[0]= %ld \n",a[0]);
		for(j=0;j<n;j++)
		{
			printf(" b[%d]= %ld ",j,b[j]);
		}
		printf("\n c[0]= %ld  d[0]= %ld  e[0]= %ld ",c[0],d[0],e[0]);
		printf(" f[0]= %ld  g[0]= %ld \n",f[0],g[0]);
		for(j=0;j<1;j++)
		{
			printf(" h[%d]= %ld ",j,h[j]);
		}
	}
	printf("\n");
	exit (0);
}
 
