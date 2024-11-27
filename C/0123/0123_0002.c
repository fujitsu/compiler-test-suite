#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int a[]);

int main()
{
	int a[10] ;
	func(a) ;
	exit (0);
}
int func(a)
int a[] ;
{
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %5d \n",i,a[i]) ;
	}
}
