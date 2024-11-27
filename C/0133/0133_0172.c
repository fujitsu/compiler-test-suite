#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 10

int main()
{
	double x[N]={
				9.3,9.3,9.3,9.3,9.3,9.3,9.3,9.3,9.3,9.3		};
	double y[N]={
				1.9,1.9,1.9,1.9,1.9,1.9,1.9,1.9,1.9,1.9		};
	double z[N]={
				0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9		};
	double a[N],b[N],c[N],t,v ;
	long int i ;
	for(i=0;i<N;i++)
	{
		t    = x[i] ;
		a[i] = pow(y[i],2.0) ;
		b[i] = z[i] + y[i] ;
		x[i] = a[i] + b[i] ;
		v    = x[i] + 1.2 ;
		c[i] = a[i] / 5.3 ;
		b[i] = a[i] * c[i] ;
		a[i] = x[i] + y[i] ;
	}
	printf("t => %8.3f  v => %8.3f \n",t,v) ;
	for(i=0;i<N;i++)
	{
		printf("a[%ld] => %8.3f  b[%ld] => %8.3f  c[%ld] => %8.3f \n",
		    i,a[i],i,b[i],i,c[i]) ;
		printf("x[%ld] => %8.3f  y[%ld] => %8.3f  z[%ld] => %8.3f \n",
		    i,x[i],i,y[i],i,z[i]) ;
	}
	exit (0);
}
