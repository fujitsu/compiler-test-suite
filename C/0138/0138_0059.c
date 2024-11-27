#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int blokdata();

int main()
{
	double a[10],b[10],c[10],g[10];
	double d[10],e[10][10],f[10];
	static unsigned long int l1[10],l2[10];
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
			e[i][j]=3.0;
		}
	}
	for(i=0;i<10;i++)
	{
		f[i]=2.0;
	}
	blokdata();
	for(j=0;j<5;j++)
	{
		for(i=0;i<10;i++)
		{
			f[i]=a[i]+e[i][j];
			if (l1[i] == 1)
			{
				d[i]=f[i]+10.0;
			}
			else
			{
				d[i]=f[i]+5.0;
			}
		}
		for(i=1;i<9;i++)
		{
			if (l2[i] == 1)
			{
				g[i]=(a[i]*b[i])-2-(a[i]*1.5+c[i]);
			}
			else if (f[i] < e[i][j])
			{
				e[i][j]=(a[i]+b[i])*2.5-a[i]*1.5+c[i];
				c[i]=a[i]*10.0+b[i]-((b[i]*2.0)-a[i]+2.0);
			}
			if (c[i] >= g[i])
			{
				c[i]=g[i]+a[i];
			}
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

int blokdata()
{
	unsigned long int l1[10],l2[10];
	l2[0]=1;
	l2[1]=1;
	l2[2]=0;
	l2[3]=0;
	l2[4]=0;
	l2[5]=0;
	l2[6]=0;
	l2[7]=0;
	l2[8]=1;
	l2[9]=1;
}
 
