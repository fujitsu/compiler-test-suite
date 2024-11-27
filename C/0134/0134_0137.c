#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int  i,m=2,n=1;
	int  z=2,x=1;
	for(i=0;i<=(m+n)*(z+x);i++){
		a[i*(m-n)] = i ;
	}
	for(i=0;i<10;i++){
		printf("a[%d]=%ld \n",i,a[i]);
	}
	exit (0);
}
