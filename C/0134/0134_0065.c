#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10];
	int i;
	int m=1,n=1;
	for(i=1*(m-n);i<10;i++){
		a[i]=i;
	}
	for(i=0;i<10;i++){
		printf("a[%d]=%ld",i,a[i]);
	}
	printf("\n");
	exit (0);
}
