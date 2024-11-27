#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j;
	int a[10] = {
		0,0,0,0,0,0,0,0,0,0	};
	int b[10] = {
		0,0,0,0,0,0,0,0,0,0	};
	int c[10] = {
		0,0,0,0,0,0,0,0,0,0	};
	for (i=0;i<10;i++)
	{
		a[i] = 1 + i ;
		b[i] = b[i] + c[i] ;
		c[i] = 3 ;
	}
	c[2] = 1 ;
	printf ( "  \n" ) ;
	for (i=0;i<10;i++)
	{
		printf ("a[%d] = %d b[%d] = %d c[%d] = %d \n",i,a[i],i,b[i],i,c[i]);
	}
	exit (0);
}
