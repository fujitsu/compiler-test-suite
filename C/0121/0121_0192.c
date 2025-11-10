#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L10(i) l10[i-1]
#define I10(i) i10[i-1]
#define R10(i) r10[i-1]
#define D10(i) d10[i-1]
#define C10(i) c10[i-1]
#define I20(i) i20[i-1]
#define I21(i) i21[i-1]
#define R20(i) r20[i-1]
#define R21(i) r21[i-1]
#define L20(i) l20[i-1]
#define D20(i) d20[i-1]
#define C20(i) c20[i-1]
unsigned long int l10[10]={ 
	1,1,0,0,0,1,1,0,0,0};
long int i10[10]={
	0,0,0,0,0,0,0,0,0,0};
float r10[10]={
	0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};
double d10[10]={
	0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};
long int i20[10]={
	0,0,0,0,0,0,0,0,0,0};
long int i21[10]={
	1,2,3,4,5,1,2,3,4,3};
float r20[10]={
	-1.0,0.0,1.0,2.0,-3.0,-4.0,0.0,0.0,1.0,3.0};
float r21[10]={
	0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};
unsigned long int l20[11]={
	1,1,0,0,0,0,1,0,1,1,1};
double d20[10]={
	0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};
COMPLEX8 c10[10]={
	0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};
COMPLEX8 c20[10]={
	0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};
int main()
{
	long int N=10;
	long int M=10;
	long int L=6;
	long int I,J;
	for (I=1 ; I<=10 ; I++ )
	{
		C10(I).real=0.0;
		C10(I).imag=0.0;
	}
	for (I=1 ; I<=10 ; I++ )
	{
		C20(I).real=0.0;
		C20(I).imag=0.0;
	}
	printf(" *****  ***** TEST OF IF STATEMENTS\n");
	printf("  ***** LOOP 1 *****\n");
	for(I=1;I<=N;I++)
	{
		if ( L10(I) == 1 )
		{
			I10(I)=I;
		}
		if ( L10(I) == 1 )
		{
			R10(I)=(float)(I);
		}
		else
		{
			R10(I)=(float)(-I);
		}
		if ( R10(I) < 0 )
		{
			D10(I)=(double)(I+I);
		}
		else
		{
			if ( R10(I) == 0 )
			{
				D10(I)=(double)(I*I);
			}
			else
			{
				D10(I)=(double)(2*I);
			}
		}
LBL_15:
		;
		if ( I10(I) != I )
		{
			goto LBL_10;
		}
		else
		{
			C10(I).real = (float)(I);
			C10(I).imag=0.0;
		}
LBL_10:
		;
	}
	for(I=1;I<=10;I++)
	{
		printf(" ( %ld , %g ) ",I10(I),R10(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" %g ",D10(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" ( %g , %g )",C10(I).real,C10(I).imag);
	}
	printf(" \n");
	printf("\n  ***** LOOP 2 *****\n");
	for(J=1;J<=M;J++)
	{
		if ( R20(L) < 0.0 )
		{
			I20(J)=-J;
		}
		else
		{
			if ( R20(L) == 0.0)
			{
				I20(J)=J;
			}
			else
			{
				I20(J)=0;
			}
		}
LBL_250:
		;
		if (L20(L+1) == 1)
		{
			D20(J)=(double)(J+J);
		}
		else
		{
			D20(J)=(double)(J*J);
		}
		if (L20(L) == 1)
		{
			R21(J)=(float)(3*J);
		}
		if (I21(L)>3)
		{
			goto LBL_200;
		}
		C20(J).real=(float)(J);
		C20(J).imag=0.0;
LBL_200:
		;
	}
	for(I=1;I<=10;I++)
	{
		printf(" %ld ",I20(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" %g ",D20(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" %g ",R21(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" ( %g , %g ) ",C20(I).real,C20(I).imag);
	}
	printf(" \n");
	exit (0);
}
