#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define CH10(i)   ch10[i-1]
#define I10(i)    i10[i-1]
#define I11(i)    i11[i-1]
#define R10(i)    r10[i-1]
#define R11(i)    r11[i-1]
#define RD10(i,j) rd10[i-1][j-1]
#define RD11(i,j) rd11[i-1][j-1]
#define C10(i,j)  c10[i-1][j-1]
#define C11(i,j)  c11[i-1][j-1]
#define CD10(i,j) cd10[i-1][j-1]
#define I20(i)    i20[i-1]
#define I21(i,j)  i21[i-1][j-1]
#define I22(i,j)  i22[i-1][j-1]
#define I23(i,j)  i23[i-1][j-1]
#define R20(i,j)  r20[i-1][j-1]
#define I30(i)    i30[i-1]
#define I31(i)    i31[i-1]
#define I32(i)    i32[i-1]
#define I33(i)    i33[i-1]
#define R30(i,j)  r30[i-1][j-1]
#define R31(i,j)  r31[i-1][j-1]
#define R32(i,j)  r32[i-1][j-1]
#define RD30(i,j) rd30[i-1][j-1]
#define RD31(i)   rd31[i-1]
#define Q30(i)    q30[i-1]
char      ch10[10][5]={
	"TEST","TEST","TEST","TEST","TEST",
	                       "ESTE","ESTE","ESTE","ESTE","ESTE"};
long int  i10[10],i11[10]={
	1,1,1,1,1,2,2,2,2,2};
float     r10[10]={
	1,1,1,1,1,2,2,2,2,2},
r11[10];
double    rd10[10][2]={
	1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,4},
rd11[2][10]={
	1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,
	                        1.5,1.5,1.5,0.5,0.5,0.5,0.5,0.5,0.5,2.5};
COMPLEX8  c10[6][2],c11[6][2];
COMPLEX16 cd10[5][2]={
	0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,
	    1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,};
long int i20[10]={
	1,2,3,4,5,1,2,3,4,5};
long int i21[10][2],i22[10][2];
long int i23[10][2]={
	1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,4};
float    r20[5][2]={
	1,2,3,4,5,6,7,8,9,10};
long int i30[10],i31[10]={
	1,1,1,1,1,2,2,2,2,2},
i32[2]={
	0,0},
i33[2]={
	1,1};
float    r30[10][2],r31[10][2]={
	1,1,1,1,1,0,0,0,0,0,2,2,2,2,2,3,3,3,3,3},
r32[2][10];
double   rd30[10][2],rd31[2]={
	0,0};
long double q30[10];
int main()
{
	long int N10=10;
	long int N5=5;
	long int N2=2;
	double   RD10S;
	long int I10S=3;
	float    S=1.0;
	float    R11=10*0;
	long int J=1;
	long int N=2;
	long int N1=5;
	long int I,I20S=0,I21S=0,L,M,K,i,j;
	float    R10S,R11S=1.0,R30S=0,I30S=2,RD30S=3;
	for(i=0;i< 10;i++){
		i10[i]=0;
		r11[i]=0;
	}
	for(j=0;j< 2;j++){
		for(i=0;i< 6;i++){
			c10[i][j].real=(J)?1:2;
			c10[i][j].imag=(J)?1:2;
		}
	}
	for(j=0;j< 1;j++){
		for(i=0;i< 6;i++){
			c11[i][j].real=(J)?1:2;
			c11[i][j].imag=1;
		}
	}
	for(j=0;j< 2;j++){
		for(i=0;i< 5;i++){
			cd10[i][j].dreal=(J)?0.5:1.5;
			cd10[i][j].dimag=(J)?0.5:1.5;
		}
	}
	for(j=0;j< 2;j++){
		for(i=0;i< 10;i++){
			i21[i][j]=(J)?4:8;
		}
	}
	for(i=0;i< 10;i++){
		i30[i]=0;
	}
	for(j=0;j< 2;j++){
		for(i=0;i< 10;i++){
			r30[i][j]=0;
		}
	}
	for(j=0;j< 10;j++){
		for(i=0;i< 2;i++){
			r32[i][j]=0;
		}
	}
	for(j=0;j< 2;j++){
		for(i=0;i< 10;i++){
			rd30[i][j]=0;
		}
	}
	for(i=0;i< 10;i++){
		q30[i]=i;
	}
	printf(" *****  *****\n");
	printf(" ----- TEST NO.1 -----\n");
LBL_1000:
	;
	for(I=2;I<=N1;I++)
	{
		if ((strcmp(CH10(I),"TEST")))goto LBL_100         ;
		I10(I)=I11(I)*I10S;
LBL_100:
		;
	}
	for(I=1;I<=N1;I++)
	{
		if ((C10(I,J).real == C11(I,J).real) &&
		    (C10(I,J).imag == C11(I,J).imag)){
			C10(I,J).real=(C10(I,J).real*C11(I,J).real+
			    C10(I,J).imag*C11(I,J).imag)/
			    (C11(I,J).real*C11(I,J).real+
			    C11(I,J).imag*C11(I,J).imag);
			C10(I,J).imag=(C10(I,J).imag*C11(I,J).real+
			    C10(I,J).real*C11(I,J).imag)/
			    (C11(I,J).real*C11(I,J).real+
			    C11(I,J).imag*C11(I,J).imag);
		}
	}
	for(I=2;I<=N1;I++)
	{
		R10S=R11S;
		R11S=R10(I);
LBL_300:
		;
		R11(I)=R11(I-1)+R11S;
	}
	for(I=2;I<=N1;I++)
	{
		RD10S=RD10(I,J)+RD11(J,I);
LBL_400:
		;
		CD10(I,J).dreal=RD10S+CD10(I-1,J).dreal;
		CD10(I,J).dimag=CD10(I-1,J).dimag;
	}
	J=J+1;
	if ( J <= N)goto LBL_1000         ;
	for(i=1;i<=10;i++){
		printf(" I10  =  %ld \n",I10(i));
	}
	for(j=1;j<=2;j++){
		for(i=1;i<=6;i++){
			printf(" C10  =  %g %g \n",C10(i,j).real,C10(i,j).imag);
		}
	}
	printf(" R11S =  %g \n",R11S);
	for(i=1;i<=10;i++){
		printf(" R11  =  %g \n",R11(i));
	}
	for(j=1;j<=2;j++){
		for(i=1;i<=5;i++){
			printf(" CD10 =  %g %g \n",CD10(i,j).dreal,CD10(i,j).dimag);
		}
	}
	printf(" ----- TEST NO.2 -----\n");
	for(I=1;I<=N2;I++)
	{
		for(J=1;J<=N5;J++)
		{
			if (R20(J,I) <= 0) exit (-1);
		}
		for(K=1;K<=N10;K++)
		{
LBL_510:
			;
			I20S=I20S+I20(K);
		}
		for(L=1;L<=N10;L++)
		{
			I21S=I21(L,I);
			for(j=1;j<=2;j++){
				for(i=1;i<=10;i++){
					printf(" %ld \n",I21(i,j));
				}
			}
LBL_520:
			;
		}
		for(M=1;M<=N10;M++)
		{
			I22(M,I)=I21(M,I)/4;
LBL_530:
			;
			I23(M,I)=I22(M,I)+I23(M,I);
		}
LBL_2000:
		;
	}
	printf("  I20S =  %ld \n",I20S);
	for(j=1;j<=2;j++){
		for(i=1;i<=10;i++){
			printf("  I22  =  %ld \n",I22(i,j));
		}
	}
	for(j=1;j<=2;j++){
		for(i=1;i<=10;i++){
			printf("  I23  =  %ld \n",I23(i,j));
		}
	}
	printf(" ----- TEST NO.3 -----\n");
	for(I=1;I<=N2;I++)
	{
		for(J=1;J<=N10;J++)
		{
			if (I30S == 1 ) goto LBL_601;
			if (I30S == 2 ) goto LBL_602;
			if (I30S == 3 ) goto LBL_600;
LBL_601:
			;
			I30(J)=J;
LBL_602:
			;
			I30(J)=I30(J)+J;
LBL_600:
			;
		}
		for(K=1;K<=N10;K++)
		{
			R30(K,I)=sin(R31(K,I));
			R30S=R31(K,I);
LBL_610:
			;
			R32(I,K)=cos(R30S);
		}
		for(L=1;L<=N10;L++)
		{
			RD30(L,I)=RD30S;
			RD30S=RD30(L,I)+RD30S;
			I30(L)=I30(L)+RD30S;
LBL_620:
			;
		}
		for(M=1;M<=N10;M++)
		{
LBL_630:
			;
			Q30(M)=Q30(M)+I30(M)/I31(M);
		}
		I32(I)=I33(I)+R32(I,3);
		RD31(I)=I32(I);
		printf("  SECONDARY LOOP\n");
LBL_3000:
		;
	}
	for(i=1;i<=10;i++){
		printf("  I30   =  %ld \n",I30(i));
	}
	printf("  R30   = \n");
	for(j=1;j<=2;j++){
		for(i=1;i<=10;i++){
			printf(" %g \n",R30(i,j));
		}
	}
LBL_10000:
	;
	printf("  R32   = \n");
	for(j=1;j<=10;j++){
		for(i=1;i<=2;i++){
			printf(" %g \n",R32(i,j));
		}
	}
	for(j=1;j<=2;j++){
		for(i=1;i<=10;i++){
			printf("  RD30  =  %g \n",RD30(i,j));
		}
	}
	printf("  RD30S =  %g \n",RD30S);
	for(i=1;i<=2;i++){
		printf("  I32   =  %ld  ",I32(i));
		printf("  RD31  =  %g \n",RD31(i));
	}
	exit (0);
}
