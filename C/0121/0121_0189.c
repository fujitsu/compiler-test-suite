#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define I11(i)  i11[i-1]
#define R11(i)  r11[i-1]
#define RD11(i) rd11[i-1]
#define RD12(i) rd12[i-1]
#define RD13(i) rd13[i-1]
#define RD14(i) rd14[i-1]
#define RD15(i) rd15[i-1]
#define RD16(i) rd16[i-1]
#define RD17(i) rd17[i-1]
#define RD18(i) rd18[i-1]
#define RD19(i) rd19[i-1]
#define RD20(i) rd20[i-1]
#define RD21(i) rd21[i-1]
#define RD22(i) rd22[i-1]
#define C11(i)  c11[i-1]
#define CD11(i) cd11[i-1]
#define RD30(i) rd30[i-1]
#define RD31(i) rd31[i-1]
#define RD32(i) rd32[i-1]
#define RD33(i) rd33[i-1]
#define RD34(i) rd34[i-1]
#define RD35(i) rd35[i-1]
#define RD36(i) rd36[i-1]
#define RD37(i) rd37[i-1]
#define RD38(i) rd38[i-1]
#define RD39(i) rd39[i-1]
#define RD40(i) rd40[i-1]
#define CD30(i) cd30[i-1]
#define L41(i)  l41[i-1]
#define RD41(i) rd41[i-1]
#define RD42(i) rd42[i-1]
#define RD43(i) rd43[i-1]
#define RD44(i) rd44[i-1]
#define RD45(i) rd45[i-1]
#define RD46(i) rd46[i-1]
#define RD47(i) rd47[i-1]
#define RD48(i) rd48[i-1]
#define RD49(i) rd49[i-1]
#define RD50(i) rd50[i-1]
#define RD51(i) rd51[i-1]
#define RD52(i) rd52[i-1]
#define RD60(i) rd60[i-1]
#define RD61(i) rd61[i-1]
#define RD62(i) rd62[i-1]
#define RD63(i) rd63[i-1]
#define RD64(i) rd64[i-1]
#define RD65(i) rd65[i-1]
#define RD66(i) rd66[i-1]
#define RD67(i) rd67[i-1]
#define RD68(i) rd68[i-1]
#define RD69(i) rd69[i-1]
#define RD70(i) rd70[i-1]
#define CD60(i) cd60[i-1]
long int  i11[10]={
	1,2,1,2,1,2,1,2,1,2};
float     r11[10];
double    rd11[10],rd12[10],rd13[10],rd14[10],rd15[10],rd16[10],rd17[10],
rd18[10],rd19[10],rd20[10],rd21[10],rd22[10];
COMPLEX8  c11[10]={
	1.,1.,1.,1.,2.,2.,2.,2.,2.,2.,
	    3.,3.,3.,3.,3.,3.,3.,3.,2.,2.};
COMPLEX16 cd11[10]={
	2.,1.,3.,3.,3.,3.,3.,3.,3.,3.,
	    2.,2.,2.,2.,2.,2.,2.,1.,2.,1.};
double    rd30[10],rd31[10],rd32[10],rd33[10],rd34[10],rd35[10],rd36[10],
rd37[10],rd38[10],rd39[10],rd40[10];
COMPLEX16 cd30[10];
unsigned long int l41[10];
double    rd41[10],rd42[10],rd43[10],rd44[10],rd45[10],rd46[10],rd47[10],
rd48[10],rd49[10],rd50[10],rd51[10],rd52[10];
double    rd60[10],rd61[10],rd62[10],rd63[10],rd64[10],rd65[10],rd66[10],
rd67[10],rd68[10],rd69[10],rd70[10];
COMPLEX16 cd60[10]={
	1.,2.,1.,2.,3.,4.,3.,4.,3.,4.,
	    2.,2.,2.,2.,2.,2.,2.,1.};
int main()
{
	long int N=10,i,j,I,J;
	double      RDV11=1.5,RDV13;
	double      RDV30=5,RDV31=2.5,RDV32=0.5,RDV33=12.5,RDV34=0.;
	double      RDV60=4,RDV61=-2.,RDV62=0.5,RDV63=23.,RDV64=0.;
	long int IV34;
	for(i=0;i< 10;i++){
		r11[i]=10-(i+1);
		rd14[i]=(i+1);
		rd32[i]=(i+1)*1.1;
		rd34[i]=(i+1)+10;
		rd36[i]=(i+1)-10;
		l41[i]=(fmod((i+1),2))?1:0;
		rd41[i]=0.;
		rd42[i]=0.;
		rd43[i]=0.;
		rd44[i]=0.;
		rd45[i]=0.;
		rd46[i]=0.;
		rd47[i]=0.;
		rd48[i]=0.;
		rd49[i]=0.;
		rd50[i]=0.;
		rd51[i]=0.;
		rd52[i]=0.;
		rd62[i]=(i+1)*1.1;
		rd64[i]=(i+1)*1.1;
		rd66[i]=(i+1)*2.2;
		rd70[i]=0.;
	}
	printf("  *****  *(1)*  DATA TYPE R*8 WITH NO MASK \n");
	RDV13=0.;
	for(I=1;I<=N;I++)
	{
		RD11(I)=1.;
		RD12(I)=RDV11;
		RD13(I)=RD14(I);
		RD15(I)=I;
		RD16(I)=2.+RD12(I);
		RD17(I)=RD13(I)+3.;
		RD18(I)=RD14(I)*RD15(I);
		RD19(I)=I11(I);
		RD20(I)=R11(I);
		RD21(I)=C11(I).real;
		RD22(I)=CD11(I).dreal;
		RDV13=RDV13+
		    (RD11(I)+RD12(I)-RD13(I)+RD14(I)-RD15(I)
		    +RD16(I)-RD17(I)+RD18(I)-RD19(I)
		    +RD20(I)-RD21(I)+RD22(I));
LBL_10:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",RD11(i));
		printf(" %g ",RD12(i));
		printf(" %g ",RD13(i));
		printf(" %g ",RD15(i));
		printf(" %g ",RD16(i));
		printf(" %g ",RD17(i));
		printf(" %g ",RD18(i));
		printf(" %g ",RD19(i));
		printf(" %g ",RD20(i));
		printf(" %g ",RD21(i));
		printf(" %g \n",RD22(i));
	}
	printf(" %g \n",RDV13);
	printf("  *****  *****  DATA TYPE R*8 WITH NO MASK\n");
	for(I=1;I<=N;I++)
	{
		RD30(I)=(double)(I);
		RD31(I)=(double)(int)(RD32(I));
		RD33(I)=RD31(I)+(double)(int)(0.5+RD34(I));
		RD35(I)=fabs(RD33(I))-fmod(RD36(I),RDV30);
		RD37(I)=(RD35(I)>=0)?RDV31:-RDV31;
		RD38(I)=(RD37(I)>RDV32)?RD37(I)-RDV32:0;
		RD39(I)=(RD30(I)>RD31(I))?RD30(I):RD31(I);
		RD39(I)=(RD39(I)>RD33(I))?RD39(I):RD33(I);
		RD39(I)=(RD39(I)>RDV33)  ?RD39(I):RDV33;
		RD40(I)=(double)(CD30(I).dreal);
		RDV34=RDV34+(RD30(I)+RD31(I)+RD32(I)+RD33(I)+
		    RD35(I)+RD37(I)+RD38(I)+RD39(I)+RD40(I));
LBL_20:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",RD30(i));
		printf(" %g ",RD31(i));
		printf(" %g ",RD33(i));
		printf(" %g ",RD35(i));
		printf(" %g ",RD37(i));
		printf(" %g ",RD38(i));
		printf(" %g ",RD39(i));
		printf(" %g \n",RD40(i));
	}
	printf(" %g \n",RDV34);
	RDV13=0.;
	printf("  *****  ***** DATA TYPE R*4 WITH MASK\n");
	for(I=1;I<=N;I++)
	{
		if ( L41(I))goto LBL_30         ;
		RD41(I)=1.;
		RD42(I)=RDV11;
		RD43(I)=RD44(I);
		RD45(I)=I;
		RD46(I)=2.+RD42(I);
		RD47(I)=RD43(I)+3.;
		RD48(I)=RD44(I)*RD45(I);
		RD49(I)=I11(I);
		RD50(I)=R11(I);
		RD51(I)=C11(I).real;
		RD52(I)=CD11(I).dreal;
		RDV13=RDV13+(RD41(I)+RD42(I)-RD43(I)+RD44(I)
		    -RD45(I)+RD46(I)-RD47(I)+RD48(I)
		    -RD49(I)+RD50(I)-RD51(I)+RD52(I));
LBL_30:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",RD41(i));
		printf(" %g ",RD42(i));
		printf(" %g ",RD43(i));
		printf(" %g ",RD45(i));
		printf(" %g ",RD46(i));
		printf(" %g ",RD47(i));
		printf(" %g ",RD48(i));
		printf(" %g ",RD49(i));
		printf(" %g ",RD50(i));
		printf(" %g ",RD51(i));
		printf(" %g \n",RD52(i));
	}
	printf(" %g \n",RDV13);
	RDV64=0.;
	printf("  *****  *****  DATA TYPE R*4 WITH  MASK\n");
	for(I=1;I<=N;I++)
	{
		if (L41(I)==1){
			RD60(I)=(double)(I);
			RD61(I)=(double)(int)(RD62(I));
			RD63(I)=RD61(I)+(double)(int)(0.5+RD64(I));
			RD65(I)=fabs(RD63(I))-fmod(RD66(I),RDV60);
			RD67(I)=(RD65(I)>=0)?RDV61:-RDV61;
			RD68(I)=(RD67(I)>RDV62)?RD67(I)-RDV62:0;
			RD69(I)=(RD60(I)>RD61(I))?RD60(I):RD61(I);
			RD69(I)=(RD69(I)>RD63(I))?RD69(I):RD63(I);
			RD69(I)=(RD69(I)>RDV63)?RD69(I):RDV63;
			RD70(I)=(double)(CD60(I).dreal);
			RDV64=RDV64+(RD60(I)+RD61(I)+RD62(I)+RD63(I)+
			    RD65(I)+RD67(I)+RD68(I)+RD69(I)+RD70(I));
		}
LBL_40:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",RD60(i));
		printf(" %g ",RD61(i));
		printf(" %g ",RD63(i));
		printf(" %g ",RD65(i));
		printf(" %g ",RD67(i));
		printf(" %g ",RD68(i));
		printf(" %g ",RD69(i));
		printf(" %g \n",RD70(i));
	}
	printf(" %g \n",RDV64);
	exit (0);
}
