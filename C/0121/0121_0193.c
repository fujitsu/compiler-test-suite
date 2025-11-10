#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define I10(i) i10[i-1]
#define I11(i) i11[i-1]
#define I12(i) i12[i-1]
#define I13(i) i13[i-1]
#define I14(i) i14[i-1]
#define I15(i) i15[i-1]
#define I16(i) i16[i-1]
#define C10(i) c10[i-1]
#define C11(i) c11[i-1]
#define L10(i) l10[i-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
#define L14(i) l14[i-1]
#define L13(i) l13[i-1]
#define L15(i) l15[i-1]
#define L16(i) l16[i-1]
#define D20(i) d20[i-1]
#define R30(i) r30[i-1]
#define R31(i) r31[i-1]
#define R32(i) r32[i-1]
#define R33(i) r33[i-1]
#define R34(i) r34[i-1]
#define R35(i) r35[i-1]
#define R36(i) r36[i-1]
#define R37(i) r37[i-1]
#define R38(i) r38[i-1]
long int i10[10]={
	1,2,3,4,5,6,7,8,9,10};
long int i11[10]={
	1,1,3,3,5,5,7,7,9,9};
long int i12[10]={
	1,2,1,2,1,6,0,6,0,10};
long int i13[10]={
	1,0,3,5,5,0,0,7,8,7};
long int i14[10]={
	0,0,4,4,2,2,3,3,4,4};
long int i15[10]={
	2,0,4,1,2,3,4,5,6,7},
i16[10];
COMPLEX8 c10[10],c11[10];
unsigned long int l10[10],l11[10];
unsigned long int l12[10],l14[10];
unsigned long int l13[10]={
	1,0,1,0,1,0,1,0,1,0};
unsigned long int l15[10],l16[10];
double d20[10]={
	1,2,3,4,5,6,5,4,3,2};
float r30[10]={
	0,1,2,3,4,5,6,7,8,9};
float r31[10]={
	1,0,1,2,3,4,5,6,7,10},
r32[10];
float r33[10]={
	3,3,2,1,3,2,1,3,2,3};
float r34[10],r35[10];
float r36[10]={
	1,2,3,4,5,6,7,8,9,10};
float r37[10]={
	1,2,4,3,5,2,1,7,9,10},
r38[10];
int main()
{
	long int N=10;
	long int I10V=0;
	double D20V=2.;
	long int I20V=4.9;
	float R30V=3.;
	long int L=8;
	long int I,i;
	for(i=0;i< 10;i++){
		i16[i]=0;
		c10[i].real=0.00;
		c10[i].imag=0.00;
		c11[i].real=1.0;
		c11[i].imag=1.0;
		l10[i]=0;
		l11[i]=1;
		l12[i]=0;
		l14[i]=1;
		l15[i]=0;
		l16[i]=0;
		r32[i]=2.0;
		r34[i]=1.5;
		r35[i]=1.5;
		r38[i]=0.;
	}
	printf(" *****  ***** ENTRY & EXIT MASK\n");
	printf(" ----- LOOP 1 -----\n");
	for(I=1;I<=N;I++)
	{
		if ( I10(I)  ==  I11(I) ) goto LBL_11         ;
		if ( I10(I)  !=  I12(I) ) goto LBL_12         ;
		goto LBL_13;
LBL_11:
		;
		if ( I10(I)  ==  I13(I) ) goto LBL_13         ;
LBL_12:
		;
		if ( I10(L)  !=  I14(L) ) goto LBL_14         ;
		goto LBL_10;
LBL_13:
		;
		if ( I10(I)  ==  I15(I) ) goto LBL_10         ;
LBL_14:
		;
		C10(I).real=1.0+C11(I).real;
		C10(I).imag=2.0+C11(I).imag;
		I16(I)=I;
		I10V=I10V+I16(I);
LBL_10:
		;
	}
	for(i=1;i<=10;i++){
		printf(" (%g,%g) \n",C10(i).real,C10(i).imag);
	}
	printf(" \n");
	for(i=1;i<=10;i++){
		printf(" %ld ",I16(i));
	}
	printf(" \n");
	printf(" I10V= %ld \n",I10V);
	printf(" \n");
	printf(" ----- LOOP 2 -----\n");
	for(I=1;I<=N;I++)
	{
		if ( L10(L) ==1)goto LBL_21         ;
		if ( L11(L) ==1)goto LBL_22         ;
		goto LBL_23;
LBL_21:
		;
		if ( L12(L) ==1)goto LBL_23         ;
LBL_22:
		;
		if ( L13(I) ==1)goto LBL_24         ;
		goto LBL_20;
LBL_23:
		;
		if ( L14(L) ==1)goto LBL_20         ;
LBL_24:
		;
		L15(I)=!L16(I);
		D20V=D20V+D20(I);
		I20V=(I20V>5) ? I20V:5;
LBL_20:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %lu ",L15(i));
	}
	printf(" \n");
	printf(" D20V= %g \n",D20V);
	printf(" I20V= %ld \n",I20V);
	printf(" ----- LOOP 3 -----\n");
	for(I=1;I<=N;I++)
	{
		if ( R30(I)  >=  R31(I) )
		{
			if ( (R31(L) -  5.0) < 1.0) goto LBL_30;
			if ( (R31(L) -  5.0) == 1.0)goto LBL_31;
			goto LBL_32;
LBL_31:
			;
			if ( R32(L)  >=  1.0 )goto LBL_33         ;
			goto LBL_34;
LBL_32:
			;
			if ( 2.0  <=  R33(I) )goto LBL_34         ;
LBL_33:
			;
			if ( R34(I)  ==  R35(I) )goto LBL_35         ;
			goto LBL_30;
LBL_34:
			;
			if ( R36(L)  !=  R37(L) )goto LBL_30         ;
LBL_35:
			;
			R38(I)=I;
			R30V=R30V+R38(I);
		}
LBL_30:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",R38(i));
	}
	printf(" \n");
	printf(" R30V= %g \n",R30V);
	exit (0);
}
