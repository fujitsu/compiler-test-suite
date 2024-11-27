#include <math.h>
#include <stdlib.h>
#include <stdio.h>

typedef struct{
	float real;
	float imag;
}complex8;
typedef struct{
	double dreal;
	double dimag;
}complex16;
int main()
{
	float a1[10],b1[10],c1[10];
	double a2[10],b2[10],c2[10];
	complex8 a3[10],b3[10];
	complex16 a4[10],b4[10];
	long int m[10];
	long int i,s=2;
	for(i=0;i<10;i++)
	{
		b1[i]=2.0;
	}
	for(i=0;i<10;i++)
	{
		c1[i]=0.3;
	}
	for(i=0;i<10;i++)
	{
		b2[i]=2.0;
	}
	for(i=0;i<10;i++)
	{
		c2[i]=0.3;
	}
	for(i=0;i<10;i++)
	{
		b3[i].real=2.0;
		b3[i].imag=2.5;
	}
	for(i=0;i<10;i++)
	{
		b4[i].dreal=32;
		b4[i].dimag=0.8;
	}
	for(i=0;i<10;i++)
	{
		c1[i]=2.0;
		a3[i].real=abs(b3[i].real);
		a3[i].imag=abs(b3[i].imag);
		m[i]=i+1;
	}
	for(i=0;i<10;i++)
	{
		a4[i].dreal=abs(b4[i].dreal);
		a4[i].dimag=abs(b4[i].dimag);
		m[i]=m[i]+i+1;
	}
	printf(" *****  ****\n");
	for(i=0;i<10;i++)
	{
		printf(" ***** [%ld] ****\n",i);
		printf(" a3[%ld].real = %f ",i,a3[i].real);
		printf(" a3[%ld].imag = %f \n",i,a3[i].imag);
		printf(" a4[%ld].dreal= %f ",i,a4[i].dreal);
		printf(" a4[%ld].dimag= %f \n",i,a4[i].dimag);
	}
	exit (0);
}
