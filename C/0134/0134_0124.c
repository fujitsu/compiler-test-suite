#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int b[10];
	int n=2;
	int m=1;
	int o=0;
	int i;
	for(i=0;i<10;i++){
		b[i]=a[(o+n)*(n-m)]+5;
	}
	for(i=0;i<10;i++){
		printf("b[%d]=%d \n",i,b[i]);
	}
	exit (0);
}
