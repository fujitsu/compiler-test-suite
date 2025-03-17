#include <stdlib.h>
#include <math.h>
#include <stdio.h>









int main()
{
	float a[10][10],b[10][10],c[10][10];
	long int i,j,k ;
	for(i=0;i<10;i++)
	{
		for(k=0;k<10;k++)
		{
			a[i][k] = 2.0 ;
			b[i][k] = 4.0 ;
			c[i][k] = 5.0 ;
		}
	}
	for(i=2;i<7;i++)
	{
		a[i][i+1] = b[i][i] - c[i][i] ;
		b[i][i+2] = a[i][i] + c[10-i][10-i] ;
	}
	printf("  **** 3209 **** \n");
	for(j=3;j<7;j++){
		for(i=4;i<7;i++){
			printf("a[%ld][%ld] = %g\n",i,j,a[i][j]) ;
		}
	}
	for(j=5;j<9;j++){
		for(i=3;i<6;i++){
			printf("b[%ld][%ld] = %g\n",i,j,b[i][j]) ;
		}
	}
	exit (0);
}
