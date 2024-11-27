#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct tag
	{
		float  a[10] ;
		double b[10] ;
	} c ;
	int i ;
	for(i=0;i<10;i++)
	{
		c.a[i] = (int)(i / 3.0 +0.5) ;
		c.b[i] = (int)(i / 3.0 / 7.0 +0.5) ;
	}
	for(i=0;i<10;i++)
	{
		printf("c.a[%d] => %5.1f  c.b[%d] => %5.1f \n",i,c.a[i],i,c.b[i]) ;
	}
	exit (0);
}
