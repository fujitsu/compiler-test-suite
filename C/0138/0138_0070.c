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
	float a11[10],b11[10],c11[10];
	double a2[10],b2[10],c2[10];
	double a22[10],b22[10],c22[10];
	complex8 a3[10],b3[10];
	complex16 a4[10],b4[10];
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
		b11[i]=2.0;
	}
	for(i=0;i<10;i++)
	{
		c11[i]=0.3;
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
		b22[i]=2.0;
	}
	for(i=0;i<10;i++)
	{
		c22[i]=0.3;
	}
	for(i=0;i<10;i++)
	{
		b3[i].real=2.0;
		b3[i].imag=2.0;
	}
	for(i=0;i<10;i++)
	{
		b4[i].dreal=32.0;
		b4[i].dimag=0.8;
	}
	for(i=0;i<10;i++)
	{
		c1[i]=2.0;
		a1[i]=sin(b1[i]);
		m[i]=i+1;
LBL_10:
		;
	}
	for(i=0;i<10;i++)
	{
		a2[i]=sin(b2[i]);
		m[i]=m[i]+i+1;
LBL_20:
		;
	}
	for(i=0;i<10;i++)
	{
		c11[i]=2.0;
		a11[i]=cos(b11[i]);
		m[i]=i+1+m[i];
LBL_30:
		;
	}
	for(i=0;i<10;i++)
	{
		a22[i]=cos(b22[i]);
		m[i]=m[i]+i+1;
LBL_40:
		;
	}
	printf(" *****  ****\n");
	for(i=01;i<10;i++)
	{
		printf(" a1[%ld]= %f  a2[%ld]= %f ",i,a1[i],i,a2[i]);
		printf(" a11[%ld]= %f  a22[%ld]= %f \n",i,a11[i],i,a22[i]);
		printf(" c1[%ld]= %f  c11[%ld]= %f ",i,c1[i],i,c11[i]);
		printf(" m[%ld]= %ld \n",i,m[i]);
	}
	exit (0);
}
 
