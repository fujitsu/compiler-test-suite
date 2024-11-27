#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	int a[10];
	int i,n=0,k=0;
	for(i=0;i<10;(n+k)*i++){
		a[i]=10;
		n++;
	}
	for(i=0;i<10;i++){
		printf("a[%d]=%d \n",i,a[i]);
	}
	exit (0);
}
