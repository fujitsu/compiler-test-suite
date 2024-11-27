#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	int  i,n=1,k=2;
	long int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	for(i=n*++k;i<10;i++){
		a[i] = i ;
	}
	for(i=0;i<10;i++){
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
