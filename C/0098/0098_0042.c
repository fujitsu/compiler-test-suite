#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float x[10][10];
} a,b,c;
int main()
{
	long int i,j,k ;
	for(i=0;i<10;i++)
	{
		for(k=0;k<10;k++)
		{
			a.x[i][k] = 2.0 ;
			b.x[i][k] = 4.0 ;
			c.x[i][k] = 5.0 ;
		}
	}
	for(i=2;i<7;i++)
	{
		a.x[i][i+1] = b.x[i][i] - c.x[i][i] ;
		b.x[i][i+2] = a.x[i][i] + c.x[10-i][10-i] ;
	}
	printf("  ****  **** \n");
	for(j=3;j<7;j++){
		for(i=4;i<7;i++){
			printf("a[%ld][%ld] = %g\n",i,j,a.x[i][j]) ;
		}
	}
	for(j=5;j<9;j++){
		for(i=3;i<6;i++){
			printf("b[%ld][%ld] = %g\n",i,j,b.x[i][j]) ;
		}
	}
	exit (0);
}
