#include <stdlib.h>
#include <stdio.h>

#include <math.h>

int main()
{
	int a[10] ;
	double ceil(double i) ;
	int    i=0;
	for(i=0;i<10;i++)
	{
		a[i] = ceil(i/3) ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d\n",i,a[i]) ;
	}
	exit (0);
}
