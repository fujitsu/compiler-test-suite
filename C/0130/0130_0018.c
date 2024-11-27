#include <stdlib.h>
#include <stdio.h>

#include <math.h>
int main(){
	double ia[10]={
		0.,1.,2.,3.,4.,5.,6.,7.,8.,9.	};
	double k=3.1,l[10];
	long int nx[10]={
		10,11,12,13,14,15,16,17,18,19	};
	long int ny[10]={
		1,2,3,4,5,6,7,8,9,10	};
	long int m[10];
	int i,j,n=10;
	for(i=0;i<n;i++){
		l[i]=fmod(ia[i],k);
		m[i]=32*nx[i]/ny[i];
	}
	printf("********** \n");
	for(j=0;j<n;j++){
		printf("l[%d]=%g  m[%d]=%ld \n",i,l[j],j,m[j]);
	}
	exit (0);
}
