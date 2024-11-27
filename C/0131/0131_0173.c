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
	p = &x ;
	for(i=0;i<10;i++)
	{
		x.a[i] = sin((double)(i+1)) ;
		x.b[i] = cos((double)(i+1)) * 100 ;
		p->a[i] = p->a[i] * tan((double)(i+1)) ;
		p->b[i] = p->b[i] * 10 ;
	}
	for(i=0;i<10;i++)
	{
		printf("x.a[%d] => %20.9f  x.b[%d] => %15d \n"
		    ,i,x.a[i],i,x.b[i]) ;
	}
	exit (0);
}
