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
			d[i]=f[i]+10.0;
			f[i]=d[i]+b[i]+c[i];
			g[i]=d[i]+f[i];
			e[i][j]=d[i]+f[i]+g[i];
		}
	}
	printf(" *****  *****\n");
	for(i=0;i<10;i++)
	{
		printf(" ***** [%ld] *****\n",i);
		printf(" d[%ld]= %f  g[%ld]= %f \n",i,d[i],i,g[i]);
		for(j=0;j<10;j++)
		{
			printf(" e[%ld][%ld]= %f ",i,j,e[i][j]);
			if(((j+1)%2 == 0) && (j != 0)) printf("\n");
		}
		printf(" c[%ld]= %f  f[%ld]= %f \n",i,c[i],i,f[i]);
	}
	exit (0);
}
 
