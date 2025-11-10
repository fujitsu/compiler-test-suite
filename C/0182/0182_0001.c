#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DATA1(i) data1[i-1]
#define DATA2(i) data2[i-1]
#define DATA3(i) data3[i-1]
#define DATA4(i) data4[i-1]
#define DATA5(i) data5[i-1]
#define ANS1(i)  ans1[i-1]
#define ANS2(i)  ans2[i-1]
#define ANS3(i)  ans3[i-1]
#define ANS4(i)  ans4[i-1]
#define ANS5(i)  ans5[i-1]
#define LDATA1(i) ldata1[i-1]
#define LDATA2(i) ldata2[i-1]
double   data1[50],data2[50],data3[50],data4[50],data5[50];
double   ans1[50],ans2[50],ans3[50],ans4[50],ans5[50];
unsigned long int ldata1[50]={
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	                               0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,
	                               1,1,1,1,1,1,1,1,1,1};
unsigned long int ldata2[50]={
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	                               1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,
	                               0,0,0,0,0,0,0,0,0,0};
int main()
{
	long int NN,K,i,j,I,J;
	long int A;
	for(i=0;i< 50;i++){
		data1[i]=1;
		data2[i]=0;
	}
	printf("  **  ** CASE1 \n");
	for(I=1;I<=50;I++)
	{
		DATA1(I)=1.0;
		DATA2(I)=DATA1(I)+1.0;
		DATA3(I)=DATA2(I)+1.0;
		DATA4(I)=DATA3(I)+1.0;
		DATA5(I)=DATA4(I)+1.0;
		NN=I;
LBL_10:
		;
	}
	for(I=1;I<=NN;I++)
	{
		ANS1(I)=DATA1(I)+DATA2(I)*DATA3(I)/DATA4(I);
		ANS2(I)=(ANS1(I)+DATA1(I))*(ANS1(I)/DATA2(I));
		ANS1(I)=ANS2(I)+ANS1(I)*DATA3(I);
		ANS2(I)=ANS1(I)/ANS1(I)/ANS2(I)/ANS1(I);
LBL_20:
		;
	}
	for(i=1;i<=50;i++)
	{
		printf(" %g %g \n",ANS1(i),ANS2(i));
	}
	printf("  **  ** CASE2 \n");
	for(I=1;I<=50;I++)
	{
		A=I;
		for(J=1;J<=50;J++)
		{
			ANS1(I)=DATA1(J)+DATA2(J);
			ANS2(J)=DATA3(J)-DATA4(J);
			if (J >  A)goto LBL_50         ;
			ANS1(J)=DATA2(J)*DATA3(J);
			ANS2(J)=DATA1(J)/DATA4(J);
LBL_50:
			;
		}
		for(K=1;K<=25;K+=2)
		{
			ANS1(K)=DATA1(K)/DATA2(K)+DATA3(K);
			LDATA2(K)=!LDATA1(K);
			if (K == A)goto LBL_60         ;
			ANS2(K)=DATA3(K)*DATA4(K)*DATA5(K);
			if (K == A)goto LBL_60         ;
			LDATA2(K)=LDATA1(K);
LBL_60:
			;
		}
LBL_40:
		;
	}
	for(i=1;i<=50;i++){
		printf(" %g %g %lu \n",ANS1(i),ANS2(i),LDATA2(i));
	}
	printf("  **  ** CASE3  \n");
	for(I=1;I<=50;I++)
	{
		DATA1(I)=DATA1(I)+DATA2(I)+DATA3(I)+DATA4(I);
		ANS1(I)=DATA1(I);
		DATA2(I)=DATA1(I)+DATA2(I)+DATA3(I)+DATA4(I);
		if ( LDATA1(I)==1)
		{
			ANS3(I)=DATA1(I)/DATA1(I);
		}
		else
		{
			ANS3(I)=DATA2(I)+DATA1(I);
		}
		if (LDATA2(I)==1)
		{
			LDATA2(I)=(!LDATA2(I))?1:0;
		}
LBL_70:
		;
	}
	for(i=1;i<=50;i++){
		printf(" %g %g %g \n",ANS1(i),ANS2(i),ANS3(i));
	}
	for(I=1;I<=3;I++)
	{
		for(J=1;J<=50;J++)
		{
			ANS1(J)=1.0+2.0+3.0+4.0;
			ANS2(J)=ANS1(J)-10.0;
			ANS3(J)=ANS2(J)*ANS1(J);
			if (J == 50)goto LBL_90         ;
			ANS1(J)=ANS1(J)+ANS2(J);
			ANS2(J)=ANS1(J)+ANS2(J)-ANS3(J);
			if (I == 2)goto LBL_90         ;
LBL_90:
			;
		}
LBL_80:
		;
	}
	for(I=1;I<=50;I++)
	{
		if (ANS1(I) >  0.0)goto LBL_101         ;
		if (ANS2(I) >= 1.0)goto LBL_102         ;
		if (ANS3(I) == 0.0)goto LBL_103         ;
		ANS1(I)=ANS2(I)+1.0;
		ANS2(I)=ANS2(I)-0.5;
		ANS3(I)=ANS1(I)+ANS2(I);
LBL_102:
		;
		ANS1(I)=DATA1(I);
LBL_103:
		;
		ANS2(I)=DATA2(I);
LBL_101:
		;
	}
	printf("  **  ** CASE4\n");
	for(i=1;i<=50;i++){
		printf(" %g %g %g \n",ANS1(i),ANS2(i),ANS3(i));
	}
	exit (0);
}
