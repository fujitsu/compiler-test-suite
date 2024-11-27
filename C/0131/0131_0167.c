#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(double a[], double b[]);
#undef fmod

int main()
{
	double a[10],b[10] ;
	int i ;
	func(a,b) ;
	exit (0);
}
int func(a,b)
double a[],b[] ;
{
	int i ;
	double c[10] ;
	for(i=0;i<10;i++)
	{
		a[i] = i + 2 ;
		b[i] = a[i] - 1 ;
		c[i] = fmod(a[i],b[i]) ;
	}
	for(i=0;i<10;i++)
	{
		printf("c[%d] => %10.3f\n",i,c[i]) ;
	}
}
