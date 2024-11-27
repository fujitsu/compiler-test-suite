#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[10],j,b[10][10] ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
		for(j=0;j<10;j++)
		{
			b[j][i] = a[i] + j ;
		}
		a[i] = a[i] + b[i][i] ;
	}
	for(i=0;i<10;i++)
	{
		printf("a[%d] => %d\n",i,a[i]) ;
	}
	exit (0);
}
