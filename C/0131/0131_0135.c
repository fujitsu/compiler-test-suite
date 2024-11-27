#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10],b[10]={
		2,4,6,8,10,12,14,16,18,20	};
	unsigned int c[10],d[10]={
		20,18,16,14,12,10,8,6,4,2	};
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = b[i] / 2 ;
		c[i] = d[i] / 2 ;
		a[i] = a[i] / c[i] ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
