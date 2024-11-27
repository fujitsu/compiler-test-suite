#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int  i,j;
	int  m=3,n=1;
	int  x=0,y=2,z=5;
	for(i=0;i<(m*x+y)*(n*x+z);i++){
		a[i] = i ;
	}
	for(i=0;i<10;i++){
		printf("a[%d]=%ld \n",i,a[i]);
	}
	exit (0);
}
