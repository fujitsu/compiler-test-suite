#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define D10(i)  d10[i-1]
#define Q10(i)  q10[i-1]
#define LB10(i) lb10[i-1]
#define LB11(i) lb11[i-1]
#define LB12(i) lb12[i-1]
#define CH10(i) ch10[i-1]
#define R10(i)  r10[i-1]
#define R11(i)  r11[i-1]
#define R12(i)  r12[i-1]
#define I10(i)  i10[i-1]
#define I11(i)  i11[i-1]
#define CQ10(i) cq10[i-1]
#define L10(i)  l10[i-1]
#define CH20(i) ch20[i-1]
#define CH21(i) ch21[i-1]
#define LB20(i) lb20[i-1]
#define I20(i)  i20[i-1]
#define R20(i)  r20[i-1]
#define R21(i)  r21[i-1]
#define D20(i)  d20[i-1]
#define Q20(i)  q20[i-1]
double        d10[10]={
	4,16,25,36,49,9,100,256,64,81};
long double   q10[10];
unsigned int lb10[10]={
	1,1,1,1,1,0,0,0,0,0},
lb11[10]={
	1,1,0,0,1,1,1,1,0,0},
lb12[10]={
	1,1,1,0,0,0,1,1,1,0};
char          ch10[11]="          ";
float         r10[10]={
	3,8,-4,5,6,-2.1,-9,10.2,11,13},
r11[10]={
	1,2,3,4,-3,-3,3,3,3,-8},
r12[10]={
	1,-1,3,3,-4,-4,-4,5,5,5};
long int      i10[10],i11[10]={
	1,2,-3,4,-5,6,0,7,0,-8};
COMPLEX32     cq10[10]={
	1,1,2,2,-2,-3,4,5,0,1,1,0,3,3,3,3,3,3,3,3};
unsigned long int l10[10]={
	10*0};
char          ch20[10][9]={
	"        ","        ","        ","        ",
	                            "        ","        ","        ","        ",
	                            "        ","        "},
ch21[10][9]={
	"TESTNO.1","TESTNO.1","TESTNO.1",
	                            "TESTNO.1","TESTNO.1",
	                            "TESTNO.2","TESTNO.2","TESTNO.2",
	                            "TESTNO.2","TESTNO.2"};
unsigned char lb20[10]={
	0,0,0,0,0,0,0,0,0,0};
long int      i20[10]={
	21,1,2,3,6,9,18,36,333,0};
float         r20[10]={
	4,9,16,25,36,1,64,81,100,256},
r21[10]={
	5E05,72.3E-03,5E25,3E0,4E07,-31E-2,51E24,0,0,0};
double        d20[10]={
	25,31.6,28.7,98.15,21.9,39.9,21.8,-31.1};
long          double q20[10]={
	1,2,56,7,8,999,21,30,0,-999};
int main()
{
	long int N1=1;
	long int N10=10;
	long int I10S=0;
	long int I20S=0;
	float    R10S=25;
	double   D20S=0;
	long int I,J,INDX,i,j,k,K;
	for(i=0;i< 10;i++){
		q10[i]=i+1;
		l10[i]=0;
	}
	printf(" *****  *****\n");
	printf(" ----- NO.1 -----\n");
	for(J=2;J<=N10;J++)
	{
		printf("  OUTER LOOP  J =  %ld \n",J);
		Q10(J)=Q10(J)*8.;
		if ( LB10(J) ) CH10(J)='S';
		R10(J)=R10(J)+R11(J);
		for(I=2;I<=N10;I++)
		{
			for(K=1;K<=N10;K++)
			{
				I10(K)=I10(K)/3;
				LB10(K)=(LB11(K) && LB12(K))?1:0;
				CQ10(K).qreal=CQ10(K).qreal*8.;
				CQ10(K).qimag=CQ10(K).qimag*8.;
LBL_11:
				;
			}
			D10(I)=sqrt(D10(I));
			I10S=I10S+D10(I);
			if ( R10S  >   R10(I) ) R10S = R10(I);
			R11(I)=R11(I-1)+I10(I);
			L10(I)=(LB10(I)||1)?1:0;
LBL_10:
			;
		}
LBL_101:
		;
		if ( I11(J) < 0)goto LBL_102;
		if ( I11(J) ==0)goto LBL_102;
		goto LBL_103;
LBL_102:
		;
		R12(J)=R12(J-1);
		goto LBL_100;
LBL_103:
		;
		I11(J)=-1;
		goto LBL_101;
LBL_100:
		;
	}
	for(i=1;i<=10;i++){
		printf("  Q10  =  %g \n",(double)Q10(i));
	}
	printf("  CH10 =  %s \n",ch10);
	for(i=1;i<=10;i++){
		printf("  R10  =  %g  ",R10(i));
		printf("  I10  =  %ld ",I10(i));
		printf("  LB10 =  %u  ",LB10(i));
		printf("  CQ10 =  %g %g \n",(double)CQ10(i).qreal,(double)CQ10(i).qimag);
	}
	printf("  D10  = \n");
	for(i=1;i<=10;i++){
		printf(" %g \n",D10(i));
	}
LBL_10000:
	;
	printf("  I10S = %ld ",I10S);
	printf("  R10S = %g \n",R10S);
	for(i=1;i<=10;i++){
		printf("  R11  =  %g  ",R11(i));
		printf("  L10  =  %lu ",L10(i));
		printf("  R12  =  %g  ",R12(i));
		printf("  I11  =  %ld \n",I11(i));
	}
	printf(" ----- NO.2 -----\n");
	for(I=1;I<=N1;I++)
	{
		for(J=1;J<=N10;J++)
		{
			strcpy(CH20(J),"TESTNO.2");
			LB20(J)=(strcmp(CH20(J),CH21(J)))?1:0;
			I20S=I20S+sqrt(R20(J));
			if ( D20S  <=  fmod(D20(J),5.0) ){
				D20S=fmod(D20(J),5.0 );
				INDX=J;
			}
			if ( LB20(J) ) D20(J) = Q20(J) + R21(J);
LBL_20:
			;
			I20(J)=I20(J)/3;
		}
LBL_200:
		;
	}
	printf("  I20S =  %ld \n",I20S);
	for(i=1;i<=10;i++){
		printf("  CH20 =  %s \n",CH20(i));
		printf("  LB20 =  %u \n",LB20(i));
	}
	printf("  D20S =  %g    ",D20S);
	printf("  INDX =  %ld \n",INDX);
	for(i=1;i<=10;i++){
		printf("  D20  =  %g   ",D20(i));
		printf("  I20  =  %ld \n",I20(i));
	}
	exit (0);
}
