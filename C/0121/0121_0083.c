#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DV11(i) dv11[i-1]
#define LV21(i) lv21[i-1]
#define IV11(i) iv11[i-1]
#define RV21(i) rv21[i-1]
#define RV22(i) rv22[i-1]
#define RV23(i) rv23[i-1]
#define CDV21(i) cdv21[i-1]
#define LV31(i) lv31[i-1]
#define CDV31(i) cdv31[i-1]
double dv11[10];
unsigned long int lv21[10]={
	1,1,1,0,0,0,1,1,1,0};
long int iv11[10];
float rv21[10],rv22[10],rv23[10];
COMPLEX16 cdv21[10];
unsigned long int lv31[10];
COMPLEX16 cdv31[10];
int main()
{
	double DS11=2.0,DS12=3.0;
	float RS11=1.0;
	unsigned long int LS21=0,LS22=1;
	unsigned long int LS31=1;
	float RS31=1.0;
	double DS31=2.0;
	long int IS21=1,IS22=2;
	long int i,j;
	for(i=0;i<5;i++){
		dv11[i]=1.0;
	}
	for(i=5;i<10;i++){
		dv11[i]=5.0;
	}
	for(i=0;i<10;i++){
		iv11[i]=1;
	}
	for(i=0;i<10;i++){
		rv21[i]=1.0;
	}
	for(i=0;i<3;i++){
		lv31[i]=1;
	}
	for(i=3;i<10;i++){
		lv31[i]=0;
	}
	for(i=0;i<10;i++){
		cdv31[i].dreal=0.0;
		cdv31[i].dimag=0.0;
	}
	for(i=2;i<=9;i++)
	{
		RS11=fmod(DV11(i-1),DS11)-IV11(i);
		DV11(i)=(DV11(i)>DS11)? DV11(i)-DS11:0;
		DV11(i)=DV11(i)+DS12;
LBL_11:
		;
		DV11(i-1)=(RS11*3.0);
		IV11(i)=DV11(i+1)*DS12-RS11;
LBL_100:
		;
	}
	printf("  ****  **** (1) **** \n");
	for(i=1;i<=10;i++){
		printf(" %g  %ld ",DV11(i),IV11(i));
	}
	printf(" %g ",DS11);
	printf(" \n");
	for(i=1;i<=10;i++)
	{
		if (LS21 || LV21(i) && (LV21(11-i) !=  ! LS22))
		{
			RV21(i)=sin(RV21(i))+IS21;
			RV22(i)=cos(RV21(i))+IS21;
		}
		else
		{
			RV21(i)=sin(RV21(i))+IS22;
			RV22(i)=cos(RV21(i))+IS22;
		}
		if (LS21 &&  LS22)
		{
			CDV21(i).dreal=pow((double)(i),3.0);
			CDV21(i).dimag=pow(0.0,3.0);
		}
		else
		{
			CDV21(i).dreal=pow(0.0,4.0);
			CDV21(i).dimag=pow((double)(i),4.0);
		}
		RV23(i)=pow(RV21(i),2)+pow(RV22(i),2);
LBL_200:
		;
	}
	printf("  ****  **** (2) **** \n");
	for(i=1;i<=10;i++){
		printf(" %g  %g  %g ",RV21(i),RV22(i),RV23(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf("(%g ,%g)",CDV21(i).dreal,CDV21(i).dimag);
	}
	printf("\n");
	printf(" %ld %ld %ld %ld ",IS21,IS22,LS21,LS22);
	for(i=1;i<=10;i++){
		printf(" %ld ",LV21(i));
	}
	printf(" \n");
	for(j=2;j<=8;j+=3)
	{
		for(i =1;i <=10;i ++)
		{
			if (LV31(i)==1)goto LBL_31;
			if (LS31==1)goto LBL_32;
			CDV31(i).dreal=(((double)(RS31))*CDV31(i).dreal
			    -((double)(DS31))*CDV31(i).dimag)/2-i;
			CDV31(i).dimag=(((double)(DS31))*CDV31(i).dimag
			    +((double)(DS31))*CDV31(i).dreal)/2-i;
			goto LBL_33;
LBL_31:
			;
			CDV31(i).dreal=CDV31(i).dreal*((double)(0))
			    -CDV31(i).dimag*((double)(DS31));
			CDV31(i).dimag=CDV31(i).dreal*((double)(DS31))
			    +CDV31(i).dimag*((double)(0));
LBL_34:
			;
			goto LBL_310;
LBL_32:
			;
			LV31(i)=LS31&&(i< j);
LBL_33:
			;
			goto LBL_34;
LBL_310:
			;
		}
		printf("  ****  **** (3) **** \n");
		for(i=1;i<=10;i++){
			printf(" %ld ",LV31(i));
		}
		printf(" %ld ",LS31);
		for(i=1;i<=10;i++){
			printf("(%g ,%g)",CDV31(i).dreal,CDV31(i).dimag);
		}
		printf(" \n");
		LS31=0;
LBL_300:
		;
	}
	exit (0);
}
