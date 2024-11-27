#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct tag
{
	int a ;
} b[10] ;
int func(struct tag *p);
int main()
{
	func(&b[0]) ;
	exit (0);
}
int func(p)
struct tag *p;
{
	int i ;
	for(i=0;i<10;i++)
	{
		(p+i)->a = i ;
	}
	for(i=0;i<10;i++)
	{
		printf("%5d",(p+i)->a) ;
	}
	printf("\n");
}
