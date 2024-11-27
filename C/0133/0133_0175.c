#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 10

int main()
{
	double a[N][N],b[N][N],c[N][N] ;
	long int i,j,k ;
	for(j=0;j<N;j++)
	{
		for(i=0;i<N;i++)
		{
			b[i][j] = 1.0 ;
			c[i][j] = 2.0 ;
		}
	}
	for(i=0;i<N;i++)
	{
		for(j=0;j<N;j++)
		{
			a[j][i] = 0.0 ;
			for(k=0;k<N;k++)
			{
				a[j][i] = a[j][i] + b[k][i] * c[k][i] ;
			}
		}
	}
	for(i=0;i<N;i++)
	{
		for(j=0;j<N;j++)
		{
			a[j][i] = 0.0 ;
		}
	}
	for(j=0;j<N;j++)
	{
		for(k=0;k<N;k+=2)
		{
			for(i=0;i<N;i++)
			{
				a[j][i] = a[j][i] + b[k][i] * c[j][k] +b[k+1][i] * c[j][k+1] ;
			}
		}
	}
	for(i=0;i<N;i++)
		for(j=0;j<N;j++)
			printf("a[%ld][%ld] => %8.3f \n",j,i,a[j][i]) ;
	exit (0);
}
