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
	struct tag *p ;
	int i ;
	x.a[0] = sin(1.0) ;
	x.b[0] = cos(1.0) * 100 ;
	x.a[1] = sin(2.0) ;
	x.b[1] = cos(2.0) * 100 ;
	p = &x ;
	for(i=2;i<10;i++)
	{
		x.a[i] = sin((double)(i+1)) ;
		x.b[i] = cos((double)(i+1)) * 100 ;
		p->a[i] = p->a[i-2] * tan((double)(i+1)) ;
		p->b[i] = p->b[i-2] * 10 ;
	}
	for(i=0;i<10;i++)
	{
		printf("x.a[%d] => %20.9f  x.b[%d] => %15d \n"
		    ,i,x.a[i],i,x.b[i]) ;
	}
	exit (0);
}
