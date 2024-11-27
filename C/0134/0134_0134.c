#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10];
	int i,j=1,n ;
	for(i=0;i<10;i++){
		a[i]=i;
	}
	n=1;
	i=1;
	for(i*=n+1;i<10;i++){
		a[i]=10;
	}
	for(j=0;j<10;j++){
		printf(" a[%d]=%ld \n",j,a[j]);
	}
	exit (0);
}
