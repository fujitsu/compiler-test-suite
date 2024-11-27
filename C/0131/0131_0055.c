#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct tag
	{
		int b ;
	} c ;
	int a[10] ;
	int i ;
	c.b = 0 ;
	for(i=c.b;i<10;i++)
	{
		a[i] = c.b ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d\n",i,a[i]) ;
	}
	exit (0);
}
