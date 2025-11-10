#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RV11(i) rv11[i-1]
#define RV12(i) rv12[i-1]
#define CV11(i) cv11[i-1]
#define DV21(i) dv21[i-1]
#define RV31(i) rv31[i-1]
#define CV31(i) cv31[i-1]
float rv11[10],rv12[10];
COMPLEX8 cv11[10];
double dv21[12]={
	0.0,0.0,0.0,0.0,0.0,0.0,0.0,-1.0,-1.0,1.0,0.0,-2.0};
COMPLEX8 CS21={
	0.0,0.0};
float rv31[10];
COMPLEX8 cv31[10];
int main()
{
	long int IS11=1,IS12;
	double DS11=2.0;
	double DS21=10.0,DS22=0.0,DS23=1.0,DS24=1.0,DS25=0.0,DS26=0.0;
	long int IS21=0,IS22=0;
	long int i;
	float RS31=0.0,RS32=1.0,RS33=1.0,RS34=1.0;
	for(i=0;i< 7;i++){
		cv31[i].real=1.0;
		cv31[i].imag=1.0;
	}
	for(i=7;i<10;i++){
		cv31[i].real=0.125;
		cv31[i].imag=5.0;
	}
	for(i=1;i<=10;i++)
	{
		RV11(i)=i*(5-i);
		CV11(i).real=RV11(i);
		CV11(i).imag=0.0;
		CV11(i).real=CV11(i).real/DS11+IS11-2;
		CV11(i).imag=CV11(i).imag/DS11+IS11-2;
		IS12=RV11(i)*RV11(i);
		RV12(i)=IS12+i;
		CV11(i).real=IS12;
		CV11(i).imag=0.0;
	}
	printf("  ****  **** (1) **** \n");
	for(i=1;i<=10;i++){
		printf(" %g %g ",RV11(i),RV12(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf("(%g,%g)",CV11(i).real,CV11(i).imag);
	}
	printf("\n");
	for(i=1;i<=10;i++)
	{
		if (i>2)
		{
			DS22=DV21(i+1)+DV21(i-1);
			DS21=DV21(i);
		}
		if (DV21(i) >  DS23)
		{
			DS23=DV21(i);
			IS21=i;
			IS22=i*2+1;
			CS21.real=DV21(i);
			CS21.imag=0.0;
		}
		if (sin(DV21(i)) >= DS24)goto LBL_200 ;
		DS24=sin(DV21(i));
		DS25=DV21(i);
		DS26=cos(DV21(i));
LBL_200:
		;
	}
	printf("  ****  **** (2) **** \n");
	for(i=1;i<=12;i++){
		printf(" %g ",DV21(i));
	}
	printf(" %g %g ",DS21,DS22);
	printf(" %ld %ld %g (%g,%g) ",IS21,IS22,DS23,CS21.real,CS21.imag);
	printf(" %g %g %g ",DS24,DS25,DS26);
	printf("\n");
	for(i=1;i<=10;i++)
	{
		if (fabs(CV31(i).real) <= RS31)goto LBL_31 ;
		RS31=fabs(CV31(i).real);
		RS32=(float)(CV31(i).real);
		RS33=CV31(i).imag;
LBL_31:
		;
		RV31(i)=RS34/(float)(CV31(i).real);
		if (i != 1 ) {
			CV31(i-1).real=0.0*i;
			CV31(i-1).imag=1.0*i;
		}
LBL_300:
		;
	}
	printf("  ****  **** (3) **** \n");
	printf(" %g %g %g ",RS31,RS32,RS33);
	for(i=1;i<=10;i++){
		printf(" %g (%g,%g) ",RV31(i),CV31(i).real,CV31(i).imag);
	}
        printf("\n");
	exit (0);
}
