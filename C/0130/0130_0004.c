#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	float dfloat[10]={
		2.,3.,4.,5.,6.,7.,8.,9.,10.,11.	};
	float aa,bb,abc,div;
	float u[10];
	long int i,j,n=10;
#pragma loop nopreex
#pragma loop noeval
	for(i=0;i<n;i++){
		aa=2.0*dfloat[i]-1.0;
		bb=2.0*dfloat[n-1]+1.0;
		abc=aa/bb;
		div=2.0*(1.0-abc);
		u[i]=1.0/div;
	}
	for(j=0;j<10;j++){
		printf("u[%ld] => %12.5f \n",j,u[j]);
	}
	exit (0);
}
