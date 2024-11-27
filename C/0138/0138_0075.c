#include <stdlib.h>
#include <math.h>
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
	long int s=2;
	long int i;
	for(i=0;i<10;i++)
	{
		a1[i]=0.0;
		m[i] =0;
		b1[i]=2.0;
		c1[i]=0.5;
		b2[i]=2.0;
		c2[i]=0.5;
		b3[i].real=2.0;
		b3[i].imag=1.0;
		b4[i].dreal=1.0;
		b4[i].dimag=2.0;
	}
	for(i=3;i<7;i++)
	{
		c1[i]=2.0;
		a1[i]=log(b1[i]);
		m[i]=i+1;
	}
	for(i=3;i<7;i++)
	{
		c1[i]=2.0;
		a1[i]=log(b1[i]);
		m[i]=i+1;
	}
	for(i=7;i<10;i++)
	{
		c1[i]=2.0;
		a1[i]=log10(b1[i]);
		m[i]=i+1;
	}
	for(i=0;i<10;i+=2)
	{
		c1[i]=3.0;
		a1[i]=log(b1[i]);
		m[i]=i+1;
	}
	for(i=0;i<10;i++)
	{
		a2[i]=log(b2[i]);
		m[i]=m[i]+i+1;
	}
	for(i=0;i<10;i++)
	{
		a3[i].real=log(b3[i].real);
		a3[i].imag=log(b3[i].imag);
		m[i]=m[i]+i+1;
	}
	for(i=0;i<10;i++)
	{
		a4[i].dreal=log(b4[i].dreal);
		a4[i].dimag=log(b4[i].dimag);
		m[i]=m[i]+i+1;
	}
	printf(" *****  ****\n");
	for(i=0;i<10;i++)
	{
		printf(" ***** [%ld] ****\n",i);
		printf(" a1[%ld]= %f a2[%ld]= %f \n",i,a1[i],i,a2[i]);
		printf(" a3[%ld].real = %f ",i,a3[i].real);
		printf(" a3[%ld].imag = %f \n",i,a3[i].imag);
		printf(" a4[%ld].dreal= %f ",i,a4[i].dreal);
		printf(" a4[%ld].dimag= %f \n",i,a4[i].dimag);
		printf(" m[%ld]= %d c1[%ld]= %f \n",i,m[i],i,c1[i]);
	}
	exit (0);
}
