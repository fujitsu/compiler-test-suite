#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	unsigned int a[10] ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = i + 1 ;
		a[i] = a[i] + i ;
		if(a[i] == i) goto lb10 ;
		if(a[i] < i) goto lb20 ;
	}
lb10:
lb20:
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d\n",i,a[i]) ;
	}
	exit (0);
}
