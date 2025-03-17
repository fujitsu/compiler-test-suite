#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float a[10]={
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		},
	b[10]={
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		},
	av[10]={
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		};
	long int n=10,i;
	float x;
	for(i=0;i<n;i++){
		x=a[i]*b[i];
		a[i]=x-a[i];
		if (x == 0.0) goto LBL_99;
		av[i]=sqrt(fabs(x));
	}
LBL_99:
	;
	printf("  ## A(I)  ##\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %f\n",i,a[i]);
	}
	printf("  ## AV(I) ##\n");
	for(i=0;i<10;i++){
		printf(" av[%ld] => %f\n",i,av[i]);
	}
	exit (0);
}
