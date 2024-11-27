#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int up[10][10],vx[10][10],vy[10][10];
	int i,j,n=10;
	int ph1=2;
	for(i=0;i<n;i++){
		for(j=0;j<n;j++){
			vx[i][j]=5;
			vy[i][j]=10;
		}
	}
	for(i=0;i<n;i++){
		for(j=0;j<n;j++){
			up[i][j]=vx[i][j]+vy[i][j]*ph1;
			if(up[i][j]<10) up[i][j]=0;
		}
	}
	for(i=0;i<n;i++){
		for(j=0;j<n;j++){
			printf("up[%d][%d]=%ld \n",i,j,up[i][j]);
		}
	}
	exit (0);
}
