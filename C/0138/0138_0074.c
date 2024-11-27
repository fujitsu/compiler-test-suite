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
		b1[i]=2.0;
		c1[i]=0.3;
		b2[i]=2.0;
		c2[i]=0.3;
		b3[i].real=2.0;
		b3[i].imag=2.0;
		b4[i].dreal=32;
		b4[i].dimag=0.8;
	}
	for(i=0;i<10;i++)
	{
		c1[i]=2.0;
		a1[i]=pow(10.0,b1[i]);
		m[i]=i+1;
	}
	for(i=0;i<10;i+=2)
	{
		a1[i]=pow(2.0,b1[i]);
		m[i]=m[i]+i+1;
	}
	for(i=0;i<10;i++)
	{
		c2[i]=2.0;
		a2[i]=pow(10.0,s);
		m[i]=i+1;
	}
	for(i=0;i<10;i+=2)
	{
		a2[i]=pow(2.0,b2[i]);
		m[i]=m[i]+i+1;
	}
	for(i=0;i<10;i++)
	{
		a3[i].real=exp(b3[i].real);
		a3[i].imag=exp(b3[i].imag);
		m[i]=m[i]+i+1;
	}
	for(i=0;i<10;i++)
	{
		a4[i].dreal=exp(b4[i].dreal);
		a4[i].dimag=exp(b4[i].dimag);
		m[i]=m[i]+i+1;
	}
	printf(" *****  ****\n");
	for(i=0;i<10;i++)
	{
		printf(" ***** [%ld] ****\n",i);
		a1[i] = (a1[i] > 0.0)?
		    (float)(int)(a1[i]+0.5):(float)(int)(a1[i]-0.5);
		printf(" a1[%ld]= %f  a2[%ld]= %f \n",i,a1[i],i,a2[i]);
		printf(" a3[%ld].real = %f ",i,a3[i].real);
		printf(" a3[%ld].imag = %f \n",i,a3[i].imag);
		printf(" a4[%ld].dreal= %f ",i,a4[i].dreal);
		printf(" a4[%ld].dimag= %f \n",i,a4[i].dimag);
		printf(" m[%ld]= %ld \n",i,m[i]);
		printf(" c1[%ld]= %f  c2[%ld]= %f \n",i,c1[i],i,c2[i]);
	}
	exit (0);
}
