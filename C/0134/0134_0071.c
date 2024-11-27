#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i;
	int m=3;
	int n=3;
	int k=3;
	int l=1;
	for(i=0;i<(m+n)*(k-l)-2;i++){
		a[i]=9;
	}
	for(i=0;i<10;i++){
		printf("a[%ld]=%ld \n",i,a[i]);
	}
	exit (0);
}
