#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	float a[10]={
		9.,8.,7.,6.,5.,4.,3.,2.,1.,0.	};
	float b[10]={
		1.,1.,2.,3.,4.,5.,6.,7.,8.,9.	};
	float av[10]={
		0.,0.,0.,0.,0.,0.,0.,0.,0.,0.	};
	float x;
	int i,j,k,n=10;
	for(i=0;i<n;i++){
		x=a[i]*b[i];
		if(x==0.0) goto lbl_10;
		av[i]=sqrt(x);
	}
lbl_10:
	;
	for(j=0;j<n;j++){
		printf("av[%d]=%f \n",j,a[j]);
	}
	exit (0);
}
