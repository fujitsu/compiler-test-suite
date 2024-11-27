#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 10

int main()
{
	double x[N]={
				1.2,1.2,1.2,1.2,1.2,1.2,1.2,1.2,1.2,1.2		};
	double y[N]={
				0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5		};
	double z[N]={
				5.3,5.3,5.3,5.3,5.3,5.3,5.3,5.3,5.3,5.3		};
	double a[N],b[N],c[N] ;
	double rc,v1=1.0,v2=2.0,v3=3.0 ;
	long int i ;
	rc = 1.0 ;
	for(i=0;i<N;i++)
	{
		a[i] = i + 1.2 ;
		b[i] = i - 0.9 ;
		c[i] = sqrt((double)i) + 0.01 ;
		if (rc < 5.0)
		{
			v1   = x[i] ;
			v2   = y[i] ;
			v3   = z[i] ;
			c[i] = a[i] + b[i] ;
			b[i] = a[i] * c[i] ;
			a[i] = b[i] - c[i] ;
			goto lbl_100 ;
		}
		a[i] = x[i] ;
		b[i] = y[i] ;
		c[i] = z[i] ;
lbl_100:
		;
		x[i] = a[i] * b[i] ;
		y[i] = b[i] + c[i] ;
		z[i] = a[i] / c[i] ;
	}
	printf("v1 =>  %8.3f  v2 => %8.3f  v3 => %8.3f \n",v1,v2,v3) ;
	for(i=0;i<N;i++)
	{
		printf("a[%ld] => %8.3f  b[%ld] => %8.3f  c[%ld] => %8.3f \n",
		    i,a[i],i,b[i],i,c[i]) ;
		printf("x[%ld] => %8.3f  y[%ld] => %8.3f  z[%ld] => %8.3f \n",
		    i,x[i],i,y[i],i,z[i]) ;
	}
	exit (0);
}
