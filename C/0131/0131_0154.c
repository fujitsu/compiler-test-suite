#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int n);

float a[10],b[10] ;
int main()
{
	int i,n ;
	n = -1 ;
	func(n) ;
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %f   ",i,a[i]) ;
		printf("b[%d] => %f \n",i,b[i]) ;
	}
	exit (0);
}
int func(n)
int n ;
{
	int i ;
	for(i=0;i<10;i++)
	{
		n = n + 1 ;
		a[n] = n ;
		a[n] = a[n] + i ;
		b[i] = a[n] ;
	}
}
