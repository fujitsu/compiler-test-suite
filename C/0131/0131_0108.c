#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float a[10],b[10],func(),tmp ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = i + 1 ;
		b[i] = a[i] + i ;
	}
	tmp = func(a,b) ;
	printf("tmp => %f \n",tmp) ;
	exit (0);
}
float func(a,b)
float a[],b[] ;
{
	int i ;
	float tmp=1.0 ;
	for(i=0;i<10;i++)
	{
		tmp = tmp * a[i] ;
		tmp = b[i] / tmp ;
	}
	return tmp ;
}
