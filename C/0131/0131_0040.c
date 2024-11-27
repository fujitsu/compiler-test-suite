#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct ary {
		int a[10] ;
	} tag ;
	struct ary *p ;
	int i ;
	p = &tag ;
	for(i=0;i<10;i++)
	{
		p->a[i] = i ;
		printf(" p->a[%d] => %d \n",i,p->a[i]) ;
	}
	exit (0);
}
