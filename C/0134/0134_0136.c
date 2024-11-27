#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int  a[10];
	int  k,l,m;
	int  i ;
	k=l=m=0;
	for(i=0;i<10;i++){
		a[i] = i ;
	}
	for(i=k+(l-(-m));i<10;i++){
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
