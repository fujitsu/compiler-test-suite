#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func1(double b[]);

double a[10] ;
int main()
{
	int i ;
	func1(a) ;
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %f \n",i,a[i]) ;
	}
	exit (0);
}
int func1(double b[])
{
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
		a[i] = b[i] + 1 ;
	}
}
