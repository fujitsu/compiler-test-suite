#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10];
	int i,n;
	for(i=0;i<10;i++){
		a[i]=i;
	}
	i=1;
	n=1;
	for(i=(n+i+1+2)*i;i<10;i++){
		a[i]=i+1;
	}
	printf("CORRECT OUTDATA = 0 1 2 3 4 6 7 8 9 10 \n");
	for(i=0;i<10;i++){
		printf("a[%d]=%ld ",i,a[i]);
	}
	printf("\n");
	exit (0);
}
