#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct ar1 {
		int a[10] ;
		struct ar2 {
			int b[10] ;
		} tg2 ;
	} tg1 ;
	struct ar1 *p1 ;
	struct ar2 *p2 ;
	int i ;
	
	p1 = &tg1 ;
	p2 = &(p1->tg2) ;
	for(i=0;i<10;i++)
	{
		p1->a[i] = i ;
		p2->b[i] = p1->a[i]  ;
		printf(" p2->b[%d] => %d \n",i,p2->b[i]) ;
	}
	exit (0);
}
