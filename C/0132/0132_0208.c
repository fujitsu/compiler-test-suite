#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <string.h>

int main()
{
	int i,a[5],b[5],c[5];
	for(i=0;i<5;i++)
	{
		a[i] = 1 + i ;
		b[i] = 2 + a[0] ;
		c[i] = 3 ;
	}
	for(i=0;i<5;i++)
	{
		printf(" a =  %d b =  %d c =  %d \n",a[i],b[i],c[i]) ;
	}
	exit (0);
}
