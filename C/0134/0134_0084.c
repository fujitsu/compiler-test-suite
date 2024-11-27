#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i,j=0;
	int m=5,n=2;
	for(i=0;i<(m*n)+0,j<i*(m+n);i++){
		a[i]=j+i;
		j++;
	}
	for(i=0;i<10;i++){
		printf("a[%d]=%d \n",i,a[i]);
	}
	exit (0);
}
