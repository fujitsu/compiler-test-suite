#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(double a[]);
#undef tan

int main()
{
	double a[10] ;
	int i ;
	func(a) ;
	exit (0);
}
int func(a)
double a[] ;
{
	int i ;
	double b[10] ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
		b[i] = tan(a[i]) ;
	}
	for(i=0;i<10;i++)
	{
		printf("b[%d] => %10.3f\n",i,b[i]) ;
	}
}
