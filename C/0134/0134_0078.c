#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i;
	for(i=0;i<1;){
		a[0]=5;
		i++;
	}
	for(i=0;i<10;i++){
		printf("a[%d]=%d \n",i,a[i]);
	}
	exit (0);
}
