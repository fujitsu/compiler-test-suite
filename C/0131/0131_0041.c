#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct ary {
		int a[10] ;
		int t     ;
	} tag ;
	struct ary *p ;
	int i ;
	
	p = &tag ;
	p->t = 0 ;
	for(i=0;i<10;i++)
	{
		p->a[i] = i ;
		p->t += p->a[i] ;
	}
	printf(" p->t  =>  %d \n",p->t) ;
	exit (0);
}
