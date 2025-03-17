#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	long int n[11]={
				1,1,1,1,1,1,1,1,1,1,1		},
	m[11]={
				2,2,2,2,2,2,2,2,2,2,2		};
	float a[21]={
				0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,
				                        2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5		},
	b[11]={
				3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0		};
	long int k,i;
	k=10;
	if (n[2] == 1){
		for(i=0;i<k;i++){
			m[i]=m[i+1]+n[i+k-10];
		}
	}
	else{
		for(i=0;i<10;i++){
			a[i+k]=a[i+k+1]+b[i+k-10];
		}
	}
	printf("  ***** 2403 ****\n");
	printf(" k => %ld\n",k);
	for(i=0;i<11;i++){
		printf(" m[%ld] => %ld     n[%ld] => %ld\n",i,m[i],i,n[i]);
	}
	for(i=10;i<21;i++){
		printf(" a[%ld] => %f\n",i,a[i]);
	}
	for(i=0;i<11;i++){
		printf(" b[%ld] => %f\n",i,b[i]);
	}
	exit (0);
}
