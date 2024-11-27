#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(int dbb[], int dbc[], int qsm[][3], int n);








int main (void)
{
	int dbb[10]={
		1,2,3,4,5,6,7,8,9,10	};
	int dbc[10]={
		10,9,8,7,6,5,4,3,2,1	};
	int qsm[10] [3],i,j;
	sub(dbb,dbc,qsm,10) ;
	printf("qsm=") ;
	for(i=0;i<10;i++){
		for(j=0;j<3;j++){
			printf("%d ",qsm[i] [j]) ;
		}
		printf("\n") ;
	}
	printf("\n") ;
	exit (0);
}

int sub(int dbb[], int dbc[], int qsm[][3], int n)
{
	int i;
	for ( i=0 ; i<n ; i++) {
		qsm[i]   [0] = dbb[i] + dbc[i] ;
		qsm[i]   [1] = dbb[i] - dbc[i] ;
		qsm[i]   [2] = qsm[i][0] * qsm[i][1] ;
	}
}
