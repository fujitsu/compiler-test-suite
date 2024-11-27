#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i,n=0,m=1 ;
	for(i=(m-1)*(n-m);i<10;i++){
		a[i] = n * m + i ;
	}
	for(i=0;i<10;i++){
		printf("a[%d] = %d\n",i,a[i]) ;
	}
	exit (0);
}
