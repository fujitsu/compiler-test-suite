#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define LOV(i)  lov[i-1]
#define RA(i)   ra[i-1]
#define B(i)    b[i-1]
#define C(i)    c[i-1]
#define D(i)    d[i-1]
#define LOV1(i) lov1[i-1]
#define Y(i)    y[i-1]
#define YY(i)   yy[i-1]
#define CC(i)   cc[i-1]
#define DD(i)   dd[i-1]
#define FAC(i)  fac[i-1]
#define PH(i)   ph[i-1]
#define PHB(i)  phb[i-1]
#define W(i)    w[i-1]
#define Z(i)    z[i-1]
#define ZB(i)   zb[i-1]
#define ZZ(i)   zz[i-1]
#define AM(i)   am[i-1]
unsigned long int lov[30];
float             b[30],c[30],d[30];
float             ra[30]={
	1.,1.,1.,1.,1.,1.,1.,1.,1.,
	                          -2.,2.,2.,2.,2.,2.,2.,2.,2.,
	                           3.,3.,3.,3.,3.,3.,3.,3.,3.};
unsigned long int lov1[30]={
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	                             0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
float             y[30],yy[30],cc[30],dd[30];
COMPLEX8          fac[30],ph[30],phb[30],w[30],z[30];
COMPLEX8          zb[30],zz[30],am[30];
int main()
{
	long     int I1,I2,J1,J2;
	float    RSIV,RCOV,RMIN=10000.,RDIF,PAI=3.14;
	unsigned long int LO,i,I;
	long int J3;
	long int J,J4,N1,N2,SS;
	for(i=0;i<30;i++){
		b[i]=1.0;
		c[i]=1.0;
		d[i]=1.0;
		lov1[i]=1;
		y[i]=1.0;
		yy[i]=1.0;
		cc[i]=100.;
		dd[i]=1000.;
		fac[i].real=0.;
		fac[i].imag=0.;
		ph[i].real=0.;
		ph[i].imag=0.;
		phb[i].real=0.;
		w[i].imag=0.;
		w[i].real=0.;
		z[i].imag=0.;
		z[i].real=0.;
		zb[i].imag=0.;
		zb[i].real=0.;
		zz[i].imag=0.;
		zz[i].real=0.;
		am[i].real=1.;
		am[i].imag=0.;
	}
	RSIV=2.0*sin(0.5*PAI);
	RCOV=2.0*cos(0.5*PAI);
	J1=(int)(RSIV);
	J2=(int)(RCOV);
	I1=0;
	I2=100;
	for(I =3;I <=4*J1-J2;I ++)
	{
		B(I-2)=J1+J2+B(I);
		C(I)=B(I-1);
		I1=I1+1;
		if (LOV(I) &&  1)I2=I2-1;
		D(I1)=RA(I1*J1+J2*2)-I2;
		RDIF=RMIN-RA(I);
		if (RDIF < 0)goto LBL_10;
		if (RDIF == 0)goto LBL_10;
		goto LBL_2;
LBL_2:
		;
		RMIN=RA(I);
LBL_10:
		;
	}
	printf(" RMIN= %g \n",RMIN);
	for(i=1;i<=10;i++){
		printf(" RA= %g ,B= %g ,C= %g ,D= %g \n",RA(i),B(i),C(i),D(i));
	}
     
	for(I=1*J1;I<=10;I+=1)
	{
		if (C(I) == 1.)
		{
			LO=0;
		}
		else
		{
			LO=1;
		}
		if (LOV(I)==1)
		{
			LOV1(I)=0;
		}
		else
		{
			LOV1(I)=LO;
		}
		if (LOV1(I) == 0 )goto LBL_3         ;
		C(J1+I)=RA(I)+B(J2*J1+I+1);
		goto LBL_20;
LBL_3:
		;
		J3=J1;
		J1=(int)(RMIN);
		C(J1+1)=RA(I)+B(J2+I+1);
		J1=J3;
LBL_20:
		;
	}
	for(i=1;i<=10;i++){
		printf(" LOV1= %lu ,RA= %g ,B= %g ,C= %g ,D= %g \n",
		    LOV1(i),RA(i),B(i),C(i),D(i));
	}
	J4=-4;
	N1=J4+J1*2+J2*3+1;
	N2=1;
	SS=0;
	for(I=J4+J1*2+J2*3+1;I<=20;I+=2)
	{
		N1=N1+1;
		PH(I).real=exp(FAC(I).real);
		PH(I).imag=exp(FAC(I).imag);
		PHB(I).real= PH(I).real;
		PHB(I).imag=-PH(I).imag;
		W(I).real=PH(I).real*PHB(I).real-PH(I).imag*PHB(I).imag;
		W(I).imag=PH(I).imag*PHB(I).real-PH(I).real*PHB(I).imag;
		Z(I).real=AM(I).real*PH(I).real-AM(I).imag*PH(I).imag;
		Z(I).imag=AM(I).imag*PH(I).real-AM(I).real*PH(I).imag;
		ZB(I).real= Z(I).real;
		ZB(I).imag=-Z(I).imag;
		ZZ(I).real=Z(I).real*ZB(I).real-Z(I).imag*ZB(I).imag;
		ZZ(I).imag=Z(I).imag*ZB(I).real-Z(I).real*ZB(I).imag;
		C(I)=fabs(ZZ(I).real);
		D(I)=fabs(W(I).real);
		if (C(I) >= 1.)
		{
			C(I)=0.0;
		}
		if (D(I) >= 1.)
		{
			D(I)=0.0;
		}
		Y(I)=ZZ(I).real;
		YY(I)=W(I).real;
		if (Y(I) >= 1.)
		{
			CC(I)=0.0;
		}
		if (YY(I) >= 1.)
		{
			DD(I)=0.0;
		}
		SS=SS+(int)(Y(I));
		RA(N1)=CC(I);
		B(N2+1)=DD(I-1);
		N2=N2+1;
LBL_30:
		;
	}
	for(i=1;i<=30;i++){
		printf(" RA= %g ",RA(i));
		printf(" ZZ= (%g,%g) ",ZZ(i).real,ZZ(i).imag);
		printf(" B= %g ",B(i));
		printf(" C= %g \n",C(i));
		printf(" D= %g ",D(i));
		printf(" CC= %g ",CC(i));
		printf(" DD= %g \n",DD(i));
	}
	printf(" SS= %ld \n",SS);
	exit (0);
}
 
