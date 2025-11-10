#include <stdlib.h>
#include <stdio.h>
#include <math.h>


#include "000.h"
int sub(COMPLEX *C1, COMPLEX *C2, COMPLEX C3[10]);
int main (void)
{
	COMPLEX C1,C2,C3[10];
	C1.real=1.0;
	C1.imag=2.0;
	sub(&C1,&C2,C3);
	printf(" C1=(%f,%f) \n",C1.real,C1.imag);
	printf(" C2=(%f,%f) \n",C2.real,C2.imag);
	printf(" C3=(%f,%f) \n",C3[1].real,C3[1].imag);
	exit (0);
}
int sub(COMPLEX *C1, COMPLEX *C2, COMPLEX C3[10])
{
	float a,b;
	a=C1->imag;
	b=C1->real;
	C2->real=(*C1).imag;
	C2->imag=(*C1).real;
	C3[1].real=a+b;
	C3[1].imag=a*b;
	printf(" sub a=%f b=%f \n",a,b);
}
