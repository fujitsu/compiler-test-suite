#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10] ;
	int i=0,n=10 ;
	while(i < n)
	{
		a[i] = i ;
		++i ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %5d \n",i,a[i]) ;
	}
	exit (0);
}
