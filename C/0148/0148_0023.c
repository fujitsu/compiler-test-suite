#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float a[10],b[10],c[10];
	long int i;
	for(i=1;i<=10;i++){
		a[i-1]=i;
		b[i-1]=i*2;
		c[i-1]=a[i-1]+b[i-1];
	}
	printf("  ***** 2311 (I/O DO TEST)*****\n");
	for(i=0;i<10;i++){
		printf("a[%ld] => %f b[%ld] => %f c[%ld] => %f\n",
		    i,a[i],i,b[i],i,c[i]);
	}
	exit (0);
}
