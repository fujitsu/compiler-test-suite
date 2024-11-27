#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 10

int main()
{
	long int i ;
	float b[N] ;
	float a[N]={
				0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0		};
	float x[N]={
				-0.1,-7.5,-4.5,-9.9,-6.3,-2.1,-6.5,9.9,4.4,7.9		};
	for(i=0;i<N;i++)
	{
		if (x[i] > 0.0) goto lbl_20 ;
	}
	for(i=0;i<N;i++)
	{
		a[i] = sqrt((double)i) - 0.45 ;
	}
lbl_20:
	;
	for(i=0;i<N;i++)
	{
		b[i] = (float)i + 5.4 ;
	}
	for(i=0;i<N;i++) printf("a[%ld] => %10.4f  b[%ld] => %10.4f \n",
	    i,a[i],i,b[i]) ;
	exit (0);
}
