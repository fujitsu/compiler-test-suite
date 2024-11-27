#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[10][10],k=0 ;
	a[9][0] = 0 ;
	for(i=1;i<10;i++)
	{
		a[i-k-1][0] = i ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d][0] => %d \n",i,a[i][0]) ;
	}
	exit (0);
}
