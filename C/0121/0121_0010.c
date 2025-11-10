#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i)  ra[i-1]
#define RB(i)  rb[i-1]
#define DA(i)  da[i-1]
#define DB(i)  db[i-1]
#define CEA(i) cea[i-1]
#define CEB(i) ceb[i-1]
#define CDA(i) cda[i-1]
#define CDB(i) cdb[i-1]
#define LA(i)  la[i-1]
#define LB(i)  lb[i-1]
#define LC(i)  lc[i-1]
float     ra[20],rb[20];
double    da[20],db[20];
COMPLEX8  cea[20],ceb[20];
COMPLEX16 cda[20],cdb[20];
unsigned  long int la[20],lb[20],lc[20];
int main()
{
	float    RSUM=0.,RDIF,RMIN,RMAX,MR;
	COMPLEX8 CED;
	long int I1,I2,J1=1,J2=2,J3=3,J4=4,IMX;
	long int ID,i;
	for(i=0;i< 20;i++){
		ra[i]=1.;
		rb[i]=2.;
		da[i]=1.;
		db[i]=2.;
		cea[i].real=1.;
		cea[i].imag=1.;
		ceb[i].real=0.;
		ceb[i].imag=1.;
		cda[i].dreal=1.;
		cda[i].dimag=1.;
		cdb[i].dreal=0.;
		cdb[i].dimag=1.;
		la[i]=1;
		lb[i]=0;
		lc[i]=1;
	}
	RMAX=0.0;
	RMIN=0.0;
	IMX = 0.0 ;
	MR  = 0.0 ;
   
	for(I1=J3*J1-2;I1<=10;I1+=J3*J2-J4)
	{
		RDIF=RMAX-fabs(CEA(I1).real);
		if (RDIF < 0) goto LBL_2;
		if (RDIF == 0) goto LBL_1;
		goto LBL_1;
LBL_1:
		;
		RMAX=fabs(CEA(I1).real);
		IMX=I1;
		MR=RA(I1);
LBL_2:
		;
		RMIN=(RMIN>fabs(CEA(I1).real)) ? RMIN:fabs(CEA(I1).real);
		LA(I1)=((CEA(I1).real==2.)&&(CEA(I1).imag==2.))?1:0;
		LC(I1)=((CEB(I1).real!=1.)&&(CEB(I1).imag!=1.))?1:0;
		if ((LA(I1)) || (!LC(I1)) || (fabs(CEA(I1).real) >  2.))
		{
			LA(I1)=1;
			LC(I1)=1;
		}
		else
		{
			LA(I1)=0;
			LC(I1)=0;
		}
LBL_10:
		;
	}
	printf(" ***  ***\n");
	for(i=1;i<=20;i++){
		printf(" LA= %lu ,LC= %lu \n",LA(i),LC(i));
	}
	printf(" RMAX= %g ,RMIN= %g ,IMX= %ld ,MR= %g \n",RMAX,RMIN,IMX,MR);
	ID=J1*J2-1;
	for(I2=1;I2<=10;I2+=2)
	{
		if ((fabs(CEA(I2).real+CEB(ID).real)-2.0) < 0)  goto LBL_3;
		if ((fabs(CEA(I2).real+CEB(ID).real)-2.0) == 0) goto LBL_4;
		goto LBL_5;
LBL_3:
		;
		if ((CEA(I2).real==1.)&&(CEA(I2).imag==1.))goto LBL_6         ;
		CEA(I2).real=1.;
		CEA(I2).imag=1.;
		goto LBL_6;
LBL_4:
		;
		CEA(I2).real=CEB(ID).real+2.0;
		CEA(I2).imag=CEB(ID).imag+0.0;
		goto LBL_6;
LBL_5:
		;
		CEA(I2).real=CEB(ID).real;
		CEA(I2).imag=CEB(ID).imag;
LBL_6:
		;
		DA(I2)=CDA(I2).dreal*CDB(I2).dreal-CDA(I2).dimag*CDB(I2).dimag+
		    DA(I2)+RA(I2);
		DB(ID)=CDA(ID).dreal*CDB(ID).dreal-CDA(ID).dimag*CDB(ID).dimag+
		    DB(ID)+RB(ID);
		if (DA(I2) == DB(ID))
		{
			DA(I2)=DB(ID)+RA(I2);
		}
		else
		{
			DA(I2)=DB(ID);
		}
		RSUM=RSUM+DA(I2)+DB(ID)+pow(RA(I2),2);
		if (RA(I2) >  100.)
		{
			DA(I2)=0.0;
			DB(ID)=0.0;
		}
		CED.real=CDA(I2).dreal+CDB(I2).dreal;
		CED.imag=CDA(I2).dimag+CDB(I2).dimag;
		RA(I2+1)=fabs(CED.real);
		goto LBL_20;
LBL_7:
		;
		LA(I2)=1;
		LB(ID)=0;
LBL_20:
		;
		if (DA(I2) == 0. &&  DA(I2) == 0.)goto LBL_7         ;
	}
	printf(" ***  ***\n");
	printf(" RSUM= %g \n",RSUM);
	for(i=1;i<=20;i++){
		printf(" LA= %lu ,LB= %lu \n",LA(i),LB(i));
	}
	exit (0);
}
