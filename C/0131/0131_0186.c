#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int x);

int main()
{
	int i;  
	struct tag
	{
		int a[10] ;
	} x ;
	struct tag *p ;
	p = &x ;
	for(i=0;i<10;i++)
	{
		p->a[i] = i ;
		func(p->a[i]) ;
	}
	for(i=0;i<10;i++)
	{
		printf("p->a[%d] => %d \n",i,p->a[i]) ;
	}
	exit (0);
}
int func(x)
int x ;
{
	return 0;
}
