#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10],i,n=-1 ;
	unsigned int b[10] ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
		n++ ;
		b[n] = n ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d   ",i,a[i]) ;
		printf("b[%d] => %d \n",i,b[i]) ;
	}
	exit (0);
}
