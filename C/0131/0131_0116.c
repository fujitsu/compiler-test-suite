#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	union tag
	{
		int n ;
		int a[10] ;
	} b ;
	int i ;
	b.n = 1 ;
	for(i=0;i<10;i+=b.n)
	{
		b.a[i] = i + 1 ;
	}
	for(i=0;i<10;i++)
	{
		printf("b.a[%d] => %d \n",i,b.a[i]) ;
	}
	exit (0);
}
