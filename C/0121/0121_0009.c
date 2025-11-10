#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i) ra[i-1]
#define RB(i) rb[i-1]
#define RC(i) rc[i-1]
#define RD(i) rd[i-1]
#define RE(i) re[i-1]
#define CEA(i) cea[i-1]
#define CEB(i) ceb[i-1]
#define CEC(i) cec[i-1]
#define CED(i) ced[i-1]
#define IA(i) ia[i-1]
float ra[20],rb[20],rc[20],rd[20];
float re[20];
COMPLEX8 cea[20],ceb[20],cec[20],ced[20];
long int ia[20];
int main()
{
	float    RDIF=0,RDIF2=0;
	COMPLEX8 CSUM={
		0.,0.	};
	long int i,I1,I2=2,I3,J1=1,J2=2,J3=3,J4=4,IMN=0,IMN2=0;
	float RMIN=1000.;
	float RMIN2=10000.;
	long int ID;
	for(i=0;i< 20;i++){
		ra[i]=1.;
		rb[i]=2.;
		rc[i]=3.;
		rd[i]=4.;
		re[i]=5.;
		cea[i].real=1.;
		cea[i].imag=1.;
		ceb[i].real=1.;
		ceb[i].imag=1.;
		cec[i].real=2.;
		cec[i].imag=2.;
		ced[i].real=2.;
		ced[i].imag=2.;
		ia[i]=1;
	}
	ID=0;
	for(I1=1;I1<=J4*J2+1;I1+=J3*J4*J1-J2*J3*J1-J4-1)
	{
		ID=ID+J3*J2-5;
		RA(I1)=CEA(I1).real+CEA(I1).real;
		RB(I1)=(CEB(I1).real+CEB(I1).real)/2.;
		RC(ID)=CEC(ID).real*CEC(I1).real-CEC(ID).imag*CEC(I1).imag;
		RD(ID)=CED(ID).real*CED(I1).real-CED(ID).imag*CED(I1).imag;
		if ((RA(I1) >  2.*RB(I1))||(RC(ID) >  RD(ID)))
		{
			RA(I1)=2*RB(I2);
			RC(ID)=RD(ID);
		}
		goto LBL_10;
LBL_1:
		;
		RE(I1)=0.0;
LBL_10:
		;
		if (RE(I1) != 0.0)goto LBL_1         ;
	}
	printf(" ***  ***\n");
	for(i=1;i<=20;i++){
		printf(" RC= %g ,RD= %g \n",RC(i),RD(i));
	}
	for(I2=1;I2<=J3*J2*J2-J3+J4*J1;I2+=2)
	{
		if (IA(I2) >= 0)
		{
			CEA(I2).real=(CEC(I2).real*CEC(I2+IA(I2)).real) -
			    (CEC(I2).imag*CEC(I2+IA(I2)).imag)+RA(I2)+IA(I2);
			CEA(I2).imag=(CEC(I2).real*CEC(I2+IA(I2)).imag) +
			    (CEC(I2).imag*CEC(I2+IA(I2)).real);
			CEB(I2).real=(CEC(I2).real*CEC(I2+IA(I2)).real) -
			    (CEC(I2).imag*CEC(I2+IA(I2)).imag)+RA(I2)+IA(I2);
			CEB(I2).imag=(CEC(I2).real*CEC(I2+IA(I2)).imag) +
			    (CEC(I2).imag*CEC(I2+IA(I2)).real);
		}
		RB(I2)=CEA(I2).real+RC(I2)+IA(I2);
		RC(I2)=CEB(I2).real+RC(I2)+IA(I2);
		if (((RB(I2)+CEB(I2).real) != 3.0) && (CEB(I2).imag != 3.0))
		{
			RB(I2)=0.0;
			CEB(I2).real=0.0;
			CEB(I2).imag=0.0;
		}
		goto LBL_20;
LBL_2:
		;
		RA(I2)=0.0;
LBL_20:
		;
		if (RA(I2) != 0.0)goto LBL_2         ;
	}
	printf(" ***  *** \n");
	for(i=1;i<=20;i++){
		printf(" CEA= %g %g ,CEB= %g %g \n",CEA(i).real,CEA(i).imag,
		    CEB(i).real,CEB(i).imag);
	}
	for(i=1;i<=20;i++){
		printf(" RB= %g ,RC= %g \n",RB(i),RC(i));
	}
	ID=0;
	for(I3=1;I3<=J3*J4+1;I3+=J3+J4*J1-J3*J2)
	{
		RDIF=RMIN-CEA(I3).real;
		ID=ID+J3*J2*J1-J4*J2+J3;
		RDIF2=RMIN2-CEB(ID).real;
		CSUM.real=CSUM.real+CEA(I3).real+CEA(ID).real;
		CSUM.imag=CSUM.imag+CEA(I3).imag+CEA(ID).imag;
		if (RDIF < 0) goto LBL_4;
		if (RDIF = 0) goto LBL_4;
		goto LBL_5;
LBL_4:
		;
		RMIN=CEA(I3).real;
		IMN=I3;
LBL_5:
		;
		if (RDIF2 < 0) goto LBL_6;
		if (RDIF2 == 0) goto LBL_6;
		goto LBL_7;
LBL_6:
		;
		RMIN2=CEB(ID).real;
		IMN2=ID;
		goto LBL_30;
LBL_7:
		;
		RA(I3)=0.0;
LBL_30:
		;
		if (RA(I3) != 0.0)goto LBL_7         ;
	}
	printf(" ***  ***\n");
	printf(" RMIN= %g ,IMN= %ld \n",RMIN,IMN);
	printf(" RMIN1= %g ,IMN2= %ld \n",RMIN2,IMN2);
	printf(" CSUM=(%g,%g) \n",CSUM.real,CSUM.imag);
	exit (0);
}
