#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define I10(i) i10[i-1]
#define I11(i) i11[i-1]
#define I12(i) i12[i-1]
#define R10(i) r10[i-1]
#define R11(i) r11[i-1]
#define D10(i) d10[i-1]
#define D11(i) d11[i-1]
#define C10(i) c10[i-1]
long int i10[10]={
	1,2,1,4,0,1,2,1,1,1};
long int i11[10]={
	0,0,0,0,0,0,0,0,0,0};
long int i12[10]={
	1,2,3,-4,5,-6,4,3,2,1};
float    r10[10]={
	1.,2.,3.,4.,5.,4.,3.,-5.,2.,10.};
float    r11[10]={
	12.,23.,24.,35.,46.,57.,78.,78.,99.,100.};
double   d10[10]={
	1.,2.,3.,4.,5.,4.,3.,-5.,1.,2.};
double   d11[10]={
	0.,0.,0.,0.,0.,0.,0.,0.,0.,0.};
COMPLEX8 c10[10]={
	{
		1.,1.	},
	{
		1.,1.	},
	{
		1.,1.	},
	{
		1.,0.	},
	{
		1.,0.	},
	{
		0.,1.	},
	{
		0.,1.	},
	{
		0.,0.	},
	{
		0.,0.	},
	{
		0.,0.	}
};
int main()
{
	long int I,J,K,i;
	long int N10=10;
	long int I10S=0,I11S=0,I12S=1;
	float D10S=0.,R10S=0.,R11S=0.;
	COMPLEX8 C10S={
		0.,0.	};
	printf(" *****  *****\n");
	for(I=1;I<=N10;I++)
	{
		if (I10(I) == 1) goto LBL_101;
		if (I10(I) == 2) goto LBL_102;
		if (I10(I) == 3) goto LBL_100;
LBL_101:
		;
		for(J=1;J<=N10;J++)
		{
			I10S=I10S+I11(I);
			if ( D10S  >   D10(J) )
			{
				D10S=D10(J);
				I11S=J;
			}
			else
			{
				C10S.real=C10S.real-C10(J).real;
				C10S.imag=C10S.imag-C10(J).imag;
			}
			R10S=(R10S > R10(I)) ? R10S:R10(I);
			for(K=1;K<=N10;K++)
			{
				I12S=I12S+I12(K);
				R11S=I12S+R11S;
				D11(K)=R11S;
				I11(I)=I10(I)*8;
				D10(I)=I11(I)-I;
				R10(I)=R11(I)/2.+R11(I)*4.;
			}
		}
LBL_102:
		;
		printf("  SECONDARY LOOP BYPASS  I =  %d \n",I);
LBL_100:
		;
	}
	printf("  I10S = %d ",I10S);
	printf("  D10S = %g  I11S = %d ",D10S,I11S);
	printf("  C10S = (%g,%g) ",C10S.real,C10S.imag);
	printf("  R10S = %g \n",R10S);
	printf("  I12S =  %d ",I12S);
	printf("  R11S =  %g \n",R11S);
	for(i=1;i<=10;i++){
		printf("  D11  =  %g ",D11(i));
		printf("  I11  =  %d ",I11(i));
		printf("  D10  =  %g ",D10(i));
		printf("  R10  =  %g ",R10(i));
		printf("  D11  =  %g \n",D11(i));
	}
	exit (0);
}
