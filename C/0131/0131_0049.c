#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	union ary {
		int a[10] ;
		int b[10] ;
	} tag ;
	union ary *p ;
	int i ;
	p = &tag ;
	for(i=0;i<10;i++)
	{
		p->a[i] = i ;
		printf(" p->b[%d] => %d \n",i,p->b[i]) ;
	}
	exit (0);
}
