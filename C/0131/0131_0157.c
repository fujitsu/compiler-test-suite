#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	union tag
	{
		int i ;
		int a[10] ;
	} b ;
	int j ;
	for(b.i=0;b.i<10;b.i++)
	{
		b.a[b.i] = b.i ;
	}
	for(j=0;j<10;j++)
	{
		printf("b.a[%d] => %d \n",j,b.a[j]) ;
	}
	exit (0);
}
