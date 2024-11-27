#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct tag
	{
		unsigned int a[10] ;
		int b[10] ;
	} c ;
	struct tag *p ;
	int i ;
	p = &c ;
	for(i=0;i<10;i++)
	{
		p->a[i] = - i ;
		p->b[i] = p->a[i] ;
	}
	for(i=0;i<10;i++)
	{
		printf("p->a[%d] => %7d  p->b[%d] => %7d \n",
		    i,p->a[i],i,p->b[i]) ;
	}
	exit (0);
}
