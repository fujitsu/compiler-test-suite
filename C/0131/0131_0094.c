#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,a[6][6]={
		{1,2,3,4,5,6},{6,6,7,8,9,0},
		                    {1,2,3,4,5,6},{6,6,7,8,9,0},
		                    {1,2,3,4,5,6},{6,6,7,8,9,0}	};
	int     b[6]={
		1,2,3,4,5,6	};
	for(i=1;i<4;i++){
		a[1][i]     = a[i][i]     + b[i] ;
		a[i][i]     = a[3][i+1]   + b[i] ;
	}
	for(i=1;i<3;i++){
		a[2*i][i]   = a[i][i-1]   + b[i] ;
		a[i][i]     = a[2*i][i+2] + b[i] ;
		a[2*i-1][i] = a[2*i][i]   + b[i] ;
	}
	for(i=0;i<6;i++){
		for(j=0;j<6;j+=3){
			printf("a[%d][%d] = %d   ",i,j,a[i][j]) ;
			printf("a[%d][%d] = %d   ",i,j+1,a[i][j+1]) ;
			printf("a[%d][%d] = %d \n",i,j+2,a[i][j+2]) ;
		}
	}
	exit (0);
}
