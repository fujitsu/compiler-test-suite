#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L10(i)   l10[i-1]
#define L20(i,j) l20[i-1][j-1]
#define A(i)    a[i-1]
#define B(i)    b[i-1]
#define C(i)    c[i-1]
#define D(i,j)  d[i-1][j-1]
#define E(i,j)  e[i-1][j-1]
#define DA(i)   da[i-1]
#define DB(i)   db[i-1]
#define DC(i)   dc[i-1]
#define DD(i,j) dd[i-1][j-1]
#define DE(i,j) de[i-1][j-1]
#define QA(i)   qa[i-1]
#define QB(i)   qb[i-1]
#define QC(i)   qc[i-1]
#define QD(i,j) qd[i-1][j-1]
#define QE(i,j) qe[i-1][j-1]
long int    l10[10],l20[10][10];
float       a[10],b[10],c[10],d[10][10],e[10][10];
double      da[10],db[10],dc[10],dd[10][10],de[10][10];
long double qa[10],qb[10],qc[10],qd[10][10],qe[10][10];
int main()
{
	long int N10=10;
	long int L1S,L2S;
	float    S1,S2;
	double   D1,D2;
	long int I,J,i,j;
	for(I=1;I<=10;I++)
	{
		L10(I)=I;
		A(I)=0.0;
		B(I)=I;
		C(I)=I*2;
		DA(I)=0.0;
		DB(I)=I;
		DC(I)=-I;
		QA(I)=0.0;
		QB(I)=I;
		QC(I)=I*4;
		for(J=1;J<=10;J++)
		{
			D(I,J)=J+I;
			E(I,J)=J-I;
			DD(I,J)=E(I,J);
			DE(I,J)=E(I,J)-I;
			QD(I,J)=I*J;
			QE(I,J)=I-J;
LBL_10:
			;
			L20(I,J)=J;
		}
	}
	for(i=1;i<=10;i++){
		printf(" %ld \n",L10(i));
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" %ld \n",L20(i,j));
		}
	}
	printf(" *****  *****\n");
	printf(" ----- NO.1 -----\n");
	for(I=1;I<=N10;I++)
	{
		A(L10(I))=C(I);
		DA(L10(I))=(double)(I);
		B(I)=C(L10(I));
		DB(I)=DC(L10(I));
LBL_100:
		;
	}
	for(i=1;i<=10;i++){
		printf("  A    =  %g ",A(i));
		printf("  DA   =  %g \n",DA(i));
		printf("  B    =  %g ",B(i));
		printf("  DB   =  %g \n",DB(i));
	}
	printf(" ----- NO.2 -----\n");
	for(I=1;I<=N10;I++)
	{
		A(L10(I))=C(L10(I));
		DA(L10(I))=DC(L10(I));
LBL_200:
		;
	}
	for(i=1;i<=10;i++){
		printf("  A    =  %g ",A(i));
		printf("  DA   =  %g \n",DA(i));
	}
	printf(" ----- NO.3 -----\n");
	for(I=1;I<=N10;I++)
	{
		A(L20(I,I))=C(I);
		DA(L20(I,I))=(double)(I);
		B(I)=C(L20(I,I));
		DB(I)=DC(L20(I,I));
LBL_300:
		;
	}
	for(i=1;i<=10;i++){
		printf("  A    =  %g ",A(i));
		printf("  DA   =  %g \n",DA(i));
		printf("  B    =  %g ",B(i));
		printf("  DB   =  %g \n",DB(i));
	}
	printf(" ----- NO.4 -----\n");
	for(I=1;I<=N10;I++)
	{
		A(L20(I,I))=B(L20(I,I));
		DA(L20(I,I))=DB(L20(I,I));
LBL_400:
		;
	}
	for(i=1;i<=10;i++){
		printf("  A    =  %g ",A(i));
		printf("  DA   =  %g \n",DA(i));
	}
	printf(" ----- NO.5 -----\n");
	for(I=1;I<=N10;I++)
	{
		A(L10(I))=C(L10(I));
		DA(L10(I))=DC(L10(I));
LBL_500:
		;
	}
	for(i=1;i<=10;i++){
		printf("  A    =  %g ",A(i));
		printf("  DA   =  %g \n",DA(i));
	}
	printf(" ----- NO.6 -----\n");
	for(I=1;I<=N10;I++)
	{
		L1S=L10(I);
		A(L1S)=B(L1S)+C(L1S);
		DA(L10(I))=DC(L1S);
		QA(I)=QB(L1S);
LBL_600:
		;
	}
	for(i=1;i<=10;i++){
		printf("  A    =  %g ",A(i));
		printf("  DA   =  %g ",DA(i));
		printf("  QA   =  %g \n",(double)QA(i));
	}
	printf(" ----- NO.7 -----\n");
	for(I=1;I<=N10;I++)
	{
		L2S=L20(I,I);
		A(L2S)=B(L2S)+C(L2S);
		DA(L20(I,I))=DC(L2S);
		QA(I)=QB(L1S);
LBL_700:
		;
	}
	for(i=1;i<=10;i++){
		printf("  A    =  %g ",A(i));
		printf("  DA   =  %g ",DA(i));
		printf("  QA   =  %g \n",(double)QA(i));
	}
	printf(" ----- NO.8 -----\n");
	for(I=1;I<=N10;I++)
	{
		L1S=L10(I);
		D(L1S,I)=E(L10(I),L1S)+C(L1S);
LBL_801:
		;
		DD(L10(I),L10(I))=DE(L1S,L1S);
		QD(I,L1S)=QE(L1S,L20(I,I));
LBL_800:
		;
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf("  D    =  %g ",D(i,j));
			printf("  DD   =  %g ",DD(i,j));
			printf("  QD   =  %g \n",(double)QD(i,j));
		}
	}
	printf(" ----- NO.9 -----\n");
	for(I=1;I<=N10;I++)
	{
LBL_901:
		;
		L2S=L20(I,I);
		D(L2S,L20(I,I))=E(L2S,L2S)+C(L2S);
		DD(L20(I,I),L20(I,I))=DE(L20(I,I),L2S);
		QD(I,L20(I,I))=QE(L2S,L2S);
LBL_900:
		;
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf("  D    =  %g ",D(i,j));
			printf("  DD   =  %g ",DD(i,j));
			printf("  QD   =  %g \n",(double)QD(i,j));
		}
	}
	exit (0);
}
