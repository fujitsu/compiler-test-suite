#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[5][5]={
		{1,2,3,4,5},{6,7,8,9,0}	};
	for(i=0;i<4;i++)
	{
		a[i][i] = a[i+1][i+1] ;
	}
	for(i=0;i<5;i++)
	{
		printf("a[%d][0] = %d  ",i,a[i][0]) ;
		printf("a[%d][1] = %d  ",i,a[i][1]) ;
		printf("a[%d][2] = %d  ",i,a[i][2]) ;
		printf("a[%d][3] = %d  ",i,a[i][3]) ;
		printf("a[%d][4] = %d\n",i,a[i][4]) ;
	}
	exit (0);
}
