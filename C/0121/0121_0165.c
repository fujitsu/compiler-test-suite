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
	long int IDX1=L1;
	long int IDX2=L2;
	long int IDX3=L3;
	long int I,J,K;
	float S,ASUM,SSS;
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
	printf(" #####  #####\n");
	printf(" ----- TEST NO.1 ----- BUSY-ON-EXIT IN LSB      \n");
	printf("                       VOLUME ( SOON ? )        \n");
	for(I=1;I<=L1;I++)
	{
		RA1(I)=RB1(I)+RC1(I);
		for(J=1;J<=L2;J++)
		{
			RA2(I,J)=RB2(I,J)+RC2(I,J);
LBL_100:
			;
		}
		S=RA1(I);
LBL_110:
		;
	}
	printf(" S = %g\n",S);
	printf("\n");
	printf(" ----- TEST NO.2 ----- TRIPPLY NESTED         \n");
	printf("       THE OUTERMOST IS ELIMINATED            \n");
	for(I=1;I<=L1;I++)
	{
		QA2(I,3)=QB2(I,3);
		for(J=1;J<=L2;J++)
		{
			for(K=1;K<=L3;K++)
			{
				RA3(I,J,K)=RB3(I,J,K)+RC3(I,J,K);
LBL_200:
				;
			}
			RA1(J)=RB1(J)+RC1(J);
			S=RA1(J);
LBL_210:
			;
		}
LBL_220:
		;
	}
	printf(" S = %g\n",S);
	printf("\n");
	printf(" ----- TEST NO.3 ----- TRIPPLY NESTED         \n");
	printf("            BUSY-ON-ENTRANCE AND EXIT         \n");
	ASUM=0.0;
	for(I=1;I<=L1;I++)
	{
		ASUM=ASUM+RB1(I);
		for(J=1;J<=L2;J++)
		{
			for(K=1;K<=L3;K++)
			{
				RA3(I,J,K)=RB3(I,J,K)+RC3(I,J,K);
LBL_300:
				;
			}
			RA1(J)=RB1(J)+RC1(J);
			S=RA1(J);
LBL_310:
			;
		}
LBL_320:
		;
	}
	printf(" S = %g\n",S);
	printf(" ASUM = %g\n",ASUM);
	printf("\n");
	printf(" ----- TEST NO.4 ----- TRIPPLY NESTED         \n");
	printf("            SHOULD VECTORIZE BY J             \n");
	S=3.0;
	ASUM=3.0;
	for(I=1;I<=L1;I++)
	{
		ASUM=ASUM+RB1(I);
		for(J=1;J<=L2;J++)
		{
			for(K=2;K<=L3;K++)
			{
				RA3(I,J,K)=RA3(I,J,K-1);
LBL_400:
				;
			}
			if (RC1(J) >  0)
			{
				RA1(J)=RB1(J)+RC1(J);
				S=RA1(J);
			}
LBL_410:
			;
		}
LBL_420:
		;
	}
	printf(" S = %g ",S);
	printf(" ASUM = %g ",ASUM);
	printf(" ----- TEST NO.5 ----- TRIPPLY NESTED         \n");
	printf("            SHOULD VECTORIZE BY J             \n");
	printf("            SIMPLER FORM OF TEST NO.4         \n");
	SSS=0.0;
	for(I=1;I<=L1;I++)
	{
		for(J=1;J<=L2;J++)
		{
			for(K=2;K<=L3;K++)
			{
				RA3(I,J,K)=RA3(I,J,K-1);
LBL_500:
				;
			}
			if (RC1(J) > 0)
			{
				SSS=RC1(J);
			}
LBL_510:
			;
		}
LBL_520:
		;
	}
	printf(" SSS = %g\n",SSS);
	exit (0);
}
