#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int qsm[10][10];
	long int dbb[10]={
		0,1,2,3,4,5,6,7,8,9	};
	long int dbc[10]={
		9,8,7,6,5,4,3,2,1,0	};
	int i,j;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			qsm[i][j]=i+j;
		}
	}
	for(i=0;i<10;i++){
		qsm[0][i]=dbb[i]-dbc[i];
		qsm[1][i]=dbb[i]+dbc[i];
		qsm[2][i]=qsm[1][i]*qsm[2][i];
	}
	for(j=0;j<10;j++){
		printf("qsm[0][%d]=%ld ",j,qsm[0][j]);
		printf("qsm[1][%d]=%ld ",j,qsm[1][j]);
		printf("qsm[2][%d]=%ld \n",j,qsm[2][j]);
	}
	exit (0);
}
