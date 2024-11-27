#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10]={
		0,1,2,3,4,5,6,7,8,9	};
	int i,j=2;
	for(i=0;1+i<=10;i++){
		a[i] = j ;
	}
	for(i=0;i<10;i++){
		printf("a[0]=%ld \n",a[0]);
	}
	exit (0);
}
