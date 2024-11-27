#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10],b[10],c[10],g[10];
	float d[10],e[100][10],f[10];
	float x[250],y[250];
	long int i,j;
	for(i=0;i<10;i++)
	{
		a[i]=1.1;
	}
	for(i=0;i<10;i++)
	{
		b[i]=1.2;
	}
	for(i=0;i<10;i++)
	{
		c[i]=1.3;
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
		for(i=0;i<100;i++)
		{
			e[i][j]=0.0;
		}
	}
	for(i=0;i<10;i++)
	{
		f[i]=2.0;
	}
	for(i=0;i<250;i++)
	{
		x[i]=0.6;
	}
	for(i=0;i<250;i++)
	{
		y[i]=9.0;
	}
	for(j=0;j<5;j++)
	{
		for(i=0;i<10;i++)
		{
			d[i]=f[i]+10.0;
		}
		for(i=0;i<50;i++)
		{
			e[i][j]=y[i]*0.5;
		}
		for(i=0;i<80;i++)
		{
			e[i][j]=y[i]-0.5;
		}
		for(i=0;i<150;i++)
		{
			x[i]=y[i]*6.0;
		}
		for(i=0;i<250;i++)
		{
			x[i]=y[i]+1.6;
		}
		for(i=0;i<10;i++)
		{
			b[i]=a[i]+1.6;
		}
	}
	printf(" *****  *****\n");
	for(i=0;i<10;i++)
	{
		printf(" d[%ld]= %f  g[%ld]= %f \n",i,d[i],i,g[i]);
		printf(" c[%ld]= %f  a[%ld]= %f \n",i,c[i],i,a[i]);
		printf(" b[%ld]= %f \n",i,b[i]);
		printf(" f[%ld]= %f \n",i,f[i]);
	}
	for(i=0;i<100;i++)
	{
		for(j=0;j<10;j++)
		{
			printf(" e[%3ld][%2ld]= %f ",i,j,e[i][j]);
			if(((j+1)%3 == 0) && (j != 0)) printf("\n");
		}
		printf("\n");
	}
	for(i=0;i<250;i++)
	{
		printf(" x[%3ld]= %f  y[%3ld]= %f \n",i,x[i],i,y[i]);
	}
	exit (0);
}
 
