#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	long int b[10]={
		1,2,3,4,5,6,7,8,9,0	};
	int i,j,n=0;
	for(i=0;i<10;i++){
		a[i++]=b[n++];
	}
	for(j=0;j<10;j++){
		printf("a[j]=%ld \n",a[j]);
	}
	exit (0);
}
