#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,a[10][10];
	for(i=0,j=0;i<10,j<10;i++,j++)
	{
		a[i+2-2][j+1-1] = i;
	}
	for(i=0,j=0;i<10,j<10;i++,j++)
	{
		printf("a[%d][%d] = %d \n",i,j,a[i][j]);
	}
	exit (0);
}
