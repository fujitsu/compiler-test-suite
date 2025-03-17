#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	double d1[10]={
				10.0,10.0,10.0,10.0,10.0,
				                          10.0,10.0,10.0,10.0,10.0		},
	d2[1000];
	long int n=700,k=1,ic0=0,ic1=1,i;
	for(i=0;i<1000;i++){
		d2[i]=2.5;
	}
	for(i=0;i<n;i+=ic1){
		d2[i]=d1[k-1];
		k+=ic0;
	}
	for(i=0;i<1000;i++){
		printf(" d2[%ld] => %f\n",i,d2[i]);
	}
	exit (0);
}
