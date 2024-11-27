#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct tag
	{
		int box ;
	} x ;
	struct tag *p ;
	int i,a[10] ;
	p = &x ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
		p->box = a[i] ;
	}
	printf("p->box => %d\n",p->box) ;
	exit (0);
}
