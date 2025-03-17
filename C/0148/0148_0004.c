#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	double a[10],b[10];
	long int i;
	for(i=0;i<10;i++){
		a[i]=1.0/(i+1);
		b[i]=a[i]*2.5;
	}
	for(i=0;i<10;i++){
		a[i]=(float)(a[i]+b[i]);
	}
	printf("  **** 0005 ****\n");
	for(i=0;i<10;i++){
		printf("a[%ld] => %f\n",i,a[i]);
	}
	for(i=0;i<10;i++){
		printf("b[%ld] => %f\n",i,b[i]);
	}
	exit (0);
}

