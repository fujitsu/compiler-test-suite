#include <stdlib.h>
#include <stdio.h>

#include <math.h>

int main()
{
	
	double a[10],b[10],c[10] ;
	int    i=0;
	double j=0.0;
	for(i=0;i<10;i++)
	{
		a[i] = cos(j/3) ;
		b[i] = sin(a[i]) ;
		c[i] = tan(b[i]) ;
		j+=1.0;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %10.5f  b[%d] => %10.5f  c[%d] => %10.5f \n",
		    i,a[i],i,b[i],i,c[i]) ;
	}
	exit (0);
}
