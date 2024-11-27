#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i=0,j=9;
	for(;;i++){
		a[i]=j;
		if(i==5) break;
	}
	for(i=0;i<10;i++){
		printf("a[%d]=%d \n",i,a[i]);
	}
	exit (0);
}
