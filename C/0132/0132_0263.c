#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
COMPLEX8 CSQRT();
int main()
{
	COMPLEX8 a[10],b[10],c[10];
	int i;
	for( i=0;i<10;i+=1)
	{
		a[i].real= i ;
		a[i].imag= i ;
		b[i].real=i*i;
		b[i].imag=i*i;
		c[i]=CSQRT(a[i]);
		c[i].real = c[i].real+b[i].real;
		c[i].imag = c[i].imag+b[i].imag;
	}
	
	for(i=0;i<10;i++) printf("(9.2e,9.2e) ",a[i].real,a[i].imag);
	printf("\n");
	for(i=0;i<10;i++) printf("(9.2e,9.2e) ",b[i].real,b[i].imag);
	printf("\n");
	for(i=0;i<10;i++) printf("(9.2e,9.2e) ",c[i].real,c[i].imag);
	printf("\n");
	exit (0);
}
COMPLEX8 CSQRT(comp)
COMPLEX8 comp ;
{
	COMPLEX8 retval;
	retval.real = sqrt(comp.real);
	retval.imag = sqrt(comp.imag);
	return(retval);
}
