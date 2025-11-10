#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L1 3
#define L2 3
#define L3 3
#define IA1(i) ia1[i-1]
#define IB1(i) ib1[i-1]
#define IC1(i) ic1[i-1]
#define IA2(i,j) ia2[i-1][j-1]
#define IB2(i,j) ib2[i-1][j-1]
#define IC2(i,j) ic2[i-1][j-1]
#define RM1(i) rm1[i-1]
#define RM2(i) rm2[i-1]
#define RM3(i) rm3[i-1]
#define RM4(i) rm4[i-1]
#define RM5(i) rm5[i-1]
#define RM6(i) rm6[i-1]
#define RM7(i) rm7[i-1]
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
float rm1[L1],rm2[L1],rm3[L1];
float rm4[L1],rm5[L1],rm6[L1],rm7[L1];
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
	long int I,J,K,M1,M2,M3,M4,M5,M6,M7,M8,M9,M10;
	for(I=1;I<=L1;I++)
	{
		IA1(I)=I;
		IB1(I)=I+2;
		IC1(I)=I+3;
		RM1(I)=(float)(I+1);
		RM2(I)=(float)(I+2);
		RM3(I)=(float)(I+3);
		RM4(I)=(float)(I+4);
		RM5(I)=(float)(I+5);
		RM6(I)=(float)(I+6);
		RM7(I)=(float)(I+7);
		RA1(I)=(float)(I+2);
		RB1(I)=(float)(I+3);
		RC1(I)=(float)(I+4);
		DA1(I)=(double)(2*I);
		DB1(I)=(double)(3*I-2);
		DC1(I)=(double)(2*I+3);
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
				DA3(I,J,K)=(long double)(I+J-K);
				DB3(I,J,K)=(long double)(I*J+K);
				DC3(I,J,K)=(long double)(I+J*K);
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
	printf(" ----- TEST NO.1 ----- INNERMOST => VOLUME      \n");
	for(M1=1;M1<=L1;M1++)
	{
		RM1(M1)=(float)(M1*2);
		for(M2=1;M2<=L1;M2++)
		{
			for(M3=1;M3<=L1;M3++)
			{
				RM3(M3)=(float)(M3*M3);
				for(M4=1;M4<=L1;M4++)
				{
					RM4(M4)=(float)(M4);
					for(M5=1;M5<=L1;M5++)
					{
						for(M6=1;M6<=L1;M6++)
						{
							RM6(M6)=(float)(M6)-1.0;
							for(M7=1;M7<=L1;M7++)
							{
								for(M8=1;M8<=L1;M8++)
								{

	RB1(M8)=0.9*RC1(M8);
	DP1(M8)=0.0;
	DM1(M8)=0.0;
	for(M9=1;M9<=L2;M9++)
	{
		if (DA2(M8,M9) >  0.0)
		{
			DP1(M8)=DP1(M8)+DA2(M8,M9);
		}
		else
		{
			if (DA2(M8,M9) <  0.0)
			{
				DM1(M8)=DM1(M8)+DA2(M8,M9);
			}
		}
		RA2(M8,M9)=DB2(M8,M9)*DC2(M8,M9);
		CA2(M8,M9).real=CB2(M8,M9).real*RA1(M8);
		CA2(M8,M9).imag=CB2(M8,M9).imag*RA1(M8);
		for(M10=1;M10<=L3;M10++)
		{
			CA3(M8,M9,M10).real=
			    CB3(M8,M9,M10).real*CC3(M8,M9,M10).real
			    - CB3(M8,M9,M10).imag*CC3(M8,M9,M10).imag;
			CA3(M8,M9,M10).imag=
			    CB3(M8,M9,M10).real*CC3(M8,M9,M10).imag
			    + CB3(M8,M9,M10).imag*CC3(M8,M9,M10).real;
			if (LA3(M8,M9,M10)==1)
			{
				RA3(M8,M9,M10)=RB3(M8,M9,M10);
			}
			else
			{
				RA3(M8,M9,M10)=RA3(M8,M9,M10)+RC3(M8,M9,M10);
			}
			DA3(M8,M9,M10)=DA3(M8,M9,M10)/DB3(M8,M9,M10);
LBL_109:
			;
		}
LBL_99:
		;
	}
	RC1(M8)=RC1(M8)*0.9;
LBL_89:
	;

								}
								RM7(M7)=(float)(M7)*2.0;
LBL_79:
								;
							}
LBL_69:
							;
						}
						RM5(M5)=RM5(M5)*1.001;
LBL_59:
						;
					}
LBL_49:
					;
				}
LBL_39:
				;
			}
			RM2(M2)=-(float)(M2);
LBL_29:
			;
		}
LBL_19:
		;
	}
	printf(" RA3 = %g",RA3(L1,L2,L3));
	printf(" === \n");
	exit (0);
}
