#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#undef cos

double a[10] ;
int main()
{
	double cos(),b[10] ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
		b[i] = cos(a[i]) ;
	}
	for(i=0;i<10;i++)
	{
		printf("b[%d] => %10.3f\n",i,b[i]) ;
	}
	exit (0);
}
