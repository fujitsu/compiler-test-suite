#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[20][20],b[20][20],c[20][20] ;
	long int i,j,n=20,m=20 ;
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			a[i][j] = 0;
			b[i][j] = 1;
			c[i][j] = 2;
		}
	}
	for(j=0;j<2;j++)
	{
		for(i=0;i<10;i++)
		{
			a[i][j] = b[i][j] ;
		}
	}
lbl_12:
	;
	for(j=3;j<4;j++)
	{
		for(i=0;i<10;i++)
		{
			a[i][j] = b[i][j] + 9 ;
		}
	}
lbl_22:
	;
	for(j=5;j<6;j++)
	{
		for(i=0;i<10;i++)
		{
			a[i][j] = c[i][j] + 4 ;
		}
	}
lbl_32:
	;
lbl_33:
	;
	for(j=7;j<9;j++)
	{
		for(i=0;i<10;i++)
		{
			a[i][j] = b[i][j] + 6 ;
		}
	}
lbl_42:
	;
	for(j=10;j<13;j++)
	{
		for(i=0;i<10;i++)
		{
			a[i][j] = b[i][j] + 5;
		}
	}
lbl_52:
	;
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			printf("a[%2ld][%2ld]=%8.3f b[%2ld][%2ld]=%8.3f c[%2ld][%2ld]=%8.3f\n",
			    i,j,a[i][j],i,j,b[i][j],i,j,c[i][j]) ;
		}
	}
	exit (0);
}
