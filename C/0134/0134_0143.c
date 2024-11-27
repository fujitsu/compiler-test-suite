#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10];
	int i,j;
	int m=4;
	int n=0;
	for(i=0;i<(m+1)*(-n+2);i++){
		a[i]=i;
	}
	printf("CORRECT OUTDATA = 1 2 3 4 5 6 7 8 9 10 \n");
	for(j=0;j<10;j++){
		printf("a[%d]=%ld ",j,a[j]);
	}
	printf("\n");
	exit (0);
}
