#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#undef fabs

double a[10] ;
int main()
{
	double fabs(),b[10] ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = - i ;
		b[i] = fabs(a[i]) ;
	}
	for(i=0;i<10;i++)
	{
		printf("b[%d] => %10.3f\n",i,b[i]) ;
	}
	exit (0);
}
