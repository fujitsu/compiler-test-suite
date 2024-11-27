#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int n = 2,m = 9 ;
int main()
{
	int a[20]={
		1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,0	};
	int i ;
	for(i=2;i<m;i+=n)
	{
		a[n*i] = a[n*i-n]   + a[n*i-1] ;
		a[2*i] = a[2*i+2]   + a[2*i-1] ;
		a[i]   = a[i]       + a[i+2] ;
	}
	for(i=0;i<20;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
	exit (0);
}
