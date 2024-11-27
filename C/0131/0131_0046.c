#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	double      dbb[10]={
		0.1,0.3,0.5,0.7,0.9,1.1,1.3,1.5,1.7,1.9	};
	double      dbc[10]={
		1.1,1.3,1.5,1.7,1.9,2.1,2.3,2.5,2.7,2.9	};
	double      qsm[3][10] ;
	int         i,n=10 ;
	
	for(i=0;i<n;i++)
	{
		qsm[0][i] = dbb[i] + dbc[i] ;
		qsm[1][i] = dbb[i] - dbc[i] ;
		qsm[2][i] = qsm[0][i] * qsm[1][i] ;
	}
	
	for(i=0;i<n;i++)
	{
		printf("%7.2f",qsm[2][i]) ;
	}
	printf("\n") ;
	exit (0) ;
}
