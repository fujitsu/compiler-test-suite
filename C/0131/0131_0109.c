#include <stdlib.h>
#include <stdio.h>
#include <math.h>

float tmp ;
int main()
{
	float a[10],b[10] ;
	int i ;
	tmp = 1.0 ;
	for(i=0;i<10;i++)
	{
		a[i] = i + 1 ;
		tmp  = tmp * a[i] ;
		b[i] = a[i] + i ;
		tmp  = tmp / b[i] ;
	}
	printf("tmp => %f \n",tmp) ;
	exit (0);
}
