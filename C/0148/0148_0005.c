#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float a[20],b[20],c[20],d[20],e[20],f[20];
	long int i;
	for(i=0;i< 20;i++){
		b[i]=1.0;
		c[i]=2.0;
		d[i]=3.0;
		e[i]=4.0;
		f[i]=5.0;
	}
	for(i=0;i<20;i++){
		b[i]=d[i];
		a[i]=b[i]+c[i];
		e[i]=f[i];
	}
	printf("  ***** 0006 ***** DEBUG FUNCTION\n");
	for(i=0;i<20;i++){
		printf("a[%ld] => %f",i,a[i]);
		printf("  b[%ld] => %f",i,b[i]);
		printf("  e[%ld] => %f\n",i,e[i]);
	}
	exit (0);
}
