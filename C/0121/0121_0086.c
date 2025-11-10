#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DV11(i) dv11[i-1]
#define DV12(i) dv12[i-1]
#define DV13(i) dv13[i-1]
#define LV21(i) lv21[i-1]
#define RV21(i) rv21[i-1]
#define CDV21(i) cdv21[i-1]
#define CDV22(i) cdv22[i-1]
#define CDV23(i) cdv23[i-1]
#define IV31(i) iv31[i-1]
#define IV32(i) iv32[i-1]
#define DV31(i) dv31[i-1]
double dv11[10]={
	1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0};
double dv12[10]={
	2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0};
double dv13[10]={
	3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0};
unsigned long int lv21[10]={
	1,1,1,1,0,0,0,1,1,0};
float rv21[10]={
	10.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-10.0};
COMPLEX16 cdv21[10],cdv22[10],cdv23[10],CDS21={
	0.0,0.0};
long int iv31[10]={
	1,2,3,4,5,6,7,8,9,10},
iv32[3]={
	0,0,0};
double dv31[3]={
	0.0,0.0,0.0};
int main()
{
	double DS11=0.0,DS12=0.0;
	unsigned long int LS21=1.0;
	double DS21=0.0,DS22=0.0;
	long int IS31=2;
	double DS31=3.0;
	float RS11,RS12=0.0;
	long int i;
	for(i=0;i< 10;i++){
		cdv21[i].dreal=1.0;
		cdv21[i].dimag=-1.0;
	}
	for(i=0;i< 10;i++){
		cdv22[i].dreal=2.0;
		cdv22[i].dimag=0.0;
	}
	for(i=0;i< 10;i++){
		cdv23[i].dreal=0.0;
		cdv23[i].dimag=-1.0;
	}
	for(i=1;i<=10;i++)
	{
		RS11=DV11(i)+DV12(i)*DV13(i)-3+i;
LBL_11:
		;
		RS12=RS12+RS11;
		DS11=DS11+(pow(RS11,3.0)+i)/2.0;
		DS12=RS11-DV11(i)+DS12;
LBL_100:
		;
	}
	printf("  ****  **** (1) **** \n");
	for(i=1;i<=10;i++){
		printf(" %g %g %g ",DV11(i),DV12(i),DV13(i));
	}
	printf("\n");
	printf(" %g %g %g ",RS12,DS11,DS12);
	printf(" \n");
	for(i=1;i<=10;i++)
	{
		if (LV21(i) != LV21(11-i))
			DS21=(DS21>RV21(i))? DS21:RV21(i);
		if (LV21(i) &&  LS21==1)
		{
			CDS21.dreal=CDS21.dreal+((CDV21(i).dreal*CDV22(i).dreal
			    -CDV21(i).dimag*CDV22(i).dimag)-CDV23(i).dreal);
			CDS21.dimag=CDS21.dimag+((CDV21(i).dreal*CDV22(i).dimag
			    +CDV21(i).dimag*CDV22(i).dreal)-CDV23(i).dimag);
		}
		if (LS21 &&  LV21(11-i)==1)
		{
			DS22=(RV21(i)<DS22)? RV21(i):DS22;
		}
LBL_200:
		;
	}
	printf("  ****  **** (2) **** \n");
	printf(" %g (%g,%g) %g ",DS21,CDS21.dreal,CDS21.dimag,DS22);
	for(i=1;i<=10;i++){
		printf(" %g ",RV21(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" (%g,%g) ",CDV21(i).dreal,CDV21(i).dimag);
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" (%g,%g) ",CDV22(i).dreal,CDV22(i).dimag);
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" (%g,%g) ",CDV23(i).dreal,CDV23(i).dimag);
	}
	printf(" \n");
	for(i=1;i<=10;i++)
	{
		IV31(1)=IV31(1)+IV31(i);
		IV32(1)=IV32(1)+2;
		IV32(2)=IV32(2)+IS31;
		DV31(1)=DS31+DV31(1);
		DV31(2)=DS31+IS31+DV31(2);
		IS31=IS31+2;
LBL_300:
		;
	}
	printf("  ****  **** (2) **** \n");
	for(i=1;i<=10;i++){
		printf(" %ld ",IV31(i));
	}
	for(i=1;i<=3;i++){
		printf(" %ld ",IV32(i));
	}
	for(i=1;i<=3;i++){
		printf(" %g ",DV31(i));
	}
	printf(" %ld %ld ",IS31,i);
        printf("\n");
	exit (0);
}
