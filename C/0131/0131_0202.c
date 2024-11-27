#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j ;
	int a[10][10] ;
	for(i=0;i<10;i++)
		for(j=0;j<10;j++)
			a[i][j] = j ;
	for(i=0;i<10;i++)
		printf("a[%d][0] = %d\n",i,a[i][0]) ;
	exit (0);
}
