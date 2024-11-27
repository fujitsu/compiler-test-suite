#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10];
	int i,n=1;
	for(i=0;i<10;n*i++){
		a[i]=i*10+n*0;
	}
	for(i=0;i<10;i++){
		printf("a[%d]=%ld \n",i,a[i]);
	}
	exit (0);
}
