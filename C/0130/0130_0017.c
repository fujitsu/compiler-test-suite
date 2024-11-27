#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10]={
		0,1,2,3,4,5,6,7,8,9	};
	long int b[10];
	int i,j=0,n=10;
	for(i=0;i<n;i++){
		if(a[i]>0){
			b[j]=a[i];
			j=j+1;
		}
	}
	printf("********** \n");
	for(i=0;i<j;i++){
		printf("b[%d]=%ld \n",i,b[i]);
	}
	exit (0);
}
