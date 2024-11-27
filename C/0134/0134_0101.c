#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10][10];
	long int b[10][10];
	int i=0,j;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			a[i][j+0*(1+2)]=i*10+j*1;
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			b[i][j]=a[i][2];
		}
	}
	for(i=i++,j=0;i<10;i++){
		a[i][j]=a[i][j]+b[-0*(i-1)][j];
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			printf("a[i][j]=%ld \n",a[i][j]);
		}
	}
	exit (0);
}
