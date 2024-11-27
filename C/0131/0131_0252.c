#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,k,a[10][10][10];
	printf("<<<<<<  >>>>>> \n");
	for(i=0,j=0,k=0;i<10,j<10,k<10;i++,j++,k++)
	{
		a[i+1-1][j+2-2][k+3-3] = 10 ;
	}
	for(i=0,j=0,k=0;i<10,j<10,k<10;i++,j++,k++)
	{
		printf("%d",a[i][j][k]);
	}
	printf("\n");
	exit (0);
}
