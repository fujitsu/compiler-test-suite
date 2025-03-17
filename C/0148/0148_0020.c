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
	long int n=10;
	long int i,j;
	float x=9.0;
	for(j=0;j<3;j++){
LBL_9:
		;
		a[j]=n-x;
		for(i=0;i<n;i++){
			x=a[i]*b[i];
			if (x == 10000) goto LBL_9;
			a[i]=x-a[i];
			av[i]=sqrt(fabs(x));
		}
	}
	printf("  ## A ##\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %10.5f\n",i,a[i]);
	}
	printf("  ## AV ##\n");
	for(i=0;i<10;i++){
		printf(" av[%ld] => %10.5f\n",i,av[i]);
	}
	exit (0);
}
