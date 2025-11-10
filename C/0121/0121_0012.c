#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i) ra[i-1]
#define RB(i) rb[i-1]
#define RC(i) rc[i-1]
#define RD(i) rd[i-1]
#define IA(i) ia[i-1]
#define IB(i) ib[i-1]
#define DA(i) da[i-1]
#define CEA(i) cea[i-1]
#define CEB(i) ceb[i-1]
#define CEC(i) cec[i-1]
#define CED(i) ced[i-1]
float    ra[20],rb[20];
float    rc[20],rd[20];
long int ia[20],ib[20];
double   da[20];
COMPLEX8 cea[20],ceb[20];
COMPLEX8 cec[20],ced[20];
int main()
{
	float    RMAX;
	float    RSUM;
	long int J1=1,J2=2,J3=3,J4=4,i,j,I,J;
	long int I1,I2,I3;
	for(i=0;i< 20;i++){
		ra[i]=1.;
		rb[i]=2.;
		rc[i]=1.;
		rd[i]=2.;
		ia[i]=1;
		ib[i]=1;
		da[i]=1.;
		cea[i].real=1.;
		cea[i].imag=0.;
		ceb[i].real=2.;
		ceb[i].imag=1.;
		cec[i].real=1.;
		cec[i].imag=0.;
		ced[i].real=2.;
		ced[i].imag=1.;
	}
	for(I1=10;I1>=1;I1-=1)
	{
		if (IA(I1+1) == J4)
		{
			IA(I1)=1.;
			goto LBL_10;
		}
		IA(I1)=IA(I1+1)+1;
LBL_10:
		;
	}
	printf(" ****** NO1***\n");
	for(i=1;i<=10;i++){
		printf(" IA=  %ld \n",IA(i));
	}
	for(I2=1;I2<=10;I2++)
	{
		RA(I2)=RA(I2);
		RB(I2)=DA(I2);
		if (I2 >= 5)goto LBL_21         ;
		DA(I2)=(double)(I2+1);
LBL_22:
		;
		CEA(I2).real=DA(I2)+RA(I2);
		CEA(I2).imag=RB(I2);
LBL_20:
		;
	}
	printf(" **** ***NO2.****\n");
	for(i=1;i<=10;i++){
		printf(" RA= %g ,RB=  %g \n",RA(i),RB(i));
	}
	goto LBL_23;
LBL_21:
	;
	DA(I2)=RC(I2)+RD(I2);
	goto LBL_22;
LBL_23:
	;
	RMAX=0.0;
	RSUM=0.0;
	for(I3=1;I3<=10;I3++)
	{
LBL_50:
		;
		RMAX=(RMAX>CEA(I3).real)?RMAX:CEA(I3).real;
		RMAX=(RMAX>CEB(I3).real)?RMAX:CEB(I3).real;
		RMAX=(RMAX>CEC(I3).real)?RMAX:CEC(I3).real;
LBL_51:
		;
		CEA(I3).real=CEA(I3).real*CEA(I3).real-CEA(I3).imag*CEA(I3).imag;
		CEA(I3).imag=CEA(I3).real*CEA(I3).imag+CEA(I3).imag*CEA(I3).real;
LBL_52:
		;
		RSUM=RSUM+fabs(CEA(I3).real);
LBL_53:
		;
		RC(I3)=CEA(I3).real;
LBL_54:
		;
		RD(I3)=-CEB(I3).imag+CEC(I3).real*CED(I3).real-CEC(I3).imag*CED(I3).imag;
LBL_30:
		;
	}
	printf(" *** **NO.3**\n");
	printf(" RMAX=  %g ,RSUM=  %g \n",RMAX,RSUM);
	exit (0);
}
