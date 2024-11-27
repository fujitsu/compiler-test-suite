#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[10] ;
	char x ;
	for(i=0;i<10;i++)
	{
		a[9-i] = i ;
	}
	x = 'a' ;
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d\n",i,a[i]) ;
	}
	exit (0);
}
