#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define R4A(i)  r4a[i-1]
#define R4B(i)  r4b[i-1]
#define RS(i)   rs[i-1]
#define CES(i)  ces[i-1]
#define CES1(i) ces1[i-1]
#define CES2(i) ces2[i-1]
#define C8A(i)  c8a[i-1]
float r4a[20],r4b[20],rs[20];
COMPLEX8 ces[20],ces1[20],ces2[20],c8a[20];
int SUBTST(long int N, long int I, long int J, long int K, long int L, float rs[], COMPLEX8 ces[]);
int main()
{
	float    RMIN=110,RDIF=0.,RA;
	long int IMN=0,ID=1,IL=10,IK=8,IJ=1;
	COMPLEX8 CEA;
	long int J1=1;
	long int J2=2;
	long int J3=3;
	long int I0,I1,I2,i,j;
	for(i=0;i< 20;i++){
		r4a[i]=1.;
		r4b[i]=1.;
		rs[i]=1;
		ces[i].real=1.;
		ces[i].imag=1.;
		ces1[i].real=1.;
		ces1[i].imag=1.;
		ces2[i].real=1.;
		ces2[i].imag=1.;
		c8a[i].real=1.;
		c8a[i].imag=1.;
	}
	for(I0=1;I0<=6;I0++)
	{
		ID=I0*2-(I0-1)*2;
		for(I1=-J2*J1*J3-J3;I1<=5;I1+=2)
		{
			ID=ID+1;
			IJ=I0+1;
			IK=ID+1;
			IL=3+1+I1;
			SUBTST(ID,ID+1,IJ,IK,IL,r4a,c8a);
LBL_10:
			;
		}
		printf(" ***  ***\n");
		for(i=1;i<=20;i++){
			printf(" R4A= %g ,C8A= %g %g \n",
			    R4A(i),C8A(i).real,C8A(i).imag);
		}
        
         	for(I2=J2*J1*J3*J3+J3*J3;I2<=5;I2+=2)
		{
			R4B(I2)=R4A(I2)+pow(R4A(I2),2);
			RDIF=RMIN-R4B(I2);
			if (RDIF < 0) goto LBL_20;
			if (RDIF == 0) goto LBL_20;
			goto LBL_1;
LBL_1:
			;
			RMIN=R4B(I2);
			IMN=I2;
LBL_20:
			;
		}
		printf(" ***  ***\n");
		printf(" RMIN= %g ,IMN= %ld \n",RMIN,IMN);
		printf(" I0  = %ld \n",I0);
LBL_100:
		;
	}
	exit (0);
}
int SUBTST(long int N,long int I,long int J,long int K,long int L,
float rs[],COMPLEX8 ces[])
{
	long int IS1,WK1;
	float JK;
	for(IS1=J;IS1<=K;IS1++)
	{
LBL_20:
		;
		RS(IS1)=IS1;
	}
	for(IS1=1;IS1<=L;IS1++)
	{
LBL_30:
		;
		CES(IS1).real=IS1;
		CES(IS1).imag=IS1;
	}
	for(IS1=1;IS1<=N;IS1++)
	{
		WK1 = (I   < K) ? I  :K;
		WK1 = (WK1 < L) ? WK1:L;
		if (N >  WK1)goto LBL_40         ;
		if (IS1 <  J)goto LBL_40         ;
		RS(IS1)=RS(IS1)*RS(IS1);
		CES(IS1).real=CES(IS1).real*CES(IS1).real -
		    CES(IS1).imag*CES(IS1).imag;
		CES(IS1).imag=CES(IS1).real*CES(IS1).imag +
		    CES(IS1).imag*CES(IS1).real;
		RS(IS1)=(float)(CES(IS1).real);
LBL_40:
		;
	}
	return 0;
}
