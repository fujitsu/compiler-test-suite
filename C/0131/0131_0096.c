#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,k,a[6][6][6]={
		{1,2,3,4,5,6},{7,8,9,0,1,2},{3,4,5,6,7,8}	};
	for(i=0;i<6;i++)
	{
		a[i][3][i] = a[3][i][i] ;
	}
	for(i=0;i<6;i++)
	{
		for(j=0;j<6;j++)
		{
			for(k=0;k<6;k+=3)
			{
				printf("a[%d][%d][%d] = %d  ",i,j,k,a[i][j][k]) ;
				printf("a[%d][%d][%d] = %d  ",i,j,k+1,a[i][j][k+1]) ;
				printf("a[%d][%d][%d] = %d\n",i,j,k+2,a[i][j][k+2]) ;
			}
		}
	}
	exit (0);
}
