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
		if (x == 0.0) goto LBL_99;
		av[i]=sqrt(fabs(x));
	}
LBL_99:
	;
	printf(" x => %f\n",x);
	exit (0);
}
