#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,a[5][5][5]={
		{1,2,3,4,5},{6,7,8,9,0},{1,3,5,7,9}	};
	for(i=0;i<4;i++)
	{
		a[i][i][i] = a[i][3][i+1] ;
	}
	for(i=0;i<5;i++)
	{
		for(j=0;j<5;j++)
		{
			printf("a[%d][%d][0] = %d  ",i,j,a[i][j][0]) ;
			printf("a[%d][%d][1] = %d  ",i,j,a[i][j][1]) ;
			printf("a[%d][%d][2] = %d  ",i,j,a[i][j][2]) ;
			printf("a[%d][%d][3] = %d  ",i,j,a[i][j][3]) ;
			printf("a[%d][%d][4] = %d\n",i,j,a[i][j][4]) ;
		}
	}
	exit (0);
}
