#include <stdlib.h>
#include <math.h>
#include <stdio.h>











typedef struct{
	float real;
	float imag;
}complex;
int main()
{
	long int i,j;
	complex c[5][5];
	for(j=0;j<5;j++){
		for(i=0;i<5;i++){
			c[i][j].real=1.0;
			c[i][j].imag=1.0;
		}
	}
	for(i=0;i<5;i++){
		for(j=0;j<5;j++){
			c[i][j].real=1.0;
			c[i][j].imag=0.0;
		}
	}
	for(j=0;j<5;j++){
		for(i=0;i<5;i++){
			printf("  C[%d][%d]<real> ==> %21.8f \n",i,j,c[i][j].real);
			printf("         <imag> ==> %21.8f \n",c[i][j].imag);
		}
	}
	exit (0);
}
