#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	double a[10],b[10],c[10],g[10];
	double d[10],e[10][10],f[10];
	long int i,j;
	for(i=0;i<10;i++)
	{
		a[i]=2.0;
	}
	for(i=0;i<10;i++)
	{
		b[i]=4.0;
	}
	for(i=0;i<10;i++)
	{
		c[i]=8.0;
	}
	for(i=0;i<10;i++)
	{
		g[i]=0.0;
	}
	for(i=0;i<10;i++)
	{
		d[i]=0.0;
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			e[i][j]=0.0;
		}
	}
	for(i=0;i<10;i++)
	{
		f[i]=2.0;
	}
	for(j=0;j<5;j++)
	{
		for(i=0;i<10;i++)
		{
			g[i]=(a[i]*b[i])-2-(a[i]*1.5+c[i]);
			e[i][j]=(a[i]+b[i])*2.5-a[i]*1.5+c[i];
			c[i]=a[i]*10.0+b[i]-((b[i]*2.0)-a[i]+2.0);
		}
	}
	for(i=1;i<9;i++)
	{
		d[i]=f[i]+10.0;
	}
	printf(" *****  *****\n");
	for(j=0;j<10;j++)
	{
		printf(" d[%ld]= %f  g[%ld]= %f ",j,d[j],j,g[j]);
		printf(" c[%ld]= %f  \n",j,c[j]);
		for(i=0;i<10;i++)
		{
			printf(" e[%ld][%ld]= %f",i,j,e[i][j]);
			if(((i+1)%4 == 0) && (i != 0)) printf("\n");
		}
		printf("\n");
	}
	exit (0);
}
 
