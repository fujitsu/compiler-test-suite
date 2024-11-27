#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10],b[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i,n = -1 ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
		a[i] = a[i] * i ;
		if(a[i] <= 10)
		{
			n++ ;
			b[n] = i ;
			b[n] = b[n] * n ;
		}
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d   ",i,a[i]) ;
		printf("b[%d] => %d \n",i,b[i]) ;
	}
	exit (0);
}
