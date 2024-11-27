#include <stdlib.h>
#include <math.h>
#include <stdio.h>
typedef struct {
	float real;
	float imag;
} complex8;
typedef struct {
	double dreal;
	double dimag;
} complex16;
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
		a1[i]=sqrt(b1[i]);
		m[i]=(i+1);
	}
	for(i=0;i<10;i++)
	{
		a2[i]=sqrt(b2[i]);
		m[i]=m[i]+i;
	}
	for(i=0;i<10;i++)
	{
		a3[i].real=sqrt(b3[i].real)
		    -sqrt(b3[i].imag);
		a3[i].imag=sqrt(b3[i].imag)
		    +sqrt(b3[i].real);
		m[i]=m[i]+(i+1);
	}
	for(i=0;i<10;i++)
	{
		a4[i].dreal=sqrt(b4[i].dreal)
		    -sqrt(b4[i].dimag);
		a4[i].dimag=sqrt(b4[i].dimag)
		    +sqrt(b4[i].dreal);
		m[i]=m[i]+(i+1);
	}
	for(i=0;i<10;i++)
	{
		if (i >  5)
		{
			c1[i]=2.0;
			a1[i]=sqrt(b1[i])+c1[i];
			m[i]=(i+1);
		}
	}
	for(i=0;i<10;i++)
	{
		if (a1[i] >  5.0)
		{
			a2[i]=sqrt(b2[i])+2.0;
			m[i]=m[i]+(i+1);
		}
	}
	for(i=0;i<10;i++)
	{
		if (b2[i] < 5.0)
		{
			a3[i].real=sqrt(b3[i].real)
			    -sqrt(b3[i].imag);
			a3[i].imag=sqrt(b3[i].imag)
			    +sqrt(b3[i].real);
			m[i]=m[i]+(i+1);
		}
	}
	for(i=0;i<10;i++)
	{
		if (i > 2)
		{
			a4[i].dreal=sqrt(b4[i].dreal)
			    -sqrt(b4[i].dimag);
			a4[i].dimag=sqrt(b4[i].dimag)
			    +sqrt(b4[i].dreal);
			m[i]=m[i]+(i+1);
		}
	}
	printf(" *****  ****\n");
	for(i=0;i<10;i++)
	{
		printf(" a1[%ld]= %f  a2[%ld]= %f \n",i,a1[i],i,a2[i]);
		printf(" a3[%ld].imag= %f  a3[%ld].real= %f \n",i,a3[i].imag,i,a3[i].real);
		printf(" a4[%ld].dimag= %f  a4[%ld].dreal= %f \n",i,a4[i].dimag,i,a4[i].dreal);
		printf(" m[%ld]= %ld \n",i,m[i]);
	}
	exit (0);
}
