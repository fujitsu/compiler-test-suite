#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i)  ra[i+9]
#define RB(i)  rb[i+9]
#define RC(i)  rc[i+9]
#define CEA(i) cea[i+9]
#define CEB(i) ceb[i+9]
#define CEC(i) cec[i+9]
float ra[30],rb[30];
float rc[30]={
	1.,1.,1.,1.,1.,1.,1.,1.,1.,1.,
	               1.,1.,1.,1.,1.,2.,2.,2.,2.,2.,
	               2.,2.,2.,2.,2.,2.,2.,2.,2.,2.};
COMPLEX8 cea[30],ceb[30],cec[30];
int main()
{
	float    RMAX=-100.,RSUM=0.0;
	COMPLEX8 CED;
	long int i,I1,I2,I3,ID=1,J1=1,J2=2,J3=3,J4=4,IMX;
	for(i=0;i< 30;i++){
		ra[i]=1.;
		rb[i]=2.;
		cea[i].real=1.0;
		cea[i].imag=0.0;
		ceb[i].real=0.0;
		ceb[i].imag=1.0;
		cec[i].real=1.0;
		cec[i].imag=1.0;
	}
	for(I1=J3*J1*J2-J4*J2+J1;I1<=J3*J4+J1*J2-J4;I1+=2)
	{
		if (RA(I1) <  RB(I1))goto LBL_1         ;
		RA(I1)=RA(I1)-RB(I1);
LBL_1:
		;
		RB(I1)=CEA(I1).real+
		    (CEB(I1).real*CEC(I1).real-CEB(I1).imag*CEC(I1).imag)*CEA(I1).imag;
		ID=ID+1;
		if (ID-4 < 0) goto LBL_2;
		if (ID-4 == 0) goto LBL_3;
		goto LBL_5;
LBL_2:
		;
		if (RB(I1) >  2.)goto LBL_5         ;
		RB(I1)=I1+ID;
LBL_3:
		;
		if (RB(I1) <= 2 &&  CEA(I1).real <  0.)
		{
			RB(I1)=ID;
		}
		else
		{
			RB(I1)=RA(I1);
			CEA(I1).real=CEA(I1).real;
			CEA(I1).imag=CEA(I1).imag+CEB(I1).imag;
			goto LBL_5;
		}
		RC(I1)=I1;
LBL_5:
		;
		RMAX=(RMAX>RB(I1)) ? RMAX:RB(I1);
		IMX=I1;
LBL_10:
		;
	}
	printf(" ***  ***\n");
	printf(" RMAX= %g \n",RMAX);
	printf(" IMX = %ld \n",IMX);
	for(I2=J2*J3-J4*J1-J2*J1;I2<=J3*4-1;I2+=J2*J3-5)
	{
		if (RB(I2) < 0) goto LBL_6;
		if (RB(I2) == 0.) goto LBL_7;
		goto LBL_8;
LBL_6:
		;
		goto LBL_9;
LBL_7:
		;
		if (RA(I2-1) >  1.)goto LBL_6         ;
		CED.real=J1;
		CED.imag=RB(I2);
		RA(I2-1)=exp(CED.real);
		goto LBL_9;
LBL_8:
		;
		RA(I2-1)=CEA(I2).imag;
LBL_9:
		;
		if (I1 >  8)
		{
			goto LBL_20;
		}
		else
		{
			RB(I2)=RA(I2)*CEA(I1+J1*J2-J3).imag;
		}
LBL_20:
		;
	}
	printf(" ***  *** \n");
	printf(" ### RA RB ###\n");
	for(i=1;i<=10;i++){
		printf(" %g  %g \n",RA(i),RB(i));
	}
LBL_90:
	;
	ID=1;
	for(I3=J3*J2-7;I3<=J2*J3+J4*J1+J2;I3+=J3*J2-J4*J1-J1)
	{
		RA(I3)=RA(I3)+RB(I3-1)+RB(I3-2);
		CEA(I3).real=RA(I3);
		CEA(I3).imag=RB(I3);
		ID=ID+J3*J2*J1-J4*J1-1;
		if (((CEA(I3).real-CEA(I3+1).real) != -1.0) &&
		    ((CEA(I3).imag-CEA(I3+1).imag) !=  1.0)  )
		{
			CEA(I3).real=-1.0;
			CEA(I3).imag=1.0;
		}
		else
		{
			CEA(I3).real=CEA(I3+1).real;
			CEA(I3).imag=CEA(I3+1).imag;
		}
		RSUM=RSUM+CEA(I3+1).real;
		if (RC(ID+1) <  RC(ID+2)) goto LBL_30         ;
		RC(ID+1)=RC(ID+2)+RC(ID+1);
LBL_30:
		;
	}
	printf(" ***  ***\n");
	printf(" RSUM= %g \n",RSUM);
	printf(" ### RC ###\n");
	for(i=1;i<=10;i++){
		printf(" %g \n",RC(i));
	}
	exit (0);
}
