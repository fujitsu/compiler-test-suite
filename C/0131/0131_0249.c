#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func1(double a[]);

double *p ;
int main()
{
	int i ;
	double a[10] ;
	func1(a) ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
		*(p+i) = a[i] + 1 ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %f \n",i,a[i]) ;
	}
	exit (0);
}
int func1(double a[])
{
	p = a ;
}
