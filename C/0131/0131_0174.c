#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct tag
	{
		float a[10] ;
		int   b[10] ;
	} x ;
	int i,*q ;
	float *p ;
	for(i=0;i<10;i++)
	{
		p = &x.a[i] ;
		q = &x.b[i] ;
		x.a[i] = sin((double)(i+1)) ;
		x.b[i] = cos((double)(i+1)) * 100 ;
		*p = *p * tan((double)(i+1)) ;
		*q = *q * 10 ;
	}
	for(i=0;i<10;i++)
	{
		printf("x.a[%d] => %20.9f  x.b[%d] => %15d \n"
		    ,i,x.a[i],i,x.b[i]) ;
	}
	exit (0);
}
