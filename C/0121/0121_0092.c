#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define LV11(i) lv11[i-1]
#define LV12(i) lv12[i-1]
#define IV11(i) iv11[i-1]
#define CDV11(i) cdv11[i-1]
#define IV21(i) iv21[i-1]
#define IV22(i) iv22[i-1]
#define RV31(i) rv31[i-1]
#define RV32(i) rv32[i-1]
#define DV31(i) dv31[i-1]
unsigned long int lv11[10],lv12[10]={
	1,1,1,1,1,0,0,0,0,0};
long int iv11[10]={
	1,2,3,4,5,6,7,8,9,10};
COMPLEX16 cdv11[10];
long int iv21[10]={
	3,-1,-1,-1,-1,-1,0,0,3,2};
long int iv22[10]={
	3,3,3,3,3,3,3,3,3,3};
float rv31[10]={
	4.0,4.0,4.0,-1.0,-1.0,-1.0,-1.0,-1.0,5.0,5.0};
float rv32[10]={
	1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0};
double dv31[10]={
	8.0,8.0,4.0,4.0,4.0,4.0,4.0,4.0,4.0,4.0};
int main()
{
	float RS11=0.0;
	long int IS23=4,IS22=-10;
	unsigned long int LS31,LS32=0;
	float RS31=10.0,RS32=3.0;
	long int i,IS21,CS11;
	double DS31=4.0;
	for(i=0;i< 5;i++){
		cdv11[i].dreal=1.0;
		cdv11[i].dimag=0.0;
	}
	for(i=5;i< 10;i++){
		cdv11[i].dreal=0.5;
		cdv11[i].dimag=0.5;
	}
	CS11=1;
	for(i=1;i<=10;i++)
	{
		CS11=i+CS11;
		LV11(i)=i< 3 || 7< i;
		IV11(1)=i+IV11(i)+IV11(1);
		LV12(i)=LV11(i) != LV12(i);
		CDV11(i).dreal=RS11-CDV11(i).dreal;
		CDV11(i).dimag=RS11-CDV11(i).dimag;
	}
	printf("  ****  **** (1) **** \n");
	printf(" %ld ",CS11);
	for(i=1;i<=10;i++){
		printf(" %ld ",LV11(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %ld ",LV12(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %ld ",IV11(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" (%g,%g) ",CDV11(i).dreal,CDV11(i).dimag);
	}
	printf("\n");
	for(i=1;i<=10;i++)
	{
		IS21=IV21(i)-IS22;
		if (0 <= IS21)  IS22 = IV21(i);
		if (IV21(i)<0)
		{
			IV22(i)=IS23+IV22(i);
			goto LBL_200;
		}
		else
		{
			if(IV21(i)==0)
			{
				IV22(i)=IS23-IV22(i);
				goto LBL_200;
			}
			IV22(i)=IS23*IV22(i);
		}
LBL_200:
		;
	}
	printf("  ****  **** (2) **** \n");
	printf(" %ld ",IS22);
	for(i=1;i<=10;i++){
		printf(" %ld ",IV21(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %ld ",IV22(i));
	}
	printf("\n");
	for(i=1;i<=10;i++)
	{
		DV31(i)=RV31(i)+((RV31(i)*RV31(i))/RV32(i)/DV31(i)
		    +(RV31(i)*RS32)/DS31-(RS31*(float)(DV31(i))));
		LS31=DV31(i)>3.0;
		if (LS31 == LS32)  RV31(i)=3.0;
		RV32(i)=DV31(i)-RV31(i);
LBL_300:
		;
	}
	printf("  ****  **** (3) **** \n");
	for(i=1;i<=10;i++){
		printf(" %g ",DV31(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %g ",RV31(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %g ",RV32(i));
	}
        printf("\n");
	exit (0);
}
