#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[20][20],b[20][20],c[20][20] ;
	long int n=20,m=20,i,j ;
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			a[i][j] = 0 ;
			b[i][j] = 1 ;
			c[i][j] = 2 ;
		}
	}
	for(j=0;j<20;j++)
	{
		for(i=0;i<10;i++)
		{
			a[i][j] = b[i][j] ;
		}
	}
	for(j=0;j<m;j++)
	{
		for(i=0;i<n;i+=2)
		{
			c[i][j] = 0.5 ;
		}
	}
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			printf("a[%2ld][%2ld]=%8.3f b[%2ld][%2ld]=%8.3f c[%2ld][%2ld]=%8.3f\n",
			    i,j,a[i][j],i,j,b[i][j],i,j,c[i][j]) ;
		}
	}
	exit (0);
}
