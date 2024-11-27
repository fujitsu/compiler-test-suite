#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int k=1;
	int l=1;
	int m=1;
	int n=1;
	int i,j;
	for(i=0;i<(k+l)*(m+n+3);i++){
		a[i]=9;
	}
	for(j=0;j<(m+n+3)*(k+l);j++){
		printf("a[%d]=%ld \n",j,a[j]);
	}
	exit (0);
}
