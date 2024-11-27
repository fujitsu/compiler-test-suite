#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 10

int main()
{
	double x[N]={
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		};
	double y[N]={
				-4.3,-4.3,-4.3,-4.3,-4.3,-4.3,-4.3,-4.3,-4.3,-4.3		};
	double z[N]={
				7.7,7.7,7.7,7.7,7.7,7.7,7.7,7.7,7.7,7.7		};
	double a[N],b[N],c[N],t[N],tt ;
	long int i ;
	for(i=0;i<N;i++)
	{
		tt   = x[i] ;
		a[i] = y[i] * z[i] ;
		b[i] = y[i] + z[i] ;
		c[i] = y[i] - z[i] ;
		t[i] = a[i] * b[i] * c[i] ;
		y[i] = a[i] * a[i] ;
		z[i] = a[i] * b[i] ;
		b[i] = a[i] - z[i] ;
		t[i] = a[i] + b[i] + c[i] ;
		a[i] = y[i] + z[i] ;
		b[i] = tt ;
		c[i] = x[i] * a[i] ;
	}
	printf("tt => %8.3f \n",tt) ;
	for(i=0;i<N;i++)
	{
		printf("a[%ld]=%8.3f b[%ld]=%8.3f c[%ld]=%8.3f t[%ld]=%8.3f \n",
		    i,a[i],i,b[i],i,c[i],i,t[i]) ;
		printf("x[%ld]=%8.3f y[%ld]=%8.3f z[%ld]=%8.3f \n",
		    i,x[i],i,y[i],i,z[i]) ;
	}
	exit (0);
}
