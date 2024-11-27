#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i,j=1;
	int m=1,n=-1;
	for(i=0;i<1;(m+n)*i++,j++*(m+n)){
		a[i]=j+i;
	}
	for(i=0;i<10;i++){
		printf("a[%ld]=%ld \n",i,a[i]);
	}
	exit (0);
}
