#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DV11(i) dv11[i-1]
#define CV11(i) cv11[i-1]
#define CDV21(i) cdv21[i-1]
#define LV31(i) lv31[i-1]
#define IV31(i) iv31[i-1]
#define DV31(i) dv31[i-1]
double dv11[10];
COMPLEX8 cv11[10];
COMPLEX16 CDS11={
	0.0,1.0};
COMPLEX8 CS21={
	0.0,1.0};
COMPLEX16 cdv21[10];
unsigned long int lv31[10]={
	1,1,1,1,1,0,0,0,1,1};
long int iv31[10]={
	0,0,0,0,0,0,0,0,0,0};
double dv31[10]={
	0,0,0,0,0,0,0,0,0,0};
int main()
{
	float RS11=3.0,RS12=2.0;
	double DS21=0.0,DS22=1.0,DS23=200.0,DS24=1.0;
	float RS31=0.0,RS32=0.0;
	long int i,IS31=0;
	for(i=0;i<3;i++){
		cdv21[i].dreal=1.0;
		cdv21[i].dimag=2.0;
	}
	for(i=3;i<6;i++){
		cdv21[i].dreal=10.0;
		cdv21[i].dimag=0.0;
	}
	for(i=6;i<9;i++){
		cdv21[i].dreal=-5.0;
		cdv21[i].dimag=0.0;
	}
	cdv21[9].dreal=0.0;
	cdv21[9].dimag=-10.0;
	for(i=1;i<=10;i++)
	{
		DV11(i)=i;
		CV11(i).real=i;
		CV11(i).imag=i;
		if (CV11(i).real ==(float)(3.0))
			RS11=RS11+(float)(DV11(i));
LBL_11:
		;
		CV11(i).real=(float)((float)(CV11(i).real));
		CV11(i).imag=(float)(-(float)(CV11(i).real));
		CV11(1).real=CV11(1).real+CV11(i).real;
		CV11(1).imag=CV11(1).real+CV11(i).imag;
		CDS11.dreal=CDS11.dreal+(DV11(i)/RS12);
		CDS11.dimag=CDS11.dimag+(DV11(i)/RS12);
LBL_100:
		;
	}
	printf("  ****  **** (1) ****\n");
	for(i=1;i<=10;i++){
		printf(" %g ",DV11(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf("(%g,%g)",CV11(i).real,CV11(i).imag);
	}
	printf("\n");
	printf(" %g ",RS11);
	printf(" %g ",RS12);
	printf("(%g,%g)",CDS11.dreal,CDS11.dimag);
	printf(" \n");
	for(i=1;i<=9;i++)
	{
		DS22=(float)(CDV21(i).dreal) < DS24?
		    (float)(CDV21(i).dreal):DS24;
		DS21=(DS21>DS22)?  DS21:DS22;
		CDV21(i).dreal=DS22-i;
		CDV21(i).dimag=DS22-i;
		CDV21(i+1).dreal=CS21.real;
		CDV21(i+1).dimag=CS21.imag;
		DS23=(pow((double)(CDV21(i).dreal)-5,2))>DS23?
		    (pow((double)(CDV21(i).dreal)-5,2)):DS23;
LBL_200:
		;
	}
	printf("  ****  **** (2) ****\n");
	printf(" %g ",DS21);
	printf(" %g ",DS23);
	for(i=1;i<=10;i++){
		printf("(%g,%g) ",CDV21(i).dreal,CDV21(i).dimag);
	}
	printf(" \n");
	for(i=1;i<=10;i++)
	{
		if (i >  5)
		{
			IS31=IS31+2;
			IV31(i)=i;
		}
		else
		{
			RS31=RS31+2.;
			DV31(i*2)=i;
		}
		if ( ! (LV31(i) == (i  >  6)))
			RS32=IV31(i)+RS32;
LBL_300:
		;
	}
	printf("  ****  **** (3) ****\n");
	printf(" %ld ",IS31);
	for(i=1;i<=10;i++){
		printf(" %ld ",IV31(i));
	}
	printf("\n");
	printf(" %g ",RS31);
	for(i=1;i<=10;i++){
		printf(" %g ",DV31(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %ld ",LV31(i));
	}
	printf(" %g ",RS32);
        printf("\n");
	exit (0);
}
