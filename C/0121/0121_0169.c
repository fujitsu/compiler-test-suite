#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L1 10
#define L2 10
#define L3 10
#define IA1(i) ia1[i-1]
#define IB1(i) ib1[i-1]
#define IC1(i) ic1[i-1]
#define IA2(i,j) ia2[i-1][j-1]
#define IB2(i,j) ib2[i-1][j-1]
#define IC2(i,j) ic2[i-1][j-1]
#define RA1(i) ra1[i-1]
#define RB1(i) rb1[i-1]
#define RC1(i) rc1[i-1]
#define RA2(i,j) ra2[i-1][j-1]
#define RB2(i,j) rb2[i-1][j-1]
#define RC2(i,j) rc2[i-1][j-1]
#define RA3(i,j,k) ra3[i-1][j-1][k-1]
#define RB3(i,j,k) rb3[i-1][j-1][k-1]
#define RC3(i,j,k) rc3[i-1][j-1][k-1]
#define DA1(i) da1[i-1]
#define DB1(i) db1[i-1]
#define DC1(i) dc1[i-1]
#define DP1(i) dp1[i-1]
#define DM1(i) dm1[i-1]
#define DA2(i,j) da2[i-1][j-1]
#define DB2(i,j) db2[i-1][j-1]
#define DC2(i,j) dc2[i-1][j-1]
#define DA3(i,j,k) da3[i-1][j-1][k-1]
#define DB3(i,j,k) db3[i-1][j-1][k-1]
#define DC3(i,j,k) dc3[i-1][j-1][k-1]
#define QA2(i,j) qa2[i-1][j-1]
#define QB2(i,j) qb2[i-1][j-1]
#define QC2(i,j) qc2[i-1][j-1]
#define CA1(i) ca1[i-1]
#define CB1(i) cb1[i-1]
#define CC1(i) cc1[i-1]
#define CA2(i,j) ca2[i-1][j-1]
#define CB2(i,j) cb2[i-1][j-1]
#define CC2(i,j) cc2[i-1][j-1]
#define CA3(i,j,k) ca3[i-1][j-1][k-1]
#define CB3(i,j,k) cb3[i-1][j-1][k-1]
#define CC3(i,j,k) cc3[i-1][j-1][k-1]
#define LA3(i,j,k) la3[i-1][j-1][k-1]
#define LB3(i,j,k) lb3[i-1][j-1][k-1]
#define LC3(i,j,k) lc3[i-1][j-1][k-1]
long int ia1[L1],ib1[L1],ic1[L1];
long int ia2[L1][L2],ib2[L1][L2],ic2[L1][L2];
float ra1[L1],rb1[L1],rc1[L1];
float ra2[L1][L2],rb2[L1][L2],rc2[L1][L2];
float ra3[L1][L2][L3],rb3[L1][L2][L3],rc3[L1][L2][L3];
double da1[L1],db1[L1],dc1[L1],dp1[L1],dm1[L1];
double da2[L1][L2],db2[L1][L2],dc2[L1][L2];
double da3[L1][L2][L3],db3[L1][L2][L3],dc3[L1][L2][L3];
long double qa2[L1][L2],qb2[L1][L2],qc2[L1][L2];
COMPLEX ca1[L1],cb1[L1],cc1[L1];
COMPLEX ca2[L1][L2],cb2[L1][L2],cc2[L1][L2];
COMPLEX ca3[L1][L2][L3],cb3[L1][L2][L3],cc3[L1][L2][L3];
unsigned long int la3[L1][L2][L3],lb3[L1][L2][L3],lc3[L1][L2][L3];
int main()
{
	long int NCWNR=8,CWNR=7;
	long int I,J,K,CTR;
	float S,AVR,VALB;
	for(I=1;I<=L1;I++)
	{
		IA1(I)=I;
		IB1(I)=I+2;
		IC1(I)=I+3;
		RA1(I)=(float)(I+2);
		RB1(I)=(float)(I+3);
		RC1(I)=(float)(I+4);
		DA1(I)=(double)(2*I);
		DB1(I)=(double)(3*I-2);
		DC1(I)=(double)(2*I+3);
		DP1(I)=(double)(3*I);
		DM1(I)=(double)(2*I);
		CA1(I).real=(float)(I);
		CA1(I).imag=(float)(I);
		CB1(I).real=(float)(I+5);
		CB1(I).imag=(float)(I);
		CC1(I).real=(float)(2*I);
		CC1(I).imag=(float)(3*I);
		for(J=1;J<=L2;J++)
		{
			IA2(I,J)=I*J;
			IB2(I,J)=I-J;
			IC2(I,J)=I+J;
			RA2(I,J)=(float)(I*J+5);
			RB2(I,J)=(float)(I-J-5);
			RC2(I,J)=(float)(I+J*3);
			DA2(I,J)=(double)(I*J-2);
			DB2(I,J)=(double)(I-J-3);
			DC2(I,J)=(double)(I+J-4);
			QA2(I,J)=(long double)(I*J-5);
			QB2(I,J)=(long double)(I-J-6);
			QC2(I,J)=(long double)(I+J-7);
			CA2(I,J).real=(float)(I+2);
			CA2(I,J).imag=(float)(J*3);
			CB2(I,J).real=(float)(I-2);
			CB2(I,J).imag=(float)(J+3);
			CC2(I,J).real=(float)(I*2);
			CC2(I,J).imag=(float)(J-3);
			for(K=1;K<=L3;K++)
			{
				RA3(I,J,K)=(float)(I+J+K);
				RB3(I,J,K)=(float)(I-J+K);
				RC3(I,J,K)=(float)(I+J-K);
				DA3(I,J,K)=(double)(I+J-K);
				DB3(I,J,K)=(double)(I*J+K);
				DC3(I,J,K)=(double)(I+J*K);
				CA3(I,J,K).real=(float)(I+J+K);
				CA3(I,J,K).imag=(float)(I+J*K);
				CB3(I,J,K).real=(float)(I-J+K);
				CB3(I,J,K).imag=(float)(I+J+K);
				CC3(I,J,K).real=(float)(I+J+K);
				CC3(I,J,K).imag=(float)(I-J+K);
				LA3(I,J,K)=(I+J)>(I+K);
				LB3(I,J,K)=(I-J)>(I+K);
				LC3(I,J,K)=(I*J)>(I+K);
LBL_10:
				;
			}
		}
	}
	printf(" *****  *****\n");
	printf(" ----- TEST NO.1 ----- SIMPLE VAR 1ST->2ND      \n");
	printf("      DOP STARTING FROM INBETWEEN POINT         \n");
	for(I=2;I<=L1-1;I++)
	{
		S=RA1(I);
		RA1(I)=(RB1(I)+RC1(I))/2.0;
		for(J=2;J<=L2-3;J++)
		{
			if (RA1(I) < S)
			{
				CA2(I,J).real=CB2(I,J).real*RA1(I);
				CA2(I,J).imag=CB2(I,J).imag*RA1(I);
			}
			else
			{
				CA2(I,J).real=CB2(I,J).real*S;
				CA2(I,J).imag=CB2(I,J).imag*S;
			}
LBL_130:
			;
		}
LBL_120:
		;
	}
	CTR=0;
	printf("  CA2 =");
	for(I=1;I<=L1;I++){
		for(J=1;J<=L2;J++){
			printf(" (%g,%g)",CA2(I,J).real,CA2(I,J).imag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	printf("\n");
	printf(" ----- TEST NO.2 ----- SIMPLE VAR 1ST->2ND      \n");
	printf("                     DOP MOVING BACKWARDS       \n");
	for(I=L1;I>=1;I=I-2)
	{
		AVR=(RB1(I)+RC1(I))/2.0;
		VALB=RB1(I);
		for(J=L2;J>=2;J=J-1)
		{
			for(K=L3;K>=2;K=K-1)
			{
				CA3(I,J,K).real=  CB3(I,J,K).real*CC3(I,J,K).real
				    - CB3(I,J,K).imag*CC3(I,J,K).imag + AVR;
				CA3(I,J,K).imag=  CB3(I,J,K).real*CC3(I,J,K).imag
				    + CB3(I,J,K).imag*CC3(I,J,K).real;
				if (cos(AVR) >= sin(VALB))
				{
					RA3(I,J,K)=RA3(I,J,K)*RB3(I,J,K);
				}
				else
				{
					RA3(I,J,K)=RA3(I,J,K)+RC3(I,J,K);
				}
				DA3(I,J,K)=DA3(I,J,K)/DB3(I,J,K);
LBL_80:
				;
			}
			if (AVR >  RB2(I,J))
			{
				RA2(I,J)=sin(AVR);
			}
			else
			{
				RA2(I,J)=cos(RA2(I,J));
			}
LBL_90:
			;
		}
		RC1(I)=pow(RC1(I),2);
LBL_100:
		;
	}
	CTR=0;
	printf("  RA3 =");
	for(I=1;I<=L1;I++){
		for(J=1;J<=L2;J++){
			for(K=1;K<=L3;K++){
				printf(" %g",RA3(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	printf("\n");
	CTR=0;
	printf("  CA3 =");
	for(I=1;I<=L1;I++){
		for(J=1;J<=L2;J++){
			for(K=1;K<=L3;K++){
				printf(" (%g,%g)",CA3(I,J,K).real,CA3(I,J,K).imag);
				CTR++;
				if (CTR%CWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}

	printf("\n");
	exit(0);
}
