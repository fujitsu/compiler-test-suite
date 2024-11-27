#include <stdlib.h>
#include <math.h>
#include <stdio.h>

typedef struct {
	float real;
	float imag;
}complex8;
typedef struct {
	double dreal;
	double dimag;
}complex16;
int main()
{
	float a1[10],b1[10],c1[10];
	float a11[10],b11[10],c11[10];
	float a111[10],b111[10],c111[10];
	double a22[10],b22[10],c22[10];
	double a2[10],b2[10],c2[10];
	double a222[10],b222[10],c222[10];
	complex8 a3[10],b3[10];
	complex16 a4[10],b4[10];
	long int m[10];
	long int s=2;
	long int i;
	for(i=0;i<10;i++)
	{
		b1[i]=2.0;
		c1[i]=0.3;
		b11[i]=2.0;
		c11[i]=0.3;
		b111[i]=2.0;
		c111[i]=0.3;
		b22[i]=2.0;
		c22[i]=0.3;
		b2[i]=2.0;
		c2[i]=0.3;
		b222[i]=2.0;
		c222[i]=0.3;
		b3[i].real=(2.0);
		b3[i].imag=(2.5);
		b4[i].dreal=(32);
		b4[i].dimag=(0.8);
	}
	for(i=0;i<10;i++)
	{
		c1[i]=2.0;
		a1[i]=exp(b1[i]);
		m[i]=(i+1);
	}
	for(i=0;i<10;i++)
	{
		c111[i]=2.0;
		a111[i]=pow(2.0,b1[i]);
		m[i]=(i+1)+m[i];
	}
	for(i=0;i<10;i++)
	{
		c11[i]=2.0;
		a11[i]=pow(10.0,b11[i]);
		m[i]=(i+1)+m[i];
	}
	for(i=0;i<10;i++)
	{
		a2[i]=exp(b2[i]);
		m[i]=(i+1)+m[i];
	}
	for(i=0;i<10;i++)
	{
		a22[i]=pow(2.0,b22[i]);
		m[i]=(i+1)+m[i];
	}
	for(i=0;i<10;i++)
	{
		a222[i]=pow(10.0,b222[i]);
		m[i]=(i+1)+m[i];
	}
	printf(" *****  ****\n");
	for(i=0;i<10;i++)
	{
		printf("                      *****   [%ld]   ****\n",i);
		printf(" a1[%ld]= %g a2[%ld]= %g  ",i,a1[i],i,a2[i]);
		printf(" a11[%ld]= %g a22[%ld]= %g \n",i,a11[i],i,a22[i]);
		a111[i] = (a111[i] > 0.0)?
		    (float)(int)(a111[i]+0.5):(float)(int)(a111[i]-0.5);
		printf(" a111[%ld]= %g a222[%ld]= %g \n",i,a111[i],i,a222[i]);
		printf(" m[%ld]= %d c2[%ld]= %g \n",i,m[i],i,c1[i]);
		printf(" c11[%ld]= %g c111[%ld]= %g \n",i,c11[i],i,c111[i]);
	}
	exit (0);
}
