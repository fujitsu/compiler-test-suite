#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	long long int a[10] ;
	unsigned long long int b[10] ;
	int i,x=512,y=6 ;
	for(i=0;i<10;i++)
	{
		a[i] = x >> y ;
		b[i] = x >> y >> 1 ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %lld   ",i,a[i]) ;
		printf("b[%d] => %lld \n",i,b[i]) ;
	}
	printf("\n");
	exit (0);
}
