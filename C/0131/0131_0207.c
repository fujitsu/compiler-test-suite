#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float a[10]={
		1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,0.1	};
	float *p ;
	int i ;
	p = &a[9] ;
	for(i=9;i>=0;i--)
	{
		a[i] = a[i] / *(p-i) ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %f \n",i,a[i]) ;
	}
	exit (0);
}
