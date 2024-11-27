#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float a[10],b[10],tmp ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = i + 1 ;
		tmp  = a[i] ;
		tmp = tmp + a[i] ;
		printf("tmp => %f \n",tmp) ;
		tmp = tmp * a[i] ;
	}
	printf("tmp => %f  \n",tmp) ;
	exit (0);
}
