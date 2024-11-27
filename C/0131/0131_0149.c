#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int inc);

int a[10],b[10] ;
int main()
{
	int i,inc=1 ;
	func(inc) ;
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d   ",i,a[i]) ;
		printf("b[%d] => %d \n",i,b[i]) ;
	}
	exit (0);
}
int func(inc)
int inc ;
{
	int i,n=-1;
	for(i=9;i>-1;i--)
	{
		a[i] = i ;
		n += inc ;
		b[n] = n ;
	}
}
