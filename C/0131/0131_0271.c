#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,a[10][10] ;
	for(i=0;i<10;i++)
	{
		for(j=0;j<10;j++)
		{
			a[i][j] = 10 ;
		}
	}
	for(i=0;i<10;i++)
	{
		for(j=0;j<10;j++)
		{
			printf("a[i][j]= %d",i,j,a[i]);
		}
	}
	printf("\n");
	exit (0);
}
