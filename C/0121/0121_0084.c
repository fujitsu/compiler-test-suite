#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define LV11(i) lv11[i-1]
#define RV11(i) rv11[i-1]
#define DV11(i) dv11[i-1]
#define DV21(i) dv21[i-1]
#define CV21(i) cv21[i-1]
#define CV22(i) cv22[i-1]
#define LV31(i) lv31[i-1]
#define IV31(i) iv31[i-1]
#define RV31(i) rv31[i-1]
unsigned long int lv11[10]={
	1,1,1,1,1,1,1,0,0,0};
float rv11[10]={
	1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0};
double dv11[10]={
	1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0};
COMPLEX16 CDS11={
	1.5,1.5};
double dv21[10];
COMPLEX8 cv21[10],cv22[11];
unsigned long int lv31[10]={
	0,0,0,1,1,1,1,0,0,0};
long int iv31[11]={
	1,1,1,1,1,1,1,1,1,1,1};
float rv31[11]={
	2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0};
COMPLEX8 CS31={
	0.0,0.0};
int main()
{
	unsigned long int LS11=1;
	double DS11=1.5;
	long int IS21,IS22=4;
	float RS21;
	float RS31=2.0;
	long int i;
	for(i=0;i< 5;i++){
		cv21[i].real=1.0;
		cv21[i].imag=1.0;
	}
	for(i=5;i<10;i++){
		cv21[i].real=1.0;
		cv21[i].imag=-1.0;
	}
	for(i=1;i<=10;i++)
	{
		if (LS11==1)
		{
			if (LV11(i) &&  LS11==1)
			{
				DV11(i)=fabs(CDS11.dreal)*DS11-fabs(CDS11.dreal*DS11)+i;
			}
			if ( ! (LS11 &&  LV11(i))==1)
			{
				DV11(i)=fabs(CDS11.dreal)*DS11-fabs(CDS11.dreal*DS11)-i;
			}
		}
		if (LV11(i)==1)
		{
			if (9 >  DV11(i) &&  LS11)goto LBL_11;
			RV11(i)=DV11(i);
			goto LBL_12;
LBL_11:
			;
			RV11(i)=-DV11(i)+0.5;
LBL_12:
			;
		}
		else
		{
			RV11(i)=0.0;
		}
LBL_100:
		;
	}
	printf("  ****  **** (1) **** \n");
	for(i=1;i<=10;i++){
		printf(" %g  %g ",DV11(i),RV11(i));
	}
	printf(" \n");
	for(i=1;i<=10;i++)
	{
		DV21(i)=i;
LBL_21:
		;
		CV21(i).real=DV21(i);
		CV21(i).imag=DV21(i);
		IS21=DV21(i)/IS22;
		RS21=-IS21;
		CV22(i+1).real=CV21(i).real*1.0/IS22;
		CV22(i+1).imag=CV21(i).imag*1.0/IS22;
LBL_200:
		;
		CV22(i).real=-CV22(i+1).real;
		CV22(i).imag=-CV22(i+1).imag;
	}
	printf("  ****  **** (2) **** \n");
	for(i=1;i<=10;i++){
		printf(" %g (%g,%g) ",DV21(i),CV21(i).real,CV21(i).imag);
	}
	printf("\n");
	for(i=1;i<=11;i++){
		printf("(%g,%g)",CV22(i).real,CV22(i).imag);
	}
	printf(" \n");
	for(i=1;i<=10;i++)
	{
		if (LV31(i) &&  i >  4)goto LBL_31         ;
		if (RS31 == 2.0)
		{
			IV31(i)=i*i-RV31(i);
			if (CS31.real == 0.0) IV31(i) = CS31.real - RV31(i);
			if ( ! LV31(11-i)==1)
			{
				IV31(i)=RV31(i)*i;
			}
			else
			{
				RV31(i+1)=IV31(i+1)-i;
			}
		}
		goto LBL_300;
LBL_31:
		;
		RV31(i)=i;
		IV31(i)=0;
LBL_300:
		;
	}
	printf("  ****  **** (3) **** \n");
	for(i=1;i<=10;i++){
		printf(" %ld ",LV31(i));
	}
	printf("\n");
	printf(" %g ",RS31);
	for(i=1;i<=11;i++){
		printf(" %ld  %g ",IV31(i),RV31(i));
	}
        printf("\n");
	exit (0);
}
