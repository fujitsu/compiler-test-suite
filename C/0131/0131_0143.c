#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct tag
	{
		float  a ;
		double b ;
	} c[10] ;
	int i ;
	for(i=0;i<10;i++)
	{
		c[i].a = (int)(i / 3.0 + 0.5) ;
		c[i].b = (int)(i / 3.0 / 7.0 + 0.5) ;
	}
	for(i=0;i<10;i++)
	{
		printf("c[%d].a => %5.1f c[%d].b => %5.1f \n",i,c[i].a,i,c[i].b) ;
	}
	exit (0);
}
