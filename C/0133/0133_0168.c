#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 10

int main()
{
	double a[N]={
				1.2,1.2,1.2,1.2,1.2,1.2,1.2,1.2,1.2,1.2		};
	double b[N]={
				0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1		};
	double c[N]={
				-9.4,-9.4,-9.4,-9.4,-9.4,-9.4,-9.4,-9.4,-9.4,-9.4		};
	double d[N]={
				-5.2,-5.2,-5.2,-5.2,-5.2,-5.2,-5.2,-5.2,-5.2,-5.2		};
	double x[N],y[N],z[N] ;
	long int i ;
	float t1,t2,t3,v ;
	for(i=0;i<N;i++)
	{
		t1 = a[i] ;
		t2 = a[i] * 2.0 ;
		t3 = a[i] / 2.0 ;
		x[i] = b[i] + c[i] * 4.8 ;
		y[i] = (b[i] + c[i]) / 2.0 ;
		z[i] = pow(b[i],2.0) - c[i] ;
		a[i] = x[i] + y[i] + z[i] ;
		v = t1 * t2 * t3 ;
		x[i] = a[i] / 9.9 ;
		b[i] = x[i] * y[i] - d[i] ;
		c[i] = b[i] / d[i] ;
		d[i] = v * c[i] ;
	}
	printf("v => %8.3f \n",v) ;
	for(i=0;i<N;i++)
	{
		printf("a[%ld]=%8.3f b[%ld]=%8.3f c[%ld]=%8.3f d[%ld]=%8.3f \n",
		    i,a[i],i,b[i],i,c[i],i,d[i]) ;
		printf("x[%ld]=%8.3f y[%ld]=%8.3f z[%ld]=%8.3f \n",
		    i,x[i],i,y[i],i,z[i]) ;
	}
	exit (0);
}
