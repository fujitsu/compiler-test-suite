#include <stdlib.h>
#include <stdio.h>
#include <math.h>

union tag {
	int a[10] ;
	int b[10] ;
} ary ;
int func (union tag *p);
int main (void)
{
	int i ;
	func(&ary) ;
	for(i=0;i<10;i++)
	{
		printf("ary.b[%d] => %d \n",i,ary.b[i]) ;
	}
	exit (0);
}

int func (union tag *p)
{
	int i ;
	
	for(i=0;i<10;i++)
	{
		p->a[i] = i ;
	}
}
