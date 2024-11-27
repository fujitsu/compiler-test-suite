#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int a[10] ;
int main()
{
	float b[10] ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
		b[i] = i ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d  b[%d] => %f \n",i,a[i],i,b[i]) ;
	}
	exit (0);
}
