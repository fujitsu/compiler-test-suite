#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	float rdim[10],qp[10][10],w[10][10];
	float ds[10]={
		0.,1.,2.,3.,4.,5.,6.,7.,8.,9.,	};
	float roll[10]={
		0.,0.,0.,0.,0.,0.,0.,0.,0.,0.,	};
	float c,v1=0.0,dt=1.0;
	int i,j,n=10;
	int m=0,mm=1;
	for(i=0;i<n;i++){
		for(j=0;j<n;j++){
			qp[i][j]=2.0;
			w[i][j]=1.0;
		}
	}
	for(i=0;i<n;i++){
		rdim[i]=0.0;
		c=(ds[m]*qp[i][m]+ds[mm]*qp[i][mm])/2.0;
		if(c>0){
			v1=29.0*c*c*0.125-w[i][m]/2.0;
			if(v1>0) {
				c=(qp[i][m]+qp[i][mm])/2.0;
				c=(v1*c*ds[mm]*1000.0)/2.0;
				rdim[i]=c*600.0;
				roll[i]=roll[i]+c*dt;
			}
		}
		if(c==0)continue;
		if(c>0) continue;
	}
	for(j=0;j<10;j++){
		printf("roll[%d]=%f \n",j,roll[j]);
	}
	exit (0);
}
