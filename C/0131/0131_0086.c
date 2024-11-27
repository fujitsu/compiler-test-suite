#include <stdio.h>
#include <math.h>
#include <stdlib.h>

int main()
{
	int a[10],i,j ;
	for(i=0;i<10;i++)
	{
		j = - i ;
		a[i] = abs(j) ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
