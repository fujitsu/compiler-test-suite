#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct tag
	{
		unsigned int a ;
		int b ;
	} c[10] ;
	struct tag *p ;
	int i ;
	for(i=0;i<10;i++)
	{
		p = &c[i] ;
		p->a = - i ;
		p->b = p->a ;
	}
	for(i=0;i<10;i++)
	{
		p = &c[i] ;
		printf("p->a => %7d  p->b => %7d \n",p->a,p->b) ;
	}
	exit (0);
}
