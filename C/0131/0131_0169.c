#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10],b[10],i ;
	for(i=0;i<10;i++)
	{
		a[i] = i + 10 ;
		b[i] = a[i] >> 2 ;
	}
	for(i=0;i<10;i++)
	{
		printf("b[%d] => %d \n",i,b[i]) ;
	}
	exit (0);
}
