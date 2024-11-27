#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[20][20],b[20][20],c[20][20] ;
	long int i,j,m=20,n=20 ;
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			a[i][j]=0 ;
			b[i][j]=1 ;
			c[i][j]=2 ;
		}
	}
	for(i=0;i<m;i++)
	{
		for(j=0;j<20;j++)
		{
			a[i][j] = b[i][j] * c[i][j] ;
		}
	}
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			printf("a[%2ld][%2ld]=> %8.3f \n",i,j,a[i][j]) ;
		}
	}
	exit (0);
}
