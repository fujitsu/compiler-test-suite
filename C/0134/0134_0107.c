#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10][1];
	int i,j;
	for(i=0,j=0;i<10;i++){
		a[i][j]=10*i+j;
	}
	for(i=0;i<10;i++){
		printf("a[%d][0]=%ld \n",i,a[i][0]);
	}
	exit (0);
}
