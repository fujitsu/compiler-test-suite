#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10][10];
	int i,j;
	for(i=j=0;i<10,j<10;i++,j++){
		a[i][j]=5 ;
	}
	for(j=1,i=2+j==3;i<10,j<10;i++,j++){
		a[i][j]=10 ;
	}
	for(i=0,j=0;i<10,j<10;i++,j++){
		printf(" a[%d][%d] = %ld",i,j,a[i][j]);
	}
	printf(" \n");
	exit (0);
}
