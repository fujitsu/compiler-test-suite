#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float a[10],b[10],tmp=0.0 ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
		tmp  = tmp + a[i] ;
		b[i] = a[i] + i ;
		tmp  = tmp + b[i] ;
	}
	printf("tmp => %f \n",tmp) ;
	exit (0);
}
