#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int vmix[20]={
		0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1	};
	long int kmy[10]={
		0,1,2,3,4,0,1,2,3,4	};
	long int afg[20]={
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1	};
	long int dafg[20]={
		9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9	};
	long int etmp1,etmp2;
	int i,j,n=10;
	for(i=0;i<n;i++){
		etmp1=vmix[kmy[i]];
		kmy[i]=kmy[i]*2+n;
		etmp2=vmix[kmy[i]]*2.718;
		dafg[kmy[i]]=etmp1*etmp1*afg[kmy[i]]-etmp2;
	}
	printf("********** \n");
	for(j=10;j<20;j++){
		printf("dafg[%d]=%ld \n",j,dafg[j]);
	}
	exit (0);
}
