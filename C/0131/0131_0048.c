#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	union ary {
		int t1 ;
		int t2 ;
	} tag ;
	union ary *p ;
	int a[10]={
		0,1,2,3,4,5,6,7,8,9	},
	i ;
	
	p = &tag ;
	p->t1 = 0 ;
	for(i=0;i<10;i++)
	{
		p->t2 += a[i] ;
	}
	printf(" p->t2  =>  %d \n",p->t2) ;
	exit (0);
}
