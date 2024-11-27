#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	static struct tag
	{
		unsigned int bit : 4 ;
	} a[10];
	int i,b[10] ;
	for(i=0;i<10;i++)
	{
		a[i].bit = i ;
		b[i]     = a[i].bit ;
	}
	for(i=0;i<10;i++)
	{
		printf("b[%d] => %d \n",i,b[i]) ;
	}
	exit (0);
}
