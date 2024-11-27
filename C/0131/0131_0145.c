#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float  a[30],b=46,c=12,d=1 ;
	double e[30],f=41,g=412 ;
	double       h=0 ;
	int i ;
	for(i=0;i<30;i+=3)
	{
		a[i]   = b ;
		a[i+1] = c ;
		a[i+2] = d ;
		e[i]   = f ;
		e[i+1] = g ;
		e[i+2] = h ;
	}
	for(i=0;i<30;i++)
	{
		printf("a[%d] => %7f  e[%d] => %10f \n",i,a[i],i,e[i]) ;
	}
	exit (0);
}
