#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 10

int main()
{
	double a[N]={
				9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4		};
	double x[N]={
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		};
	double y[N]={
				9.9,9.9,9.9,9.9,9.9,9.9,9.9,9.9,9.9,9.9		};
	double b[N] ;
	long int l[N]={
				1,1,1,1,1,1,1,1,1,1		},
	i ;
	for(i=0;i<N;i++)
	{
		b[i] = x[l[i]] + 1.85 ;
		y[i] = pow(b[i],2.0) ;
		b[i] = a[i] + y[i] * 2 ;
		y[i] = x[l[i]] * a[i] ;
	}
	for(i=0;i<N;i++)
		printf("b[%ld] => %8.3f  y[%ld] => %8.3f \n",i,b[i],i,y[i]) ;
	exit (0);
}
