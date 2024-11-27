#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define  B   l-m+n
int main(){
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i,j=9;
	int l=6,m=5,n=1;
	for(i=0;i<B*4+2;i++){
		a[i]=j;
	}
	for(i=0;i<10;i++){
		printf("a[%d]=%d \n",i,a[i]);
	}
	exit (0);
}
