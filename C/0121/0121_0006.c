#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define LA(i)   la[i+9]
#define LB(i)   lb[i+9]
#define LC(i)   lc[i+9]
#define LD(i)   ld[i+9]
#define RA(i)   ra[i+9]
#define RB(i)   rb[i+9]
#define RC(i)   rc[i+9]
#define RD(i)   rd[i+9]
#define RPSM(i) rpsm[i+9]
#define CE(i)   ce[i+9]
#define CEA(i)  cea[i+9]
#define CEB(i)  ceb[i+9]
#define CEC(i)  cec[i+9]
#define CED(i)  ced[i+9]
unsigned long int la[30],lb[30],lc[30],ld[30];
float ra[30],rb[30],rc[30],rd[30];
float rpsm[30];
COMPLEX8 ce[30],cea[30],ceb[30],cec[30],ced[30];
int main()
{
	long int J1=1,J2=2,J3=3,J4=4;
	float RMAX,RPRSM;
	long int I1,ID,I2,I3,i;
	float RSUM=0.;
	for(i=0;i< 30;i++){
		la[i]=1;
		lb[i]=0;
		lc[i]=1;
		ld[i]=0;
		ra[i]=1.;
		rb[i]=2.;
		rc[i]=3.;
		rd[i]=4.;
		rpsm[i]=0.;
		ce[i].real=1.0;
		ce[i].imag=-1.0;
		cea[i].real=1.;
		cea[i].imag=0.;
		ceb[i].real=1.;
		ceb[i].imag=1.;
		cec[i].real=1.;
		cec[i].imag=1.;
		ced[i].real=1.;
		ced[i].imag=1.;
	}
	for(I1=J1*J3-J2;I1<=J2*J4+J3;I1+=J3*J2-J4*J1-J1)
	{
		LA(I1)=(RA(I1)>RB(I1))  ?1:0;
		LB(I1)=(RA(I1)>RA(I1+1))?1:0;
		LC(I1)=(RA(I1)>RB(I1+1))?1:0;
		LD(I1)=(RA(I1)>RA(I1-1))?1:0;
		if ((LA(I1) &&  LD(I1)) || (LB(I1) &&  LC(I1)==1))
		{
			RA(I1)=RA(I1+1)+1.;
			RB(I1)=RB(I1+1)+1.;
		}
		if ((RA(I1) == 1.) || (RA(I1) >  RB(I1)) || (RD(I1) >  RA(I1)))
		{
			RC(I1)=RC(I1)+1.;
			RD(I1)=RD(I1)+1.;
		}
		if (LA(I1)==LC(I1))
		{
			LA(I1)=1;
			LC(I1)=1;
		}
LBL_10:
		;
	}
	printf(" ***  *** \n");
	for(i=1;i<=10;i++){
		printf(" LA= %lu \n",LA(i));
	}
	ID=J1*J3-J2;
	for(I2=-J1*J3+1;I2<=J1*J2*J3+J4*J2-J2;I2+=J1*J2-J1)
	{
		CE(I2).real =CEA(I2).real*CEB(I2).real-CEA(I2).imag*CEB(I2).imag;
		CE(I2).imag =CEA(I2).real*CEB(I2).imag+CEA(I2).imag*CEB(I2).real;
		CEC(I2).real=CEA(I2).real*CEC(I2).real-CEA(I2).imag*CEC(I2).imag;
		CEC(I2).imag=CEA(I2).real*CEC(I2).imag+CEA(I2).imag*CEC(I2).real;
		if ((CE(I2).real >  CEC(I2).real)  || (CE(I2).imag > CEC(I2).imag))
		{
			CE(I2).real=CE(I2).real+CEC(I2).real;
			CE(I2).imag=CE(I2).imag+CEC(I2).imag;
			CE(I2).real=CE(I2).real;
			CE(I2).imag=CE(I2).imag;
		}
		if ((CE(I2).real > 3.) || (CEC(I2).real  >  3.0))
		{
			CE(I2).real=1.;
			CE(I2).imag=1.;
			CEC(I2).real=1.;
			CEC(I2).imag=1.;
		}
		ID=ID+J1*J2-1;
		CE(I2-1).real=CE(I2).real+CE(ID).real+
		    CEC(I2+1).real*CEC(I2).real-
		    CEC(I2+1).imag*CEC(I2).imag+
		    (CE(I2).real+CE(ID).real);
		CE(I2-1).imag=CE(I2).imag+CE(ID).imag+
		    CEC(I2+1).real*CEC(I2).imag+
		    CEC(I2+1).imag*CEC(I2).real-
		    (CE(I2).imag+CE(ID).imag);
		CE(I2-1).real=CE(I2).real+CE(ID).real+
		    CEC(I2+1).real*CEC(I2).real-
		    CEC(I2+1).imag*CEC(I2).imag+
		    (CE(I2).real+CE(ID).real);
		CE(I2-1).imag=CE(I2).imag+CE(ID).imag+
		    CEC(I2+1).real*CEC(I2).imag-
		    CEC(I2+1).imag*CEC(I2).real+
		    (CE(I2).imag+CE(ID).imag);
LBL_20:
		;
	}
	printf(" ***  ***\n");
	for(i=1;i<=10;i++){
		printf(" CE= %g %g \n",CE(i).real,CE(i).imag);
	}
	RMAX=RA(J3*J2*J1-J2*J2-J3*J1);
	for(I3=J3*J2*J1-J2*J2-J3*J1;I3<=J2*J4+3;I3+=J3*J1-J2)
	{
		RPRSM=RA(I3)+RB(I3);
		RA(I3)=RB(I3)*RC(I3)+CEA(I3).imag;
		RB(I3)=RB(I3)*RC(I3)+CEA(I3).real;
		RPSM(I3)=RPRSM+RA(I3)+RB(I3);
		RSUM=RSUM+RPSM(I3);
		if (RSUM <= 100.)
		{
			CEA(I3).real=CEA(I3).real+CEB(I3).real*CEC(I3).real-
			    CEB(I3).imag*CEC(I3).imag;
			CEA(I3).imag=CEA(I3).imag+CEB(I3).imag*CEC(I3).real+
			    CEB(I3).real*CEC(I3).imag;
			CEA(I3).real=-CED(I3).imag;
			CEA(I3).imag=CED(I3).real;
		}
		else
		{
			CEA(I3+1).real=1.;
			CEA(I3+1).imag=1.;
		}
		if (RMAX <  RA(I3))
		{
			RMAX=RA(I3);
		}
LBL_30:
		;
	}
	printf(" ***  ***\n");
	printf(" RSUM= %g ,RMAX= %g \n",RSUM,RMAX);
	exit (0);
}
