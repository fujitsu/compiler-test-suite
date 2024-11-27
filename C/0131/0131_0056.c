#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct tag
	{
		int b ;
	} c ;
	struct tag *p ;
	int a[10] ;
	int i ;
	p = &c ;
	p->b = 0 ;
	for(i=p->b;i<10;i++)
	{
		a[i] = p->b ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d\n",i,a[i]) ;
	}
	exit (0);
}
