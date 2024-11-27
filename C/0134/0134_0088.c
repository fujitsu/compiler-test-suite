#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10]={
		0,1,2,3,4,5,6,7,8,9	};
	int n=0,m=10,i,j;
	for(i=n,j=i+1;j<m;i+=2,j+=2){
		a[i] = j ;
	}
	for(i=0;i<10;i++){
		printf("a[%d]=%ld \n",i,a[i]);
	}
	exit (0);
}
