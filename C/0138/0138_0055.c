#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int blokdata (long int *n, long int *m, long int *l);

int main()
{
	double a[10],b[10],c[10],g[10];
	double d[10],e[10][10],f[10];
	long int i,j;
	long int n,m,l;
	for(i=0;i<10;i++)
	{
		a[i]=2.0;
	}
	for(i=0;i<10;i++)
	{
		b[i]=8.0;
	}
	for(i=0;i<10;i++)
	{
		c[i]=5.0;
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
	blokdata(&n,&m,&l);
	for(j=0;j<5;j++)
	{
		for(i=0;i<10;i++)
		{
			if (n > 5)
			{
				d[i]=f[i]+10.0;
			}
		}
		for(i=1;i<9;i++)
		{
			if (m <  8)
			{
				g[i]=(a[i]*b[i])-2-(a[i]*4.0+c[i]);
				if (l <  10)
				{
					e[i][j]=(a[i]+b[i])*2.5-a[i]*4.0+c[i];
				}
			}
			else
			{
				e[i][j]=(a[i]+b[i])*2.5-a[i]*5.0+c[i];
			}
			if (i >  5)
			{
				c[i]=a[i]*10.0+b[i]-((b[i]*2.0)-a[i]+2.0);
			}
			c[i]=b[i]+a[i];
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
		printf(" a[%ld]= %f  b[%ld]= %f \n",i,a[i],i,b[i]);
	}
	exit (0);
}
int blokdata (long int *n, long int *m, long int *l)
{
	*n=7;
	*m=4;
	*l=10;
}
