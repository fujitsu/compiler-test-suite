#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct ary {
		int a[10] ;
		int t     ;
	} tag ;
	struct ary *p1 ;
	struct ary *p2 ;
	int i ;
	
	p1 = &tag ;
	p2 = &tag ;
	p1->t = 0 ;
	for(i=0;i<10;i++)
	{
		p1->a[i] = i ;
		p2->t += p2->a[i] ;
	}
	printf(" p1->t  =>  %d \n",p1->t) ;
	exit (0);
}
