#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct tag1
{
	int a[10] ;
} x ;
struct tag2
{
	int a[10] ;
} y ;
union tag3
{
	int a[10] ;
	struct tag1 x ;
	struct tag2 y ;
} z ;
int main()
{
	int i ;
	for(i=0;i<10;i++)
	{
		z.a[i] = i ;
		z.x.a[i] = z.y.a[i] + i ;
	}
	for(i=0;i<10;i++)
	{
		printf("z.a[%d] => %d \n",i,z.a[i]) ;
	}
	exit (0);
}
