#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i;  
	struct tag
	{
		int a ;
	} x[10] ;
	struct tag *p ;
	for(i=0;i<10;i++)
	{
		p = &x[i] ;
		p->a = i ;
	}
	for(i=0;i<10;i++)
	{
		p = &x[i] ;
		printf("x[%d].a => %d \n",i,p->a) ;
	}
	exit (0);
}
