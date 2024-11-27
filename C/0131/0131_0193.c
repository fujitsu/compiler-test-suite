#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[20]={
		1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,0	},
	i=0  ;
	unsigned int n=10 ;
	for(i=0;i<20;i++)
	{
		n-- ;
		a[i] = n ;
	}
	for(i=0;i<20;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
