#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	float x[10]={
		1.,2.,3.,4.,5.,6.,7.,8.,9.,10.	};
	float y[10]={
		10.,9.,8.,7.,6.,5.,4.,3.,2.,1.	};
	float z[10]={
		2.,2.,2.,2.,2.,2.,2.,2.,2.,2.	};
	float q[10]={
		10.,20.,30.,40.,50.,60.,70.,80.,90.,100.	};
	float r[10];
	float vas[10]={
		1.,1.,1.,1.,1.,1.,1.,1.,1.,1.	};
	float t1[10]={
		1.,2.,3.,4.,5.,6.,7.,8.,9.,10.	};
	float a[10][10],p[10][10];
	float s1=1.0;
	float s2=2.0;
	float s3=3.0;
	int i,j,k,n=10;
	p[0][0]=1.0;
	for(i=0;i<n;i++){
		q[i]=(x[i]-y[i])/s1;
		r[i]=(z[i]-q[i])*vas[i];
		t1[i]=q[i]*s2;
		for(j=0;j<n;j++){
			p[i][j]=q[i]+t1[i];
		}
		for(k=0;k<n;k++){
			a[i][k]=p[i][k]*t1[k]-s3;
		}
	}
	for(i=0;i<n;i++){
		for(j=0;j<n;j++){
			printf("a[%d][%d]=%f \n",i,j,a[i][j]);
		}
	}
	exit (0);
}
