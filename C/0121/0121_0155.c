#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L10(i,j) l10[i-1][j-1]
#define L11(i,j,k) l11[i-1][j-1][k-1]
#define L12(i) l12[i-1]
#define I10(i,j) i10[i-1][j-1]
#define I11(i,j,k) i11[i-1][j-1][k-1]
#define I12(i) i12[i-1]
#define R10(i,j) r10[i-1][j-1]
#define R11(i,j,k) r11[i-1][j-1][k-1]
#define R12(i) r12[i-1]
#define R13(i) r13[i-1]
#define D10(i,j) d10[i-1][j-1]
#define D11(i,j,k) d11[i-1][j-1][k-1]
#define D12(i) d12[i-1]
#define C10(i,j) c10[i-1][j-1]
#define C11(i,j,k) c11[i-1][j-1][k-1]
#define C12(i) c12[i-1]
#define CD10(i,j) cd10[i-1][j-1]
#define CD11(i,j,k) cd11[i-1][j-1][k-1]
#define CD12(i) cd12[i-1]
unsigned long int l10[100][5],l11[10][5][5],l12[10];
long int i10[100][5],i11[10][5][5],i12[10];
float r10[100][5],r11[10][5][5],r12[10],r13[100];
double d10[100][5],d11[10][5][5],d12[10];
COMPLEX c10[100][5],c11[10][5][5],c12[10];
COMPLEX16 cd10[100][5],cd11[10][5][5],cd12[10];
int main()
{
	long int NCWNR=8;
	long int CWNR=8;
	long int LS10,IS10,LS11,IS11,I,J,K,L,I1,CTR;
	float RS10,DS10,CS10,CDS10,RS11,DS11,CS11,CDS11,RS12;
	printf(" *****  *****\n");
	printf(" ----- TEST NO.1 ----- UPPER SAB    \n");
	for(I=1;I<=100;I++)
	{
		LS10=0==I%2;
		IS10=I;
		RS10=(float)(I);
		DS10=(double)(RS10);
		CS10=DS10;
		CDS10=CS10;
		for(K=1;K<=5;K++)
		{
			L10(I,K)=LS10;
			I10(I,K)=IS10;
			R10(I,K)=RS10;
			D10(I,K)=DS10;
			C10(I,K).real=CS10;
			C10(I,K).imag=(float)(0);
			CD10(I,K).dreal=CDS10+(double)(I10(I,K))+
			    R10(I,K)+D10(I,K)+C10(I,K).real;
			CD10(I,K).dimag=C10(I,K).imag;
LBL_10:
			;
		}
	}
	printf(" I = %ld,  K = %ld\n",I,K);
	printf(" IS10 = %ld,  RS10 = %g,  DS10 = %g\n",IS10,RS10,DS10);
	printf(" CS10 = %g,  CDS10 = %g,  LS10 = %ld\n",CS10,CDS10,LS10);
	printf(" L10 = ");
	for(I1=1;I1<=50;I1++)
	{
		printf(" %lu",L10(I1,5));
		if (I1%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf(" CD10 = ");
	for(I1=1;I1<=50;I1++)
	{
		printf(" (%g,%g) ",CD10(I1,5).dreal,CD10(I1,5).dimag);
		if (I1%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf(" ----- TEST NO.2 ----- UPPER/LOWER SAB\n");
	for(I=1;I<=10;I++)
	{
		LS10=0==I%2;
		IS10=I;
		RS10=(float)(I);
		DS10=(double)(RS10);
		CS10=DS10;
		CDS10=CS10;
		for(K=1;K<=5;K++)
		{
			LS11=!(LS10);
			IS11=-IS10;
			RS11=-RS10;
			DS11=-DS10;
			CS11=-CS10;
			CDS11=CS11-DS11+RS11*(float)(IS11);
			CD10(I,K).dreal=CDS11;
			CD10(I,K).dimag=(double)(0);
			for(J=1;J<=5;J++)
			{
				I11(I,J,K)=IS10+IS11;
				R11(I,J,K)=RS10+RS11;
				D11(I,J,K)=DS10+DS11;
				C11(I,J,K).real=CS10+CS11;
				C11(I,J,K).imag=(float)(0);
				CD11(I,J,K).dreal= CDS10+CDS11+C11(I,J,K).real+D11(I,J,K)
				    +R11(I,J,K)+(double)(I11(I,J,K));
				CD11(I,J,K).dimag= C11(I,J,K).imag;
				L11(I,J,K)=LS10 || LS11;
LBL_22:
				;
			}
			L10(I,K)=LS11;
			I10(I,K)=IS11;
			R10(I,K)=RS11;
			D10(I,K)=DS11;
			C10(I,K).real=CS11;
			C10(I,K).imag=(float)(0);
			CD10(I,K).dreal=CDS11*C10(I,K).real+R10(I,K)+(double)(IS11);
			CD10(I,K).dimag=CDS11*C10(I,K).imag;
LBL_21:
			;
		}
		L12(I)=LS10;
		I12(I)=IS10;
		R12(I)=RS10;
		D12(I)=DS10;
		C12(I).real=CS10+CDS10+DS10*RS10-(float)(IS10);
		C12(I).imag=(float)(0);
		CD12(I).dreal=CDS10;
		CD12(I).dimag=(float)(0);
LBL_20:
		;
	}
	printf(" I = %ld,  K = %ld,  J = %ld\n",I,K,J);
	printf(" IS10 = %ld,  RS10 = %g,  DS10 = %g\n",IS10,RS10,DS10);
	printf(" CS10 = %g,  CDS10 = %g,  LS10 = %ld\n",CS10,CDS10,LS10);
	printf(" IS11 = %ld,  RS11 = %g,  DS11 = %g\n",IS11,RS11,DS11);
	printf(" CS11 = %g,  CDS11 = %g,  LS11 = %ld\n",CS11,CDS11,LS11);
	printf(" L11 = ");
	for(I1=1;I1<=10;I1++)
	{
		printf(" %lu",L11(I1,5,2));
		if (I1%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	CTR=0;
	printf("\n");
	printf(" CD11 = ");
	for(I1=1;I1<=5;I1++)
	{
		printf(" (%g,%g)",CD11(5,I1,3).dreal,CD11(5,I1,3).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf(" L10 = ");
	for(I1=1;I1<=10;I1++)
	{
		printf(" %lu",L10(I1,5));
		if (I1%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	CTR=0;
	printf("\n");
	printf(" CD10 = ");
	for(I1=1;I1<=5;I1++)
	{
		printf(" (%g,%g)",CD10(I1,5).dreal,CD10(I1,5).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf(" L12 = ");
	for(I1=1;I1<=10;I1++)
	{
		printf(" %lu",L12(I1));
		if (I1%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	printf(" C12 = ");
	for(I1=1;I1<=10;I1++)
	{
		printf(" (%g,%g)",C12(I1).real,C12(I1).imag);
		if (I1%CWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	printf(" ----- TEST NO.3 ----- UPPER/LOWER SAB \n");
	for(I=1;I<=10;I++)
	{
		RS10=R12(I);
		for(J=1;J<=10;J++)
		{
			RS11=RS10;
			for(K=1;K<=10;K++)
			{
				RS12=RS11;
				for(L=1;L<=5;L++)
				{
					R10(I,L)=RS11;
LBL_33:
					;
				}
LBL_32:
				;
			}
LBL_31:
			;
		}
LBL_30:
		;
	}
	printf("\n");
	printf(" R10 = ");
	for(I=1;I<=10;I++)
	{
		printf(" %g",R10(I,3));
		if (I1%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}

	printf("\n");
	exit (0);
}
