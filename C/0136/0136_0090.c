#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(int qsm[ ], int rsm[ ], int ps[ ], int dba[ ], int n);








int main (void)
{
	int qsm[10]={
		1,2,3,4,5,6,7,8,9,10	};
	int rsm[10]={
		10,9,8,7,6,5,4,3,2,1	};
	int ps[10]={
		1,2,3,4,5,5,4,3,2,1	};
	int dba[18],i;
	for(i=0;i<18;i++) dba[i]=0 ;

	sub(qsm,rsm,ps,dba,10) ;

	printf("dba= ") ;
	for(i=0;i<18;i++)
		printf("%d  ",dba[i]) ;
	printf("\n") ;

	exit (0);
}

int sub(int qsm[ ], int rsm[ ], int ps[ ], int dba[ ], int n)
{
	int i ;
	for ( i=1 ; i<n ; i++) {
		dba [i] = qsm [i] * rsm [i] ;
		dba [2*i-1] = -qsm [i] * ps [i] ;
	}
}
