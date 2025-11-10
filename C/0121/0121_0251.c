#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define IA1(i)     ia1[i-1]
#define IB1(i)     ib1[i-1]
#define IC1(i)     ic1[i-1]
#define IA2(i,j)   ia2[i-1][j-1]
#define IB2(i,j)   ib2[i-1][j-1]
#define IC2(i,j)   ic2[i-1][j-1]
#define RA1(i)     ra1[i-1]
#define RB1(i)     rb1[i-1]
#define RC1(i)     rc1[i-1]
#define RA2(i,j)   ra2[i-1][j-1]
#define RB2(i,j)   rb2[i-1][j-1]
#define RC2(i,j)   rc2[i-1][j-1]
#define RA3(i,j,k) ra3[i-1][j-1][k-1]
#define RB3(i,j,k) rb3[i-1][j-1][k-1]
#define RC3(i,j,k) rc3[i-1][j-1][k-1]
#define DA1(i)     da1[i-1]
#define DB1(i)     db1[i-1]
#define DC1(i)     dc1[i-1]
#define DP1(i)     dp1[i-1]
#define DM1(i)     dm1[i-1]
#define DA2(i,j)   da2[i-1][j-1]
#define DB2(i,j)   db2[i-1][j-1]
#define DC2(i,j)   dc2[i-1][j-1]
#define DA3(i,j,k) da3[i-1][j-1][k-1]
#define DB3(i,j,k) db3[i-1][j-1][k-1]
#define DC3(i,j,k) dc3[i-1][j-1][k-1]
#define QA2(i,j)   qa2[i-1][j-1]
#define QB2(i,j)   qb2[i-1][j-1]
#define QC2(i,j)   qc2[i-1][j-1]
#define CA1(i)     ca1[i-1]
#define CB1(i)     cb1[i-1]
#define CC1(i)     cc1[i-1]
#define CA2(i,j)   ca2[i-1][j-1]
#define CB2(i,j)   cb2[i-1][j-1]
#define CC2(i,j)   cc2[i-1][j-1]
#define CA3(i,j,k) ca3[i-1][j-1][k-1]
#define CB3(i,j,k) cb3[i-1][j-1][k-1]
#define CC3(i,j,k) cc3[i-1][j-1][k-1]
#define LA1(i)     la1[i-1]
#define LB1(i)     lb1[i-1]
#define LC1(i)     lc1[i-1]
#define LA3(i,j,k) la3[i-1][j-1][k-1]
#define LB3(i,j,k) lb3[i-1][j-1][k-1]
#define LC3(i,j,k) lc3[i-1][j-1][k-1]
long int    ia1[10],ib1[10],ic1[10];
long int    ia2[10][20],ib2[10][20],ic2[10][20];
float       ra1[10],rb1[10],rc1[10];
float       ra2[10][20],rb2[10][20],rc2[10][20];
float       ra3[10][20][30],rb3[10][20][30],rc3[10][20][30];
double      da1[10],db1[10],dc1[10],dp1[10],dm1[10];
double      da2[10][20],db2[10][20],dc2[10][20];
double      da3[10][20][30],db3[10][20][30],dc3[10][20][30];
long double qa2[10][20],qb2[10][20],qc2[10][20];
COMPLEX8    ca1[10],cb1[10],cc1[10];
COMPLEX8    ca2[10][20],cb2[10][20],cc2[10][20];
COMPLEX8    ca3[10][20][30],cb3[10][20][30],cc3[10][20][30];
unsigned long int la1[10],lb1[10],lc1[10];
unsigned long int la3[10][20][30],lb3[10][20][30],lc3[10][20][30];
int main()
{
	long int L1=10,L2=20,L3=30;
	long int i,j,k,I,J,K;
	long int IMAX,IMIN,M;
	float RMAX,RMIN,S,RK;
	for(I=1;I<=L1;I++)
	{
		IA1(I)=I;
		IB1(I)=I+2;
		IC1(I)=I+3;
		RA1(I)=I+2;
		RB1(I)=I+3;
		RC1(I)=I+4;
		DA1(I)=2*I;
		DB1(I)=3*I-2;
		DC1(I)=2*I+3;
		DP1(I)=3*I;
		DM1(I)=2*I;
		CA1(I).real=(float)((float)(I));
		CA1(I).imag=(float)((float)(I));
		CB1(I).real=(float)((float)(I+5));
		CB1(I).imag=(float)((float)(I));
		CC1(I).real=(float)((float)(2*I));
		CC1(I).imag=(float)((float)(3*I));
		LA1(I)=(fmod(I,2)==0)?1:0;
		LB1(I)=(fmod(I,3)==0)?1:0;
		LC1(I)=(fmod(I,4)==0)?1:0;
		for(J=1;J<=L2;J++)
		{
			IA2(I,J)=I*J;
			IB2(I,J)=I-J;
			IC2(I,J)=I+J;
			RA2(I,J)=I*J+5;
			RB2(I,J)=I-J-5;
			RC2(I,J)=I+J*3;
			DA2(I,J)=I*J-2;
			DB2(I,J)=I-J-3;
			DC2(I,J)=I+J-4;
			QA2(I,J)=I*J-5;
			QB2(I,J)=I-J-6;
			QC2(I,J)=I+J-7;
			CA2(I,J).real=(float)((float)(I+2));
			CA2(I,J).imag=(float)((float)(J*3));
			CB2(I,J).real=(float)((float)(J+3));
			CB2(I,J).imag=(float)((float)(J+3));
			CC2(I,J).real=(float)((float)(J-3));
			CC2(I,J).imag=(float)((float)(J-3));
			for(K=1;K<=L3;K++)
			{
				RA3(I,J,K)=I+J+K;
				RB3(I,J,K)=I-J+K;
				RC3(I,J,K)=I+J-K;
				DA3(I,J,K)=I+J-K;
				DB3(I,J,K)=I*J+K;
				DC3(I,J,K)=I+J*K;
				CA3(I,J,K).real=(float)((float)(I+J+K));
				CA3(I,J,K).imag=(float)((float)(I+J*K));
				CB3(I,J,K).real=(float)((float)(I-J+K));
				CB3(I,J,K).imag=(float)((float)(I+J+K));
				CC3(I,J,K).real=(float)((float)(I+J+K));
				CC3(I,J,K).imag=(float)((float)(I-J+K));
				LA3(I,J,K)=((I+J)>(I+K))?1:0;
				LB3(I,J,K)=((I-J)>(I+K))?1:0;
				LC3(I,J,K)=((I*J)>(I+K))?1:0;
LBL_10:
				;
			}
		}
	}
	printf(" #####  #####\n");
	printf(" ----- TEST NO.1 ----- SIMPLEST POSSIBLE        \n");
	printf("                       FIND MAX                 \n");
	RMAX=-99999.0;
	IMAX=0;
	for(I=1;I<=L1;I++)
	{
		RA1(I)=RB1(I)+RC1(I);
		if (RA1(I)  >   17.0)goto LBL_110         ;
		if (I <  5){
			if (RB1(I)  >   RMAX){
				RMAX=RB1(I);
				IMAX=I;
			}
			DA1(I)=DB1(I)+DC1(I);
		}
		else{
			DA1(I)=DB1(I)-DC1(I);
		}
		IA1(I)=IB1(I)*IC1(I);
LBL_110:
		;
	}
	printf(" RMAX=  %g    ",RMAX);
	printf(" IMAX=  %ld \n",IMAX);
	for(i=1;i<=L1;i++){
		printf(" RB1=  %g  ",RB1(i));
		printf(" IA1=  %ld ",IA1(i));
		printf(" DA1=  %g  ",DA1(i));
		printf(" RA1=  %g \n",RA1(i));
	}
	printf(" ----- TEST NO.2 ----- 2ND SIMPLEST POSSIBLE  \n");
	printf("                       FIND MINIMUM           \n");
	RMIN=99999.0;
	IMIN=0;
	for(I=1;I<=L1;I++)
	{
		RA1(I)=RB1(I)+RC1(I);
		if (I  <=  9){
			if (RA1(I)  >   17.0){
				if (RB1(I)  <   RMIN){
					RMIN=RB1(I);
					IMIN=I;
				}
				DA1(I)=DB1(I)+DC1(I);
			}
			else{
				DA1(I)=DB1(I)-DC1(I);
			}
			IA1(I)=IB1(I)*IC1(I);
		}
LBL_210:
		;
	}
	printf(" RMIN=  %g    ",RMIN);
	printf(" IMIN=  %ld \n",IMIN);
	for(i=1;i<=L1;i++){
		printf(" RB1=  %g  ",RB1(i));
		printf(" IA1=  %ld ",IA1(i));
		printf(" DA1=  %g  ",DA1(i));
		printf(" RA1=  %g \n",RA1(i));
	}
	printf(" ----- TEST NO.3 ----- MASK OPTIMIZATION      \n");
	printf("                       COMPRESS/EXPAND        \n");
	K=0;
	M=0;
	for(I=1;I<=L1;I++)
	{
		RA1(I)=RB1(I)*RC1(I);
		if (I  <=  9){
			if (RA1(I)  <   23.0){
				if (RB1(I)  <   100){
					K=K+1;
					DP1(K)=RB1(I);
				}
				else{
					M=M+1;
					DM1(I)=RB1(M);
				}
				DA1(I)=DB1(I)+DC1(I);
			}
			else{
				DA1(I)=DB1(I)-DC1(I);
			}
			IA1(I)=IB1(I)*IC1(I);
			if (IC1(I) != 0){
				IA1(I)=IB1(I)*fmod(IB1(I),IC1(I));
			}
		}
LBL_310:
		;
	}
	for(i=1;i<=L1;i++){
		printf(" DP1=  %g   ",DP1(i));
		printf(" DM1=  %g   ",DM1(i));
		printf(" RB1=  %g \n",RB1(i));
		printf(" IA1=  %ld  ",IA1(i));
		printf(" DA1=  %g   ",DA1(i));
		printf(" RA1=  %g \n",RA1(i));
	}
	printf(" ----- TEST NO.4 ----- MASK OPTIMIZATION      \n");
	printf("                       MIXED MACROS           \n");
	RMAX=-99999.0;
	IMAX=0;
	RMIN=99999.0;
	IMIN=0;
	K=0;
	M=0;
	S=-99999.0;
	RK=-99999.0;
	for(I=1;I<=L1;I++)
	{
		RA1(I)=RB1(I)+RC1(I);
		if (RA1(I)  >   2.0*RB1(I)){
			S=RA1(I);
			if (!LC1(11-I)){
				if (LA1(I)){
					K=K+1;
					DP1(K)=RA1(I);
				}
			}
		}
		if (LB1(I)){
			CA1(I).real=2.0*CB1(I).real;
			CA1(I).imag=2.0*CB1(I).imag;
			if ((RB1(I)-7.0) < 0)goto LBL_450;
			if ((RB1(I)-7.0) ==0)goto LBL_460;
			goto LBL_470;
LBL_450:
			;
			RK=RB1(I)/3.0;
			goto LBL_480;
LBL_460:
			;
			RK=RB1(I)/2.0;
			goto LBL_480;
LBL_470:
			;
			RK=RB1(I)/4.0;
			if (RC1(I) >  0){
				M=M+1;
				DM1(I)=RC1(M);
			}
LBL_480:
			;
			CB1(I).real=5.0+CA1(I).real;
			CB1(I).imag=CA1(I).imag;
		}
		if (RA1(I) > 17.0)goto LBL_410         ;
		if (I  <=  4){
			if (RC1(I) >  RMAX){
				RMAX=RC1(I);
				IMAX=I;
			}
		}
		else{
			if (RC1(I) <  RMIN){
				RMIN=RC1(I);
				IMIN=I;
			}
			DA1(I)=DB1(I)-DC1(I);
		}
		IA1(I)=IB1(I)*IC1(I);
LBL_410:
		;
	}
	printf(" RMAX=  %g  ",RMAX);
	printf(" IMAX=  %ld ",IMAX);
	printf(" RMIN=  %g  ",RMIN);
	printf(" IMIN=  %ld \n",IMIN);
	for(i=1;i<=L1;i++){
		printf(" RC1=  %g ",RC1(i));
		printf(" DP1=  %g ",DP1(i));
		printf(" DM1=  %g \n",DM1(i));
	}
	printf("   S=  %g ",S);
	printf("  RK=  %g \n",RK);
	for(i=1;i<=L1;i++){
		printf(" CA1=  %g %g ",CA1(i).real,CA1(i).imag);
		printf(" CB1=  %g %g ",CB1(i).real,CB1(i).imag);
		printf(" IA1=  %ld \n",IA1(i));
		printf(" DA1=  %g   ",DA1(i));
		printf(" RA1=  %g \n",RA1(i));
	}
	exit (0);
}
