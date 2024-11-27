#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define  A   l+m-n
int main(){
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i,j;
	int l=3,m=2,n=5;
	for(i=2*A;i<10;i++){
		a[i]=9;
	}
	for(j=0;j<10;j++){
		printf("a[%d]=%d \n",j,a[j]);
	}
	exit (0);
}
