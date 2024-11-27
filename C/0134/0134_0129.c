#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10],b[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i,j,k,n;
	n=01;
	for(i=0;i<10;i++){
		a[i]=i;
	}
	for(j=9;j>-1;j--){
		b[j]=a[(long int)(fabs((double)(-(n-j))))];
	}
	for(k=0;k<10;k++){
		printf("b[%d]=%ld ",k,b[k]);
	}
	printf("\n");
	exit (0);
}
