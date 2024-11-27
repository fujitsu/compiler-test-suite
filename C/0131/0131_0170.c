#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10],i ;
	unsigned int b[10]={
		1,2,3,4,5,6,7,8,9,10	};
	for(i=0;i<10;i++)
	{
		a[i] = i << 2 ;
		b[i] = b[i] << 2 ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d   b[%d] => %d \n",i,a[i],i,b[i]) ;
	}
	exit (0);
}
