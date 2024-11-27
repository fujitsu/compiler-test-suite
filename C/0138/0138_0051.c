#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10],b[10],c[10],g[10];
	float d[10],e[10][10],f[10];
	unsigned long int ll[10][10];
	long int n=785;
	long int m=2;
	long int l=12;
	long int i,j;
	for(i=0;i<10;i++)
	{
		a[i]=2.0;
		b[i]=4.0;
		c[i]=5.0;
		g[i]=0.0;
		d[i]=0.0;
		f[i]=2.0;
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			e[i][j]=0.0;
		}
	}
	printf(" VPSOPT:5000\n");
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			if (m > i)
			{
				ll[i][j]=a[i]>b[i];
				b[i]=a[i]+b[i];
			}
			else
			{
				ll[i][j]=(a[i]<=b[i])|(d[i]< c[i]);
				a[i]=b[i]+a[i];
			}
		}
	}
	for(i=1;i<9;i++)
	{
		g[i]=(a[i]*b[i]);
	}
	for(j=0;j<5;j++)
	{
		for(i=5;i<10;i++)
		{
			if (ll[i][j]==1)
			{
				f[i]=a[i]*b[i];
			}
			else
			{
				f[i]=a[i]+b[i];
			}
		}
		for(i=0;i<5;i++)
		{
			if (ll[i][j]==1)
			{
				f[i]=a[i]+b[i]+c[i];
				a[i]=b[i]+f[i]*2.0;
			}
			else if (m > 10)
			{
				f[i]=a[i]+b[i]+c[i]+d[i];
			}
			else if (n > 100)
			{
				f[i]=1.0;
				a[i]=2.0;
				b[i]=3.0;
			}
			else if (f[i] > 2.0)
			{
				f[i]=a[i]+b[i]+c[i]+d[i];
			}
			else if (c[i] < 1.0)
			{
				f[i]=c[i]+d[i];
			}
		}
	}
	printf(" *****  *****\n");
	for(j=0;j<10;j++)
	{
		printf(" ***** d.g.c.a.b.f [%ld] *****\n",j);
		printf(" d[%ld]= %f  g[%ld]= %f ",j,d[j],j,g[j]);
		printf(" c[%ld]= %f  a[%ld]= %f \n",j,c[j],j,a[j]);
		printf(" b[%ld]= %f  f[%ld]= %f \n",j,b[j],j,f[j]);
		for(i=0;i<10;i++)
		{
			if(i%10 == 0)
				printf(" ***** e.ll[%ld][%ld]-[%ld][%ld] *****\n",i,j,(i+9),j);
			printf(" e[%ld][%ld]= %f ",i,j,e[i][j]);
			printf(" ll[%ld][%ld]= %ld ",i,j,ll[i][j]);
			if(((i+1)%2 == 0) && (i != 0)) printf("\n");
		}
	}
	exit (0);
}
