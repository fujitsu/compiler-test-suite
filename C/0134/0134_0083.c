#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i,j;
	int m=1,n=-1;
	for(i=0*(m+n),j=1*(m-n+n);i<1;i++){
		a[i]=j+i;
	}
	for(i=0;i<10;i++){
		printf("a[%d]=%d \n",i,a[i]);
	}
	exit (0);
}
