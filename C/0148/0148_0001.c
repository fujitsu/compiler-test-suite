#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float a[10],
	b[10] = {
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		},
	c[10] = {
				2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0		};
	long int i;
	for(i=0;i<10;i++){
		a[i]=b[i]+c[i];
	}
	printf("  ***** 0001 *****\n");
	for(i=0;i<10;i++){
		printf("a[%ld] = > %f\n",i,a[i]);
	}
	for(i=0;i<10;i++){
		printf("b[%ld] = > %f\n",i,b[i]);
	}
	for(i=0;i<10;i++){
		printf("c[%ld] = > %f\n",i,c[i]);
	}
	exit (0);
}
