#include <stdlib.h>
#include <math.h>
#include <stdio.h>











typedef struct{
	float real;
	float imag;
}complex8;
int main(){
	complex8 e[10];
	double a[10]={
				0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0		},
	b[10]={
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		};
	long int i,k;
	float n[10]={
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		},
	m[10]={
				2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0		},
	l[10];
	if (a[2] == 0.0) goto LBL_30;
	goto LBL_20;
LBL_30:
	;
	for(i=0;i<10;i++){
		l[i]=m[i]*m[i];
LBL_20:
		;
		n[i]=l[i]/m[i];
		b[i]=b[i]/m[i];
		a[i]=b[i]*m[i];
		e[i].real=a[i];
		e[i].imag=0.0;
	}
	printf("  ***** 2401 *****\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %f    b[%ld] => %f\n",i,a[i],i,b[i]);

	}
	for(i=0;i<10;i++){
		printf(" e[%ld] => %f%f\n",i,e[i].real,e[i].imag);

	}
	for(i=0;i<10;i++){
		printf(" l[%ld] => %f    m[%ld] => %f\n",i,l[i],i,m[i]);

	}
	for(i=0;i<10;i++){
		printf(" n[%ld] => %f\n",i,n[i]);

	}
	exit (0);
}
