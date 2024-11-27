#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10] ;
	int i=0,*p ;
	for(p=&a[0];p<=&a[9];p++)
	{
		i++ ;
		*p = i ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d\n",i,a[i]) ;
	}
	exit (0);
}
