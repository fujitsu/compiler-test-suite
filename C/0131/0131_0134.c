#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	unsigned int inc= 5 ;
	int a[10],b[10]={
		1,2,3,4,5,6,7,8,9,10	};
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = b[i] << inc ;
		b[i] = a[i] >> 3 ;
	}
	for(i=0;i<10;i++)
	{
		printf("b[%d] => %d \n",i,b[i]) ;
	}
	exit (0);
}
