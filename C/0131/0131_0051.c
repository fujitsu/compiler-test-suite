#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10] ;
	int i=0 ;
	for(;;)
	{
		a[i] = i ;
		i++ ;
		if(i > 9) break ;
	}
	i = 0 ;
	for(;;)
	{
		printf("a[%d] => %d\n",i,a[i]) ;
		i++ ;
		if(i > 9) break ;
	}
	exit (0);
}
