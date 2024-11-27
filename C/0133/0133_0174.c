#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub2(double a[10][10],double b[10][10],long int n,long int m);
int sub1(double a[10][10],double b[10][10],long int n,long int m);
#define N 10
#define M 10

int main()
{
	double a[N][M],b[N][M],c[N][M],d[N][M],aa[N],xx,x ;
	long int ni[3]={
				2,5,10		},
	mi[3]={
				2,5,10		};
	static unsigned long int ll[N]={
				1,1,1,1,1,0,0,0,0,0		},
	m1=1,m2=1,m3=1 ;
	long int ii,i,j,k,l,mm,nn ;
	if (m1 == 1)
	{
		for(i=0;i<M;i++)
		{
			for(j=0;j<N;j++)
			{
				a[j][i] = 9.9 ;
			}
		}
	}
	if (a[0][0] == 0.0) goto lbl_99 ;
lbl_99:
	;
	a[0][0] = 1.0 ;
	a[1][0] = 2.0 ;
	for(i=0;i<M;i++)
	{
		for(j=0;j<N;j++)
		{
			b[j][i] = 2.9 ;
		}
	}
	xx = 9.999 ;
	for(i=0;i<M;i++)
	{
		for(j=0;j<N;j++)
		{
			b[j][i] = b[j][i] + a[j][i] ;
		}
	}
	sub1(a,b,N,M) ;
	for(i=0;i<M;i++)
	{
		for(j=0;j<N;j++)
		{
			c[j][i] = 4.2 ;
		}
	}
	sub2(a,b,N,M) ;
	for(ii=0;ii<3;ii++)
	{
		nn = ni[ii] ;
		mm = mi[ii] ;
		for(i=0;i<mm;i++)
		{
			for(j=0;j<nn;j++)
			{
				a[j][i] = b[j][i] * c[j][i] ;
			}
		}
		for(i=0;i<mm;i++)
		{
			for(j=0;j<nn;j++)
			{
				printf("a[%ld][%ld]=%8.3f b[%ld][%ld]=%8.3f c[%ld][%ld]=%8.3f\n",
				    j,i,a[j][i],j,i,b[j][i],j,i,c[j][i]) ;
			}
		}
		for(i=0;i<mm;i++)
		{
			for(j=0;j<nn;j++)
			{
				c[j][i] = a[j][i] - b[j][i] ;
			}
		}
		for(i=0;i<mm;i++)
		{
			for(j=0;j<nn;j++)
			{
				printf("c[%ld][%ld]=%8.3f \n",j,i,c[j][i]) ;
			}
		}
	}
	if (m1 == 1)
	{
		for(i=0;i<M;i++)
		{
			for(j=0;j<N;j++)
			{
				x = i * j ;
				d[j][i] = sqrt(x) ;
			}
		}
	}
	else if(m2 == 1)
	{
		for(k=0;k<M;k++)
		{
			aa[k] = 1.0 ;
		}
	}
	else if(m3 == 1)
	{
		for(i=0;i<M;i++)
		{
			for(j=0;j<N;j++)
			{
				d[j][i] = 0.0 ;
			}
		}
	}
	for(k=0;k<N;k++)
	{
		if (ll[k] == 1)
		{
			for(i=0;i<M;i++)
			{
				for(j=0;j<N;j++)
				{
					a[j][i] = b[j][i] - c[j][i] ;
				}
			}
		}
		else
		{
			for(i=0;i<M;i++)
			{
				for(j=0;j<N;j++)
				{
					c[j][i] = 0.0 ;
				}
			}
		}
	}
	for(i=0;i<N;i++)
		for(j=0;j<M;j++)
			printf("c[%ld][%ld]=%8.3f d[%ld][%ld]=%8.3f \n",
			    i,j,c[i][j],i,j,d[i][j]) ;
	exit (0);
}
int sub1(double a[10][10],double b[10][10],long int n,long int m)
{
	long int i,j ;
	for(i=0;i<m;i++)
	{
		for(j=0;j<n;j++)
		{
			a[j][i] = 5.0 ;
			b[j][i] = 3.0 ;
		}
	}
	return 0;
}
int sub2(double a[10][10],double b[10][10],long int n,long int m)
{
	long int i,j ;
	for(i=0;i<m;i++)
	{
		for(j=0;j<n;j++)
		{
			a[j][i] = b[j][i] * 4.3 ;
		}
	}
	return 0;
}
