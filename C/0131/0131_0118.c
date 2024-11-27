#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10] ;
	unsigned int i ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
		a[i] = a[i] + 1 ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
