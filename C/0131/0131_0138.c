#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int a[], int n);

int main()
{
	int a[5][5],b[5][5]={
		{0,0,0,0,0},{1,1,1,1,1},{2,2,2,2,2},
		                                 {3,3,3,3,3},{4,4,4,4,4}	};
	unsigned int c[5][5],d[5][5]={
		{4,4,4,4,4},{3,3,3,3,3},{2,2,2,2,2},
		                                 {1,1,1,1,1},{0,0,0,0,0}	};
	int i,j ;
	for(i=0;i<5;i++)
	{
		for(j=0;j<5;j++)
		{
			b[i][j] = i * j ;
			d[i][j] = i + j ;
			a[i][j] = func(b,25) ;
			c[i][j] = func(d,25) ;
		}
	}
	for(i=0;i<5;i++)
	{
		for(j=0;j<5;j++)
		{
			printf("a[%d][%d] => %d  c[%d][%d] => %d \n",
			    i,j,a[i][j],i,j,c[i][j]) ;
		}
	}
	exit (0);
}
int func(a,n)
int a[],n ;
{
	int i,sum=0 ;
	for(i=0;i<n;i+=1)
	{
		sum = sum + a[i] ;
	}
	return sum ;
}
