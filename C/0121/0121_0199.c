#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L10(i) l10[i-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
#define L13(i) l13[i-1]
#define I10(i) i10[i-1]
#define D20(i) d20[i-1]
#define I12(i) i12[i-1]
#define R10(i) r10[i-1]
#define R11(i) r11[i-1]
#define R12(i) r12[i-1]
#define D10(i) d10[i-1]
#define C10(i) c10[i-1]
#define C11(i) c11[i-1]
#define C12(i) c12[i-1]
#define C13(i) c13[i-1]
#define C14(i) c14[i-1]
unsigned long int l12[10];
long int i10[10] ;
float r10[10],r11[10],r12[10],R10V;
double d10[10],d20[10] ;
unsigned long int l10[10]={
	0,0,0,0,0,0,1,0,0,0};
unsigned long int l11[10]={
	0,1,0,1,0,1,0,1,0,1};
unsigned long int l13[10]={
	0,0,1,1,0,0,1,1,0,0};
long int i12[10]={
	1,4,9,9,4,1,1,4,9,4};
COMPLEX8 c10[10],c11[10],c12[10],c13[10],c14[10];
long int I;
long int N=10;
long int L=5;
long int M=7;
long int IV10=7;
double DV10=0.0;
long int LV10=1;
float R11V=0.0;
long int J=5;
int main()
{
	for (I=1;I<=10;I++)
	{
		L12(I)=0;
		I10(I)=I;
		D20(I)=0;
		R10(I)=8.0;
		R11(I)=6.0;
		R12(I)=I;
		D10(I)=0.0;
		C10(I).real=1.0;
		C10(I).imag=1.0;
		C11(I).real=(float)(I);
		C11(I).imag=(float)(I);
		C12(I).real=(float)(I*2-1);
		C12(I).imag=(float)(I*2-1);
		C12(I).real=(float)(I*2-1);
		C12(I).imag=(float)(I*2-1);
		C13(I).real=2.0;
		C13(I).imag=2.0;
		C14(I).real=1.0;
		C14(I).imag=2.0;
	}
	for ( I=1 ; I<=N ; I++ )
	{
		if ( !L10(M) == 1 )
		{
			goto LBL_12;
		}
		if ( I10(M) <= IV10 )
		{
			goto LBL_12;
		}
		goto LBL_10;
LBL_11:
		;
		if ( R10(M) > R11(L) )
		{
			goto LBL_12;
		}
		goto LBL_15;
LBL_12:
		;
		C10(I).real=(float)(I);
		C10(I).imag=0.0;
		DV10=DV10+(double)(C10(I).real);
		if ( L11(I) == 1 )
		{
			goto LBL_13;
		}
		D20(I)=pow((double)(sqrt((float)(I12(I)))),(double)I);
		if ((C11(I).real == C12(I).real) &&
		    (C11(I).imag == C12(I).imag))
		{
			goto LBL_14;
		}
		goto LBL_10;
LBL_13:
		;
		if ( ! L13(I) && LV10 )
		{
			L12(I)=1;
		}
		else
		{
			L12(I)=0;
		}
		C13(I).real=( C13(I).real * C10(I).real
		    +C13(I).imag * C10(I).imag)
		    /(C10(I).real * C10(I).real
		    +C10(I).imag * C10(I).imag);
		C13(I).imag=( C13(I).imag * C10(I).real
		    -C13(I).real * C10(I).real)
		    /(C10(I).real * C10(I).real
		    +C10(I).imag * C10(I).imag);
		if ((C14(L).real != 1.0)&&
		    (C14(L).imag != 1.0))
		{
			goto LBL_14;
		}
		goto LBL_10;
LBL_14:
		;
		R10V=(float)(I);
		R11V=R11V+(R12(I)+R10V);
LBL_15:
		;
		D10(J)=D10(J)+(double)(I);
LBL_10:
		;
	}
	for(I=1;I<=10;I++)
	{
		printf(" C10  = (%g,%g)  ",C10(I).real,C10(I).imag);
	}
	printf(" \n");
	printf(" DV10 = %g ",DV10);
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" D20  =  %g ",D20(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" L12  =  %ld ",L12(I));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" C13  = (%g,%g) ",C13(I).real,C13(I).imag);
	}
	printf(" \n");
	printf(" R11V =  %g ",R11V);
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		printf(" D10  =  %g ",D10(I));
	}
	printf(" \n");
	exit (0);
}
