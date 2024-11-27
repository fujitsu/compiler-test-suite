#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int wvari[10]={
				0,1,2,3,4,5,6,7,8,9		};
	long int bhp[10]={
				0,1,2,3,4,5,6,7,8,9		};
	long int wvri1,wvri2;
	int i,j,n=9;
	for(i=0;i<n;i++){
		wvri1=wvari[i];
		wvri2=wvari[i+1];
		wvari[i]=(wvri1+wvri2)/2;
		bhp[i]=wvari[i]*wvri1;
	}
	for(j=0;j<10;j++){
		printf("bhp[%d]=%ld \n",j,bhp[j]);
	}
	exit (0);
}
