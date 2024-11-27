#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int blokdata(long int *n);

int main()
{
	double a[10],b[10],c[10],g[10];
	double d[10],e[10][10],f[10];
	long int i,j,n;
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
	blokdata(&n);
	for(j=0;j<5;j++)
	{
		for(i=0;i<10;i++)
		{
			d[i]=f[i]+10.0;
		}
		for(i=0;i<n;i++)
		{
			e[i][j]=f[i]+10.0;
		}
		for(i=2;i<9;i++)
		{
			g[i]=(a[i]*b[i])-2-(a[i]*4.0+c[i]);
			e[i][j]=(a[i]+b[i])*2.5-a[i]*4.0+c[i];
			c[i]=a[i]*10.0+b[i]-((b[i]*2.0)-a[i]+2.0);
		}
	}
	printf(" *****  *****\n");
	for(i=0;i<10;i++)
	{
		printf(" ***** [%ld] *****\n",i);
		printf(" d[%ld]= %f  g[%ld]= %f \n",i,d[i],i,g[i]);
		for(j=0;j<10;j++)
		{
			printf(" e[%d][%ld]= %f",i,j,e[i][j]);
			if(((j+1)%4 == 0) && (j != 0)) printf("\n");
		}
		printf(" c[%ld]= %f \n",i,c[i]);
	}
	exit (0);
}

int blokdata(long int *n)
{
	*n=8;
}
 
