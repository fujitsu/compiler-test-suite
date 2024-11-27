#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int qs[10][10],ql[10][10];
	int i,j,k,n=10;
	int sd=2;
	for(i=0;i<n;i++){
		for(j=0;j<n;j++){
			qs[i][j]=0;
			ql[i][j]=10;
		}
	}
	for(i=0;i<n;i++){
		for(j=0;j<n;j++){
			for(k=0;k<n;k++){
				qs[i][j]=qs[i][j]+ql[k][i]*ql[k][j]*sd;
			}
		}
	}
	for(i=0;i<n;i++){
		for(j=0;j<n;j++){
			printf("qs[%d][%d]=%ld \n",i,j,qs[i][j]);
		}
	}
	exit (0);
}
