#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 10

int main(){
	static unsigned long int l[N]={
				1,1,0,0,0,0,0,1,1,1		};
	double b[N]={
				6.68,6.68,6.68,6.68,6.68,6.68,6.68,6.68,6.68,6.68		};
	double c[N]={
				-4.2,-4.2,-4.2,-4.2,-4.2,-4.2,-4.2,-4.2,-4.2,-4.2		};
	double y[N]={
				0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1		};
	double z[11]={
				8.6,8.6,8.6,8.6,8.6,8.6,8.6,8.6,8.6,8.6,8.6		};
	double w[N]={
				-5.3,-5.3,-5.3,-5.3,-5.3,-5.3,-5.3,-5.3,-5.3,-5.3		};
	double a[9],x[N],t ;
	long int i ;
	for(i=0;i<8;i++)
	{
		x[i]   = y[i] + z[i] ;
		z[i+1] = x[i] * w[i] ;
		a[i]   = 0.0 ;
		if (l[i] == 1)
		{
			a[i]   = b[i] ;
			t      = a[i] * c[i] ;
			z[i+1] = x[i] + w[i] ;
		}
	}
	printf("t => %8.3f \n",t) ;
	for(i=0;i<8;i++)
	{
		printf("a[%ld] => %8.3f  x[%ld] => %8.3f  z[%ld] => %8.3f \n",
		    i,a[i],i,x[i],i,z[i]) ;
		printf("w[%ld] => %8.3f  y[%ld] => %8.3f \n",
		    i,w[i],i,y[i]) ;
	}
	exit (0);
}
