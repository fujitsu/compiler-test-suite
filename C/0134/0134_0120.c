#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int  a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int  i ;
	for (i=0;i<10;i++){
		a[i*((1+1)-2)+i] = i ;
	}
	for (i=0;i<10;i++){
		printf("a[%d] = %ld \n",i,a[i]) ;
	}
	exit (0);
}
