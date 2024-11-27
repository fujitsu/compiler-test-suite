#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int qsm[10]={
		0,1,2,3,4,5,6,7,8,9	};
	long int rsm[10]={
		9,8,7,6,5,4,3,2,1,0	};
	long int ps[10]={
		1,2,3,4,5,6,7,8,9,10	};
	long int dba[10+1];
	int i,j;
	for(i=0;i<10;i++){
		dba[i]=qsm[i]*rsm[i];
		dba[10-i]=-qsm[i]*ps[i];
	}
	for(j=0;j<10;j++){
		printf("dba[%d]=%ld \n",j,qsm[j]);
	}
	exit (0);
}
