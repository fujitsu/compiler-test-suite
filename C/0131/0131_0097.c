#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,a[5][5]={
		{1,2,3,4,5},{6,7,8,9,0},
		                    {1,2,3,4,5},{6,7,8,9,0},
		                    {1,2,3,4,5}	};
	float b=0.0,c=1.5 ;
	double d,e=1.0,f=2.5 ;
	for(i=1;i<4;i++)
	{
		a[i][0] = a[i+1][0] ;
		a[i][i] = a[i+1][i-1] ;
		b = b + i ;
		d = e + i ;
		e = d + f ;
		d = f + i ;
	}
	for(i=0;i<5;i++)
	{
		printf("a[%d][0] = %d  ",i,a[i][0]) ;
		printf("a[%d][1] = %d  ",i,a[i][1]) ;
		printf("a[%d][2] = %d  ",i,a[i][2]) ;
		printf("a[%d][3] = %d  ",i,a[i][3]) ;
		printf("a[%d][4] = %d\n",i,a[i][4]) ;
	}
	printf("b = %f  d = %f  e = %f  f = %f \n",b,d,e,f) ;
	exit (0);
}
