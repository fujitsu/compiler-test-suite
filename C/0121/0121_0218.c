#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB1(long int *I1);
#define I10(i,j) i10[i-1][j-1]
#define I11(i,j) i11[i-1][j-1]
#define I12(i,j) i12[i-1][j-1]
#define Q10(i)   q10[i-1]
#define Q11(i)   q11[i-1]
#define L10(i)   l10[i-1]
#define L11(i)   l11[i-1]
#define L12(i)   l12[i-1]
#define I20(i)   i20[i-1]
#define I21(i,j) i21[i-1][j-1]
#define I22(i,j) i22[i-1][j-1]
#define L20(i)   l20[i-1]
#define RD20(i)  rd20[i-1]
#define I30(i,j) i30[i-1][j-1]
#define I31(i,j) i31[i-1][j-1]
#define I32(i,j) i32[i-1][j-1]
#define R30(i,j) r30[i-1][j-1]
#define RD30(i)  rd30[i-1]
#define RD31(i)  rd31[i-1]
#define RD32(i)  rd32[i-1]
long int      i10[10][2]={
	1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,4},
i11[5][5],
i12[5][5]={
	12,12,12,12,12,18,18,18,18,18,
	                          30,30,30,30,30,36,36,36,36,36,
	                          40,40,40,40,40};
long double   q10[5]={
	5*0},
q11[5];
unsigned long int l10[2]={
	1,0},
l11[2]={
	0,1},
l12[2]={
	0,0};
long int      i20[10],i21[11][2],i22[10][2];
unsigned long int l20[10]={
	0,0,1,1,0,0,1,1,1,1};
double        rd20[10]={
	1,2,3,4,5,6.1,7.2,8.3,9.4,10.5};
long int      i30[10][2],
i31[10][2]={
	1,1,1,1,2,2,2,2,3,3,3,3,
	                           4,4,4,4,5,5,5,5},
i32[2][10];
float         r30[2][2]={
	1,2,3,4};
double        rd30[10]={
	1.5,1.5,1.5,1.5,1.5,2.5,2.5,2.5,2.5,2.5},
rd31[10]={
	1.5,1.5,1.5,1.4,1.4,1.4,1.3,1.3,1.3,1},
rd32[11];
int main()
{
	long int i,j,k,I,J,K,I1;
	long int N2=2;
	long int N10=10;
	long int N5=5;
	char     CH10[]="STOO";
	long int I10S=0;
	float    S=0;
	long int I11=25*0;
	float    R20S=0;
	char     CH30[]="   ",CH31[]="TEST ";
	long int I2,I11S=0,I3,I12S=100,I4,I13S=0;
	long int I14S=0,I20S=0,I30S=0,I31S=0;
	float     R30S,RD30S;
	for(j=0;j< 5 ;j++){
		for(i=0;i< 5;i++){
			i11[i][j]=0;
		}
	}
	for(i=0;i< 5;i++){
		q10[i]=0;
		q11[i]=i+1;
	}
	for(j=0;j<  2;j++){
		for(i=0;i< 11;i++){
			i21[i][j]=0;
		}
	}
	for(j=0;j< 2 ;j++){
		for(i=0;i< 10;i++){
			i30[i][j]=1;
		}
	}
	for(j=0;j< 10 ;j++){
		for(i=0;i< 2;i++){
			i32[i][j]=(i<1)? 1:-1;
		}
	}
	for(i=0;i< 11;i++){
		rd32[i]=1.8;
	}
	printf("  *****  ***** \n");
	printf("  ----- NO.1 -----\n");
	for(I=1;I<=N2;I++)
	{
		for(J=1;J<=N10;J++)
		{
			if (strcmp(CH10,"STOP"))goto LBL_1200         ;
			for(I1=1;I1<=N10;I1++)
			{
LBL_100:
				;
				SUB1(&I1);
			}
			for(I2=1;I2<=N10;I2++)
			{
				if ( L10(I) ){
					I10S=I10S+I10(I2,I);
				}
				else{
					I11S=I11S+I10(I2,I);
				}
LBL_110:
				;
			}
			for(I3=1;I3<=N5;I3++)
			{
				Q10(I3)=Q11(I3);
LBL_120:
				;
			}
			I11(I3,I3)=I12(I3,I3)/6;
			for(I4=1;I4<=N5;I4++)
			{
				if ( I12S  >=  I11(I4,I) )goto LBL_131         ;
				I12S=I11(I4,I);
				I13S=I4;
LBL_131:
				;
				if ( L11(I) || L12(I) ){
					I14S=I14S+I11(I4,I4);
					if ( L11(I) ) printf(" SCALAR \n");
					I11(I4,I4)=I12(I4,I);
				}
LBL_1100:
				;
			}
LBL_1200:
			;
		}
LBL_1000:
		;
	}
	printf(" I10S =  %ld   ",I10S);
	printf(" I11S =  %ld \n",I11S);
	for(i=1;i<=5;i++){
		printf(" Q10  =  %g \n",(double)Q10(I));
	}
	for(j=1;j<=5;j++){
		for(i=1;i<=5;i++){
			printf(" I11  =  %ld \n",I11(i,j));
		}
	}
	printf(" I12S =  %ld   ",I12S);
	printf(" I13S =  %ld   ",I13S);
	printf(" I14S =  %ld \n",I14S);
	printf("  ----- NO.2 -----\n");
	for(I=1;I<=1;I++)
	{
		for(J=1;J<=N10;J++)
		{
			for(I1=1;I1<=N10;I1++)
			{
				I20(I1)=I1;
				if ( L20(I1) ) I20(I1)=-I1;
LBL_200:
				;
			}
			for(I2=1;I2<=N10;I2++)
			{
				I21(I2,I)=1;
				I22(I2,I)=I21(I2,I);
				I20S=I22(I2,I);
LBL_210:
				;
				I21(I2+1,I)=I20S;
			}
			for(I3=1;I3<=N10;I3++)
			{
LBL_220:
				;
				R20S=R20S+RD20(I3);
			}
			for(I4=1;I4<=N10;I4++)
			{
LBL_230:
				;
			}
LBL_2100:
			;
		}
LBL_2000:
		;
	}
	for(i=1;i<=10;i++){
		printf("  I20  =  %ld \n",I20(i));
	}
	for(j=1;j<=2;j++){
		for(i=1;i<=11;i++){
			printf("  I21  =  %ld \n",I21(i,j));
		}
	}
	for(j=1;j<=2;j++){
		for(i=1;i<=10;i++){
			printf("  I22  =  %ld \n",I22(i,j));
		}
	}
	printf("  R20S =  %10.2f \n",R20S);
	printf("  ----- NO.3 -----\n");
	for(I=1;I<=N2;I++)
	{
		for(J=1;J<=N10;J++)
		{
			I30(J,I)=I30(J,I)+I31(J,I)*I32(I,J);
			I30S=I30(J,I);
			for(I1=1;I1<=N10;I1++)
			{
				I31S=I30S;
				R30S=I31S;
LBL_300:
				;
				R30(I,I)=R30(I,I)+R30S;
			}
			for(I2=1;I2<=N10;I2++)
			{
LBL_310:
				;
			}
			for(I3=1;I3<=N10;I3++)
			{
LBL_320:
				;
			
				CH30[0]=CH31[0];
				CH30[1]=CH31[1];
				CH30[2]=CH31[2];
			
			}
			for(I4=1;I4<=N10;I4++)
			{
				RD30S=RD30(I4)+RD31(I4);
LBL_330:
				;
				RD32(I4+1)=RD32(I4)+RD30S;
			}
			printf(" COUNT =  %ld \n",J);
LBL_3100:
			;
		}
LBL_3000:
		;
	}
	for(j=1;j<=2;j++){
		for(i=1;i<=10;i++){
			printf(" I30 =  %ld \n",I30(i,j));
		}
	}
	for(j=1;j<=2;j++){
		for(i=1;i<=2;i++){
			printf(" R30 =  %g \n",R30(i,j));
		}
	}
	printf(" CH30=  %s \n",CH30);
	for(i=1;i<=11;i++){
		printf(" RD32=  %g \n",RD32(i));
	}
	exit (0);
}
int SUB1(long int *I1)
{
	*I1=*I1+1;
	return 0;
}
