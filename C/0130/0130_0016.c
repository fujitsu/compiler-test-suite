#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int vx[10][10],vy[10][10];
	long int q[10],r[10];
	int i,j,n=10;
	int s=1,m=9;
	for(i=0;i<n;i++){
		q[i]=4;
		r[i]=2;
		for(j=0;j<n;j++){
			vx[i][j]=0;
			vy[i][j]=10;
		}
	}
	for(i=0;i<n;i++){
		q[i]=(q[i]-r[i])*2;
		vx[i][1]=(q[i]-r[i])*s;
		for(j=0;j<n;j++){
			vx[i][j]=vy[i][j]*vx[i][j];
		}
		r[i]=vx[i][m]-r[i];
	}
	for(i=0;i<n;i++){
		for(j=0;j<n;j++){
			printf("vx[%d][%d]=%ld \n",i,j,vx[i][j]);
		}
	}
	exit (0);
}
