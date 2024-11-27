#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct tag
	{
		double tmp ;
	} t ;
	struct tag *p ;
	double a[10],b[10] ;
	int i ;
	p = &t ;
	for(i=0;i<10;i++)
	{
		a[i]   = i + 1 ;
		p->tmp = a[i] ;
		p->tmp = p->tmp + a[i] ;
		p->tmp = p->tmp * a[i] ;
	}
	printf("p->tmp => %f  \n",p->tmp) ;
	exit (0);
}
