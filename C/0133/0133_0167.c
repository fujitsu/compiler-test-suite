#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 10

int main()
{
	double b[N]={
				0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0		};
	double c[N]={
				0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0		};
	double a[N] ;
	double x[N]={
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		};
	double y[11]={
				7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5		};
	double z[N]={
				-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1,-0.1		};
	static unsigned long int l[N]={
				1,1,1,1,1,0,0,0,0,0		};
	long int i ;
	for(i=0;i<N;i++)
	{
		a[i] = x[i] + y[i] ;
		y[i+1] = a[i] * z[i] ;
		if (l[i] == 1)
		{
			b[i] = pow(x[i],2.0) + z[i] / 4.6 ;
			c[i] = a[i] / x[i] + 0.000123 ;
		}
	}
	for(i=0;i<N;i++)
		printf("a[%ld] => %f  b[%ld] => %f  c[%ld] => %f \n",
		    i,a[i],i,b[i],i,c[i]) ;
	exit (0);
}
