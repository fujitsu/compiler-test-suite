#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int a[10],b[10][10] ;
	int i,j ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
		for(j=a[i];j<10;j++)
		{
			b[i][j] = i ;
		}
	}
	for(i=0;i<10;i++)
	{
		for(j=a[i];j<10;j++)
		{
			printf("b[%d][%d] => %d\n",i,j,b[i][j]) ;
		}
	}
	exit (0);
}
