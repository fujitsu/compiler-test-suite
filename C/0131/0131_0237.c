#include <stdlib.h>
#include <stdio.h>
#include <math.h>

union data {
	long int a[10] ;
	long int b[10] ;
	long int c[10] ;
	long int d[10] ;
}x ;
int main(){
	union data  x ;
	int    i ;
	for(i=0 ; i<10 ; i++) {
		x.a[i] = 5 ;
	}
	for(i=0 ; i<10 ; i++) {
		x.b[i] = x.a[i] + 1 ;
		x.c[i] = x.b[i] - 1 ;
		x.d[i] = x.c[i] * 2 ;
		x.a[i] = x.d[i] / 2 ;
	}
	for(i=0 ; i<10 ; i++) {
		printf("a[%d]=%ld \n",i,x.a[i]) ;
	}
	for(i=0;i<10;i++) {
		printf("b[%d]=%ld \n",i,x.b[i]) ;
	}
	for(i=0;i<10;i++) {
		printf("c[%d]=%ld \n",i,x.c[i]) ;
	}
	for(i=0;i<10;i++) {
		printf("d[%d]=%ld \n",i,x.d[i]) ;
	}
	exit (0);
}
