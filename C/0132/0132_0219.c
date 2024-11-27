#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j;
	int a[10] = {
		0,0,0,0,0,0,0,0,0,0	};
	int b[10] = {
		1,1,1,1,1,1,1,1,1,1	};
	int c[10] = {
		2,2,2,2,2,2,2,2,2,2	};
	for (i=1;i<10;i++)
	{
		a[i] = 1 + i ;
		b[i] = c[0] ;
		c[i] = a[i] * 2 ;
	}
	printf ( "  \n" ) ;
	for (i=0;i<10;i++)
	{
		printf ("a[%d] = %d b[%d] = %d c[%d] = %d \n",i,a[i],i,b[i],i,c[i]);
	}
	exit (0);
}
