#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "001.h"
#define RA(i,j,k)  ra[i-1][j-1][k-1]
#define RB(i,j)    rb[i-1][j-1]
#define RC(i)      rc[i-1]
#define DB(i,j)    db[i-1][j-1]
#define DC(i)      dc[i-1]
#define DD(i,j,k)  dd[i-1][j-1][k-1]
#define CEA(i,j,k) cea[i-1][j-1][k-1]
#define CEB(i,j)   ceb[i-1][j-1]
#define CEC(i)     cec[i-1]
#define CDA(i,j,k) t.cda[i-1][j-1][k-1]
#define CDB(i,j)   cdb[i-1][j-1]
#define CDC(i)     cdc[i-1]
#define CDD(i,j,k) t.cdd[i-1][j-1][k-1]
#define L4A(i,j,k) l4a[i-1][j-1][k-1]
#define L4B(i,j)   l4b[i-1][j-1]
#define L4C(i)     l4c[i-1]
#define IA(i,j,k)  ia[i-1][j-1][k-1]
#define IB(i,j)    ib[i-1][j-1]
#define IC(i)      ic[i-1]
#define IL(i)      il[i-1]
float     XSIN();
float     ra[10][10][10],rb[10][10],rc[10];
double    db[10][10],dc[10],dd[10][10][10];
COMPLEX8  cea[10][10][10],ceb[10][10],cec[10];
COMPLEX16 cda[10][10][10],cdb[10][10],cdc[10],cdd[10][10][10];
unsigned  long int l4a[10][10][10],l4b[10][10],l4c[10];
long int  ia[10][10][10],ib[10][10],ic[10],il[10];
union     {
	COMPLEX16 cda[10][10][10] ;
	COMPLEX16 cdd[10][10][10] ;
} t;
int main()
{
	float    RSUM=0.;
	COMPLEX8 CESUM={
		0.,0.	};
	long int ID1=0;
	float    RMIN=1000.;
	long int I1,ID2,I2,I3,I4,J,i,j,k;
	float    RMX,R1,DIF;

	for(j=0;j< 10;j++){
		for(i=0;i< 10;i++){
			rb[i][j]=1.;
			db[i][j]=1.;
			ceb[i][j].real=1.;
			ceb[i][j].imag=1.;
			cdb[i][j].dreal=1.;
			cdb[i][j].dimag=1.;
			l4b[i][j]=1;
			ib[i][j]=1;
		}
	}
	for(i=0;i< 10;i++){
		rc[i]=1.;
		dc[i]=1.;
		cec[i].real=1.;
		cec[i].real=1.;
		cdc[i].dreal=1.;
		cdc[i].dimag=1.;
		l4c[i]=1;
		ic[i]=1;
		il[i]=1;
	}
	for(k=0;k< 10;k++){
		for(j=0;j< 10;j++){
			for(i=0;i< 10;i++){
				ra[i][j][k]=1.0;
				dd[i][j][k]=1.;
				cea[i][j][k].real=1.;
				cea[i][j][k].imag=1.;
				t.cda[i][j][k].dreal=1.;
				t.cda[i][j][k].dimag=1.;
				t.cdd[i][j][k].dreal=1.;
				t.cdd[i][j][k].dimag=1.;
				l4a[i][j][k]=1;
				ia[i][j][k]=1;
			}
		}
	}

	for(I1=1;I1<=10;I1++)
	{
		ID1=ID1+1;
		if (ID1 <= 10)
		{
			printf(" ***  ** VINF.3 **\n");
			printf(" ID1= %ld \n",ID1);
		}
		if (ID1 >  10)goto LBL_100         ;
		RC(I1)=RC(I1)*RC(I1-1+IL(1));
		ID2=0;
		RSUM=0.;
		RMX=0.;
		for(I2=1;I2<=8;I2++)
		{
			ID2=ID2+1;
			printf("  ID2= %ld \n",ID2);
			RB(I1,I2)=DB(I1,I2+IL(2));
			if ((L4B(I1,I2))||(L4B(I2,I1)))
			{
				for(I3=1;I3<=10;I3++)
				{
					CEA(I1,I2,I3).real=CDA(I1,I2,I3).dreal;
					CEA(I1,I2,I3).imag=CDA(I1,I2,I3).dimag;
					CDA(I1,I2,I3).dreal=1.0+RA(I1,I2,I3)+CEA(I1,ID2,I3).real;
					CDA(I1,I2,I3).dimag=RA(I1,I2,I3)+CEA(I1,ID2,I3).imag;
					for(I4=1;I4<=10;I4++)
					{
						RA(I1,I2,I3)=I4;
						IA(I2,I3,I4)=IB(I2,I3)*IC(I4);
						R1=RC(I4);
						IB(I2,I3)=(int)XSIN(R1);
						DIF=RMIN-IA(I2,I3,I4);
						if (DIF < 0) goto LBL_41;
						if (DIF == 0) goto LBL_41;
						goto LBL_42 ;
LBL_42:
						;
						RMIN=IA(I2,I3,I4);
						J=I4;
LBL_41:
						;
LBL_40:
						;
					}
LBL_30:
					;
				}
			}
			RSUM=RSUM+RB(I1,ID2);
			DIF=RMX-RB(I1,I2);
			if (DIF < 0) goto LBL_21;
			if (DIF == 0) goto LBL_21;
			goto LBL_22 ;
LBL_22:
			;
			RMX=RB(I1,ID2)+1.0;
LBL_21:
			;
			printf(" RMIN= %g ,J= %ld \n",RMIN,J);
			for(j=1;j<= 10;j++){
				for(i=1;i<=10;i++){
					printf(" IB= %ld \n",IB(i,j));
				}
			}
			for(j=1;j<= 10;j++){
				for(j=1;j<= 10;j++){
					for(i=1;i<=10;i++){
						printf(" IA= %ld \n",IA(i,j,k));
					}
				}
			}
LBL_20:
			;
		}
		printf("    **CVC2308** VINF.3 **\n");
		printf(" RSUM= %g \n",RSUM);
LBL_100:
		;
LBL_10:
		;
	}
	printf(" ****  *** VINF.3 ***\n");
	for(i=1;i<=10;i++){
		printf(" RC= %g \n",RC(i));
	}
	exit (0);
}
float XSIN(R1)
float R1;
{
	long int I;
	float R2,R3,SIN;
	R2=1.0;
	R3=2.0;
	SIN=0.;
	for(I=1;I<=10;I++)
	{
		SIN=SIN+R2+R3+R1;
LBL_10:
		;
	}
	return SIN;
}
