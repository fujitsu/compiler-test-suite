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
		b[i]=2.0;
	}
	for(i=0;i<10;i++)
	{
		c[i]=2.0;
	}
	for(i=0;i<10;i++)
	{
		g[i]=1.0;
	}
	for(i=0;i<10;i++)
	{
		d[i]=0.0;
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			e[i][j]=1.0;
		}
	}
	for(i=0;i<10;i++)
	{
		f[i]=2.1;
	}
	for(j=0;j<5;j++)
	{
		for(i=0;i<10;i++)
		{
			d[i]=f[i]+2.0+b[i]+d[i]+c[i]+f[i]+d[i]+a[i]+2.0;
			a[i]=f[i]+(-4.0+b[i])+d[i]+(c[i]-f[i]-d[i])-a[i]-2.0;
		}
	}
	printf(" *****  *****\n");
	for(j=0;j<10;j++)
	{
		printf(" d[%ld]= %f  g[%ld]= %f ",j,d[j],j,g[j]);
		printf(" c[%ld]= %f  a[%ld]= %f \n",j,c[j],j,a[j]);
		for(i=0;i<10;i++)
		{
			printf(" e[%ld][%ld]= %f ",i,j,e[i][j]);
			if(((i+1)%4 == 0) && (i != 0)) printf("\n");
		}
		printf("\n");
	}
	exit (0);
}
 
