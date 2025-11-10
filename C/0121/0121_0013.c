#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i) ra[i-1]
#define RB(i) rb[i-1]
#define RC(i) rc[i-1]
#define CEA(i) cea[i-1]
float    ra[20],rb[20],rc[20];
COMPLEX8 cea[20];
int main()
{
	float    RSUM;
	long int J1=1,J2=2,J3=3,J4=4,ID;
	long int I,J,i,j,I1,I2;
	for(i=0;i< 20;i++){
		ra[i]=1.;
		rb[i]=2.;
		rc[i]=3.;
		cea[i].real=1.;
		cea[i].imag=1.;
	}
	ID=J2*J3-5;
	for(I1=1;I1<=10;I1++)
	{
		RA(I1)=RB(I1)*RC(I1);
		if ((RA(I1) >  3.0) || (RA(I1) <  -3.0))
		{
			RA(I1)=3.0;
		}
		if ((RA(I1) <= 2.0) || (RA(I1) >= -2.0))
		{
		}
		CEA(I1).real=RA(I1);
		CEA(I1).imag=RB(I1);
		goto LBL_200;
LBL_100:
		;
		RC(I1)=2.0;
		goto LBL_300;
LBL_200:
		;
		RC(I1)=1.0;
LBL_300:
		;
		CEA(I1).real=CEA(I1).real+RC(I1);
		CEA(I1).imag=CEA(I1).imag+RC(I1);
LBL_10:
		;
	}
	printf(" ***  ***\n");
	for(i=1;i<=20;i++){
		printf(" CEA= %g %g \n",CEA(i).real,CEA(i).imag);
	}
	for(I2=1;I2<=10;I2++)
	{
		ID=ID+J3*J1*J2-J4*J1-1;
		if(ID == 1) goto LBL_101;
		if(ID == 2) goto LBL_102;
		if(ID == 3) goto LBL_103;
		if(ID == 4) goto LBL_104;
		RA(I2)=I2;
		goto LBL_105;
LBL_101:
		;
		RA(I2)=I2+ID;
		goto LBL_105;
LBL_102:
		;
		RA(I2)=I2+ID+1;
		goto LBL_105;
LBL_103:
		;
		RA(I2)=I2*ID;
		goto LBL_105;
LBL_104:
		;
		RA(I2)=I2*ID+1;
LBL_105:
		;
		CEA(I1).real=RA(I1);
		CEA(I1).imag=0.;
LBL_20:
		;
	}
	printf(" ***  ***\n");
	for(i=1;i<=20;i++){
		printf(" CEA= %g %g \n",CEA(i).real,CEA(i).imag);
	}
	ID=0;
	RSUM=0.0;
LBL_30:
	;
	ID=ID+1;
	RSUM=RSUM+RA(ID);
	if (ID <= 9)goto LBL_30         ;
	printf(" ***  ***\n");
	printf(" RSUM= %g \n",RSUM);
	ID=1;
	while(ID <= 10)
	{
		RA(ID)=ID+RB(ID);
		RSUM=RSUM+RA(ID);
		ID=ID+1;
LBL_40:
		;
	}
	printf(" ***  ***\n");
	printf(" RSUM= %g \n",RSUM);
	ID=0;
	do
	{
		ID=ID+1;
		RSUM=RSUM-RA(ID);
		RA(ID)=RA(ID)*RB(ID);
LBL_50:
		;
	} while(ID <= 10);
	printf(" ***  ***\n");
	printf(" RSUM= %g \n",RSUM);
	exit (0);
}
