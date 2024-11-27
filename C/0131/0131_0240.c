#include <stdlib.h>
#include <stdio.h>
#include <math.h>

union data {
	long int a[10];
}x;
int main() {
	int i;
	long int b[10],c[10],d[10];
	for(i=0;i<10;i++) {
		x.a[i]=5;
	}
	for(i=0;i<10;i++) {
		b[i] = x.a[i] + 1 ;
		c[i] = b[i] - 1 ;
		d[i] = c[i] * 2 ;
		x.a[i] = d[i] / 2 ;
	}
	for(i=0 ; i<10 ; i++) {
		printf("a[%d]=%ld \n",i,x.a[i]);
	}
	for(i=0 ; i<10 ; i++) {
		printf("b[%d]=%ld \n",i,b[i]);
	}
	for(i=0 ; i<10 ; i++) {
		printf("c[%d]=%ld \n",i,c[i]);
	}
	for(i=0 ; i<10 ; i++) {
		printf("d[%d]=%ld \n",i,d[i]);
	}
	exit (0);
}
