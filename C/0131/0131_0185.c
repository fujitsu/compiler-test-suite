#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct tag1
	{
		int a[10] ;
	} x ;
	union  tag2
	{
		int a[10] ;
		int b[10] ;
	} y ;
	int i ;
	for(i=0;i<10;i++)
	{
		x.a[i] = i ;
		y.a[i] = x.a[i] + i ;
	}
	for(i=0;i<10;i++)
	{
		printf("y.b[%d] => %d \n",i,y.b[i]) ;
	}
	exit (0);
}
