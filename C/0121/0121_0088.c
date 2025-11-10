#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DV11(i) dv11[i-1]
#define CV11(i) cv11[i-1]
#define CV21(i) cv21[i-1]
#define CV22(i) cv22[i-1]
#define DV31(i) dv31[i-1]
#define IV31(i) iv31[i-1]
double dv11[10]={
	-1.0,-1.0,-1.0,-1.0,-1.0,0.0,0.0,0.0,0.0,0.0};
COMPLEX8 cv11[10],cv21[10],cv22[10];
COMPLEX8 CS21={
	0.0,0.0};
double dv31[10]={
	1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0};
long int iv31[10]={
	1,1,1,1,1,1,1,1,1,1};
int main()
{
	long int IS11;
	float RS11=0.0;
	float RS21=0.0,RS22=0.0,RS23=100.0;
	long int i,IDIF1,IDIF2,IMIN1=0,IMIN2=0,IMAX1=0,IMAX2=0;
	double DDIF1,DDIF2,DMIN1=0.0,DMIN2=0.0,DMAX1=0.0,DMAX2=0.0;
	for(i=0;i< 10;i++){
		cv11[i].real=0.0;
		cv11[i].imag=0.0;
	}
	cv21[0].real=3.0;
	cv21[0].imag=2.0;
	cv21[1].real=2.0;
	cv21[1].imag=4.0;
	for(i=2;i< 10;i++){
		cv21[i].real=0.0;
		cv21[i].imag=0.0;
	}
	DV31(2)=5.0;
	DV31(5)=-5.0;
	IV31(2)=5;
	IV31(5)=-5;
	for(i=1;i<=9;i++)
	{
		if (3 <= i &&  i <  7)
		{
			IS11=i;
		}
		else
		{
			IS11=-i;
		}
		DV11(i)=IS11/2.0 -RS11;
		if (DV11(i+1)< 0)
		{
			if (RS11 == 0 )  DV11(i)=DV11(i)+1;
		}
		if (DV11(i) >  1)
		{
			DV11(i)=DV11(i)-1;
		}
		CV11(i).real=(float)(DV11(i))*(float)(0)
		    -(float)(0)*(float)(DV11(i));
		CV11(i).imag=(float)(DV11(i))*(float)(DV11(i))
		    +(float)(0)*(float)(0);
LBL_100:
		;
	}
	printf("  ****  **** (1) **** \n");
	for(i=1;i<=10;i++){
		printf(" %g (%g,%g) ",DV11(i),CV11(i).real,CV11(i).imag);
	}
	printf("\n");
	for(i=1;i<=10;i++)
	{
		RS21=RS21+3.0;
		CS21.real=CS21.real-1.0;
		CS21.imag=CS21.imag-3.0;
		CV21(i).real=((float)(CV21(i).real)>CV21(i).imag)?
		    (float)(CV21(i).real):CV21(i).imag;
		RS22=(CV21(i).real>RS22)? CV21(i).real:RS22;
		CV22(i).real=CV21(i).real*i-i;
		CV22(i).imag=CV21(i).imag*i-i;
		CV22(i).real=((float)(CV22(i).real)>CV22(i).imag)?
		    (float)(CV22(i).real):CV22(i).imag;
		RS23=(RS23<CV22(i).real)? RS23:CV22(i).real;
LBL_200:
		;
	}
	printf("  ****  **** (2) **** \n");
	printf(" %g %g %g (%g,%g) ",RS21,RS22,RS23,CS21.real,CS21.imag);
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" (%g,%g) %ld ",CV22(i).real,CV22(i).imag,i);               
		;
	}
	printf("\n");
	for(i=1;i<=10;i++)
	{
		DDIF1=DMIN1-DV31(i);
		if (DDIF1 > 0.0) DMIN1= DV31(i);
		DDIF2=DMIN2-DV31(i);
		if (0.0 <= DDIF2) DMIN2= DV31(i);
		DDIF1=DMAX1-DV31(11-i);
		if (0.0 >= DDIF1)  DMAX1 = DV31(11-i);
		DDIF2=DMAX2-DV31(11-i);
		if (DDIF2 < 0.0) DMAX2 = DV31(11-i);
		IDIF1=IMIN1-IV31(i);
		if (IDIF1< 0)
		{
			IMIN1=IV31(i);
		}
		else
		{
			IDIF2=IMIN2-IV31(11-i);
			if (IDIF2 > 0)goto LBL_34 ;
			IMIN2=IV31(11-i);
		}
LBL_34:
		;
		IDIF1=IMAX1-IV31(i);
		if (0 > IDIF1)goto LBL_35 ;
		IMAX1=IV31(i);
LBL_35:
		;
		IDIF2=IMAX2-IV31(i);
		if (IDIF2>0)
			IMAX2=IV31(i);
	}
	printf("  ****  **** (3) **** \n");
	printf(" %g %g %g %g ",DMIN1,DMIN2,DMAX1,DMAX2);
	printf(" %ld %ld %ld %ld \n",IMIN1,IMIN2,IMAX1,IMAX2);
	exit (0);
}
