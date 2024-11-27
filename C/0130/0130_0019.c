#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int x[10]={
		1,2,3,4,5,6,7,8,9,10	};
	long int y[10]={
		1,1,1,1,1,1,1,1,1,1	};
	long int z[10]={
		0,1,2,3,4,5,6,7,8,9	};
	long int px[10]={
		9,8,7,6,5,4,3,2,1,0	};
	long int pz[10]={
		0,1,2,3,4,5,6,7,8,9	};
	int i,j,n=10;
	int s1,s2;
	s1=s2=1;
	for(i=1;i<n;i++){
		x[i]=x[i-1]*y[i]+z[i];
		px[i]=x[i]*s1+pz[i]*s2;
	}
	printf("********** \n");
	for(j=0;j<n;j++){
		printf("x[%d]=%ld px[%d]=%ld \n",j,x[j],j,px[j]);
	}
	exit (0);
}
