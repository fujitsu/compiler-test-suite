#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i,n=0;
	for(i=n++;i<10;i++){
		a[i]=i;
	}
	for(i=0;i<10;i++){
		printf("a[%d]=%ld \n",i,a[0]);
	}
	exit (0);
}
