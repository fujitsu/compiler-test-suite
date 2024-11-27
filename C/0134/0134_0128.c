#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(long int b[],int n,int j);

#define B(i,j) b[(i-1)*n+j]
int i,j,n;
int main(){
	long int a[10];
	j=n=1;
	for(i=0;i<10;i++){
		a[i]=i;
	}
	func(a,n,j);
	printf("CORRECT OUTDATA = 1 2 3 4 5 6 7 8 9 10 \n");
	for(i=0;i<10;i++){
		printf("a[%d]=%ld ",i,a[i]);
	}
	printf("\n");
	exit (0);
}

int func(long int b[],int n,int j){
	for(i=0;i<10;i++){
		B(i,j)=i+1;
	}
}
