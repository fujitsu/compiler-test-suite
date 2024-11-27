#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct tag
{
	int a[10] ;
} b ;
int func(struct tag *p);
int main()
{
	func(&b) ;
	exit (0);
}
int func(p)
struct tag *p;
{
	int i ;
	for(i=0;i<10;i++)
	{
		(*p).a[i]= i ;
	}
	for(i=0;i<10;i++)
	{
		printf("%5d",(*p).a[i]) ;
	}
	printf("\n");
}
