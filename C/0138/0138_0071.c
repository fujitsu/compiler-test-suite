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
	complex8 a3[10],b3[10],c3[10];
	complex16 a4[10],b4[10],c4[10];
	long int m[10];
	long int s=2;
	long int i;
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
		c3[i].real=1.0;
		c3[i].imag=0.5;
	}
	for(i=0;i<10;i++)
	{
		b4[i].dreal=32.0;
		b4[i].dimag=0.8;
	}
	for(i=0;i<10;i++)
	{
		c4[i].dreal=8.0;
		c4[i].dimag=0.2;
	}
	for(i=0;i<10;i++)
	{
		a1[i]=0.0;
		c1[i]=2.0;
		a3[i].real=b3[i].real/c3[i].real;
		a3[i].imag=b3[i].imag/c3[i].imag;
		m[i]=i+1;
	}
	for(i=0;i<10;i++)
	{
		a4[i].dreal=b4[i].dreal/c4[i].dreal;
		a4[i].dimag=b4[i].dimag/c4[i].dimag;
		m[i]=m[i]+i;
	}
	for(i=0;i<10;i+=2)
	{
		a3[i].real=pow(b3[i].real,s);
		a3[i].imag=pow(b3[i].imag,s);
	}
	for(i=0;i<10;i+=2)
	{
		a4[i].dreal=pow(b3[i].real,s);
		a4[i].dimag=pow(b3[i].imag,s);
	}
	for(i=0;i<10;i+=2)
	{
		a4[i].dreal=pow(b3[i].real,m[i]);
		a4[i].dimag=pow(b3[i].imag,m[i]);
	}
	for(i=0;i<10;i+=2)
	{
		a1[i]=pow(b1[i],m[i]);
	}
	for(i=0;i<6;i+=2)
	{
		a1[i]=pow(b1[i],b1[i]);
	}
	printf(" *****  ****\n");
	for(i=0;i<10;i++)
	{
		printf(" ***** [%ld] ****\n",i);
		a1[i] = (a1[i] > 0.0)?
		    (float)(int)(a1[i]+0.5):(float)(int)(a1[i]-0.5);
		printf(" a1[%ld]= %f \n",i,a1[i]);
		a3[i].real = (a3[i].real > 0.0)?
		    (float)(int)(a3[i].real+0.5):(float)(int)(a3[i].real-0.5);
		printf(" a3[%ld].real = %f ",i,a3[i].real);
		printf(" a3[%ld].imag = %f \n",i,a3[i].imag);
		a4[i].dreal = (a4[i].dreal > 0.0)?
		    (double)(int)(a4[i].dreal+0.5):(double)(int)(a4[i].dreal-0.5);
		printf(" a4[%ld].dreal= %f ",i,a4[i].dreal);
		printf(" a4[%ld].dimag= %f \n",i,a4[i].dimag);
		printf(" m[%ld]= %ld \n",i,m[i]);
	}
	exit (0);
}
 
