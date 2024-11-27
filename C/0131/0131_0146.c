#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct tag
	{
		int   a[10] ;
		char  b ;
		float c[10] ;
	} d ;
	int i ;
	for(i=0;i<10;i++)
	{
		d.a[i] = i ;
		d.b    = d.a[i] +i ;
		d.c[i] = (int)(d.b / 3.0 + 0.5) ;
	}
	for(i=0;i<10;i++)
	{
		printf("d.c[%d] => %5.1f \n",i,d.c[i]) ;
	}
	exit (0);
}
