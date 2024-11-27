#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[5],b[5],i ;
	for(i=0;i<5;i++)
	{
		a[i] = i ;
		b[i] = i + 1 ;
	}
	for(i=0;i<4;i++)
	{
		a[i] = a[i+1] + b[i] ;
	}
	for(i=0;i<5;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
