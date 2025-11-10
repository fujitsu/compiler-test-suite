#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DV11(i) dv11[i-1]
#define DV12(i) dv12[i-1]
#define CV11(i) cv11[i-1]
#define CV12(i) cv12[i-1]
#define RV21(i) rv21[i-1]
#define DV21(i) dv21[i-1]
#define RV32(i) rv32[i-1]
#define RV31(i) rv31[i-1]
#define IV31(i) iv31[i-1]
double dv11[10]={
	16.0,9.0,8.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0};
double dv12[10]={
	3.0,3.0,3.0,3.0,3.0,1.0,1.0,1.0,1.0,1.0};
COMPLEX8 cv11[10],cv12[10];
float rv21[10]={
	-1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0};
double dv21[10]={
	3.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,2.0,0.0};
float rv32[5]={
	0.0,0.0,0.0,0.0,0.0};
float rv31[10]={
	1.0,1.0,1.0,1.0,1.0,10.0,10.0,10.0,10.0,10.0};
long int iv31[10]={
	0,1,2,3,4,5,6,7,8,9};
COMPLEX8 CS31={
	1.0,1.0};
int main()
{
	long int IS11,IS12=1,IS13=3;
	float RS11=16.0;
	double DS31=2.0;
	long int i;
	float RS21=0.0,RS22=0.0;
	double DS21=0.0,DS22=9.0;
	for(i=0;i< 4;i++){
		cv11[i].real=1.0;
		cv11[i].imag=0.5;
	}
	for(i=4;i< 8;i++){
		cv11[i].real=2.0;
		cv11[i].imag=3.0;
	}
	for(i=8;i< 10;i++){
		cv11[i].real=1.0;
		cv11[i].imag=1.0;
	}
	for(i=1;i<=10;i++)
	{
		IS11=RS11-DV11(i);
		CV11(i).real=IS11*CV11(i).real*IS12;
		CV11(i).imag=IS11*CV11(i).imag*IS12;
		CV12(i).real=CV11(i).real/RS11-DV12(IS12);
		CV12(i).imag=CV11(i).imag/RS11-DV12(IS12);
		IS12=IS12+1;
		DV12(IS12-1)=DV12(IS12-1)*IS12*IS13;
	}
	printf("  ****  **** (1) **** \n");
	for(i=1;i<=10;i++){
		printf("(%g,%g)",CV11(i).real,CV11(i).imag);
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf("(%g,%g)",CV12(i).real,CV12(i).imag);
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %g %g %ld ",DV11(i),DV12(i),i);
	}
	printf("\n");
	printf(" %ld ",IS12);
	printf("\n");
	for(i=2;i<=8;i++)
	{
		RV21(i-1)=(RV21(i-1)>RV21(i))?  RV21(i-1):RV21(i);
		RS21=(RV21(i-1)>RS21)?  RV21(i-1):RS21;
		RV21(i)=(i-1)/4.0+DV21(i);
		DV21(i)=i*3-((RV21(i) > RV21(i+1))?  RV21(i):RV21(i+1));
		RS22=(RV21(i) < RS22)?  RV21(i):RS22;
		DS21=(DS21 > DV21(i))?  DS21:DV21(i);
		DV21(i)=(RV21(i)*RV21(i));
		DS22=(DS22 < fabs(DV21(i)))?  DS22:fabs(DV21(i));
	}
	printf("  ****  **** (2) **** \n");
	printf(" %g  %g  %g  %g ",RS21,RS22,DS21,DS22);
	for(i=1;i<=10;i++){
		printf(" %g  %g ",RV21(i),DV21(i));
	}
	printf("\n");
	for(i=1;i<=10;i++)
	{
		if (i >  5)
		{
			RV32(5)=RV32(5)+RV31(i);
		}
		else
		{
			RV32(1)=RV31(i)+RV32(1);
			RV32(2)=RV31(i+1)+RV32(2);
			RV32(3)=RV32(3)+RV31(i+2);
			RV32(4)=RV32(4)+RV31(i+3);
		}
		IV31(1)=IV31(1)+(int)(IV31(i)*DS31-CS31.real);
	}
	printf("  ****  **** (3) **** \n");
	for(i=1;i<=10;i++){
		printf(" %ld  %g ",IV31(i),RV31(i));
	}
	for(i=1;i<=5;i++){
		printf(" %g ",RV32(i));
	}
        printf("\n");
	exit (0);
}
