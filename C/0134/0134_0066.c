#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10];
	int m=0,n=0;
	int k=1,l=1;
	int i;
	for(i=(k-l)*(m-n);i<10;i++){
		a[i]=i;
	}
	for(i=0;i<10;i++){
		printf("a[%d]=%ld",i,a[i]);
	}
	printf("\n");
	exit (0);
}
