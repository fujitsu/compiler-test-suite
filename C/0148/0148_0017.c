#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float a[10]={
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		},
	b[10]={
				2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0		},
	av[10]={
				3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0		};
	long int n=10,i;
	float x=5.0;
LBL_9:
	;
	a[2]=n-x;
	for(i=0;i<n;i++){
		x=a[i]*b[i];
		if (x >  10000) goto LBL_9;
		a[i]=x-a[i];
		av[i]=sqrt(fabs(x));
	}
	for(i=0;i<10;i++){
		printf(" a[%ld] => %13.7f   av[%ld] => %13.7f\n",i,a[i],i,av[i]);
	}
	exit (0);
}
