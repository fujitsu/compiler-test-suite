#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L(i) l[i-1]
#define RV11(i) rv11[i-1]
#define CV11(i) cv11[i-1]
#define IV21(i) iv21[i-1]
#define RV31(i) rv31[i-1]
#define RV32(i) rv32[i-1]
#define CV31(i) cv31[i-1]
unsigned long int l[10]={
	1,1,1,1,1,1,0,0,0,0};
float rv11[10]={
	1.0,2.0,3.0,4.0,10.0,9.0,8.0,7.0,6.0,5.0};
COMPLEX8 cv11[10],CS11={
	10.0,4.0};
long int iv21[10]={
	2,2,2,2,2,-2,-2,-2,-2,-2};
COMPLEX8 CS21={
	0.0,0.0},
CS22={
	0.0,1.0};
float rv31[10]={
	2.0,1.0,10.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0};
float rv32[10]={
	1.0,2.0,5.0,0.0,3.0,3.0,3.0,3.0,3.0,3.0};
COMPLEX8 cv31[10];
int main()
{
	double DS11=3.0,DS12=4.0;
	float RS21=0.0,RS22=0.0;
	double DS31=0.0,DS32=0.0;
	long int IS31=-1000000,IS32=1000000;
	long int i,j;
	for(i=0;i< 5;i++){
		cv11[i].real=5.0;
		cv11[i].imag=5.0;
	}
	for(i=5;i< 10;i++){
		cv11[i].real=0.0;
		cv11[i].imag=5.0;
	}
	for(i=0;i< 5;i++){
		cv31[i].real=3.0;
		cv31[i].imag=0.0;
	}
	for(i=5;i< 10;i++){
		cv31[i].real=0.5;
		cv31[i].imag=0.1;
	}
	for(i=1;i<=10;i++)
	{
		if (L(i)==1)
		{
			DS11=(DS11>RV11(i))? DS11:RV11(i);
			DS12=(RV11(i)<DS12)? RV11(i):DS12;
			CV11(i).real=(float)(((float)(CV11(i).real)> CS11.imag)?
			    (float)(CV11(i).real):CS11.imag);
			CV11(i).imag=(float)(CV11(i).imag);
			if (L(11-i)==1)
				CV11(i).real=10.0;
			CV11(i).imag=10.0;
		}
LBL_100:
		;
	}
	printf("  ****  **** (1) ****\n");
	printf(" %g  %g ",DS11,DS12);
	for(i=1;i<=10;i++){
		printf("(%g,%g)",CV11(i).real,CV11(i).imag);
	}
	printf("\n");
	for(j=1;j<=2;j++)
	{
		for(i=1;i<=2;i++)
		{
			if (CS21.real == CS22.real)
			{
				RS21=RS21+fabs(IV21(i))*i;
			}
			else
			{
				RS22=RS22+fabs(IV21(i))*i;
				IV21(i)=IV21(i)*2;
			}
LBL_200:
			;
		}
		printf("  ****  **** (2) **** \n");
		printf("(%g,%g) (%g,%g)",CS21.real,CS21.imag,CS22.real,CS22.imag);
		printf(" %g  %g ",RS21,RS22);
		for(i=1;i<=10;i++){
			printf(" %ld ",IV21(i));
		}
		printf("\n");
LBL_210:
		;
		CS21.real=CS22.real;
		CS21.imag=CS22.imag;
		j=j;
	}
	for(i=1;i<=10;i++)
	{
		RV31(i)=(RV31(i)>(RV31(i)+RV32(i))/2)?
		    RV31(i):(RV31(i)+RV32(i))/2;
		DS31=(sqrt(RV31(i)*RV32(i))>DS31)?
		    sqrt(RV31(i)*RV32(i)):DS31;
		DS31=(RV31(i)>DS31)? RV31(i):DS31;
		RV31(11-i)=(RV31(11-i)<(RV31(i)+RV32(i))/2)?
		    RV31(11-i):(RV31(i)+RV32(i))/2;
		DS32=(sqrt(RV31(11-i)*RV32(11-i))<DS32)?
		    sqrt(RV31(11-i)*RV32(11-i)):DS32;
		DS32=(RV31(11-i)<DS32)? RV31(11-i):DS32;
		RV31(i)=((int)(CV31(i).real)<(int)(RV31(i)))?
		    (int)(CV31(i).real):(int)(RV31(i));
		IS31=(IS31>RV31(i))? IS31:RV31(i);
LBL_300:
		;
		IS32=(IS32<(pow(1,i)))? IS32:pow(1,i);
	}
	printf("  ****  **** (3) **** \n");
	printf(" %g  %g  %ld  %ld ",DS31,DS32,IS31,IS32);
        printf("\n");
	exit (0);
}
