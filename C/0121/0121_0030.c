#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) dd.da10[i-1]
#define DA20(i) ca.da20[i-1]
#define DA30(i) dv.da30[i-1]
#define DA40(i) ca.da40[i-1]
#define DA50(i) dd.da50[i-1]
#define DB20(i,j) cd.db20[i-1][j-1]
#define DB10(i,j) db10[i-1][j-1]
#define DB30(i,j) db30[i-1][j-1]
#define DVAR1 dv.dvar1
#define DVAR2 dv.dvar2
#define CD10(i) cc.cd10[i-1]
#define CD20(i) ca.cd20[i-1]
#define CD30(i) cc.cd30[i-1]
#define CE10(i) cd.ce10[i-1]
#define CE20(i) cr.ce20[i-1]
#define CE30(i) cd.ce30[i-1]
#define RD10(i) cr.rd10[i-1]
#define RD20(i) rd20[i-1]
#define RD30(i) rd30[i-1]


#define DIM1(i) de.dim1[i-1]
#define DIM2(i) df.dim2[i-1]
#define CDVAL1 de.cdval1
#define CDVAL2 df.cdval2
union{
	COMPLEX16 cdval1;
	double dim1[2];
} de;
union{
	COMPLEX16 cdval2;
	double dim2[2];
} df;
union{
	double da10[50];
	double da50[100];
} dd;
union{
	double da20[50];
	double da40[50];
	COMPLEX16 cd20[50];
} ca;
union{
	double db20[50][50];
	COMPLEX8 ce10[50];
	COMPLEX8 ce30[50];
} cd;
union{
	COMPLEX8 ce20[50];
	float rd10[100];
} cr;
union{
	COMPLEX16 cd10[50];
	COMPLEX16 cd30[50];
} cc;
union{
	double da30[50];
	double dvar1;
	double dvar2;
} dv;
float rd10[100],rd20[100],rd30[100];
double db10[50][50],db30[50][50];
double  FUN(DVAR3)
double DVAR3;
{
	long int    i;

	DIM1(1) = DIM1(1) + DIM2(2);
	DIM2(1) = DIM2(1) + DIM1(2);
	DIM1(2) = (DVAR3 > DIM1(1)) ? DVAR3:DIM1(1);
	DIM2(2) = (DVAR3 < DIM2(1)) ? DVAR3:DIM2(1);


	printf("  *** FUNCTION SUB ** \n");
	for (i=1 ; i<=2 ; i++)
	{
		printf("   ** DIM1 = %g ** \n",DIM1(i));
	}
	for (i=1 ; i<=2 ; i++)
	{
		printf("   ** DIM2 = %g ** \n",DIM2(i));
	}

	return (DIM1(2)-DIM2(2));
}
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=5;
	long int IT4=10;
	long int IT5=50;
	long int i,j,k,I,J,K;

	for(i=0 ; i<50 ; i++)
	{
		dd.da10[i]=2.0;
		ca.da20[i]=3.0;
		dv.da30[i]=4.0;
		ca.da40[i]=5.0;
		dd.da50[i]=6.0;
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			cd.db20[i][j]=2.0;
			db10[i][j]=1.0;
			db30[i][j]=3.0;
		}
	}
	for(i=0 ; i<50 ; i++)
	{
		cc.cd10[i].dreal=2.0;
		cc.cd10[i].dimag=4.0;
		ca.cd20[i].dreal=3.0;
		ca.cd20[i].dimag=9.0;
		cc.cd30[i].dreal=4.0;
		cc.cd30[i].dimag=16.0;
		cd.ce10[i].real=1.0;
		cd.ce10[i].imag=2.0;
		cr.ce20[i].real=2.0;
		cr.ce20[i].imag=3.0;
		cd.ce30[i].real=3.0;
		cd.ce30[i].imag=4.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		cr.rd10[i]=3.0;
		rd20[i]=2.0;
		rd30[i]=12.0;
	}

	CDVAL1.dreal=1.0;
	CDVAL1.dimag=2.0;
	CDVAL2.dreal=2.0;
	CDVAL2.dimag=3.0;
	for(I=2 ; I<=IT4*2 ; I++)
	{
		DA20(I+1) = DA10(I*2) + DA40(I+IT2) - DA50(I);
		RD10(I)   = RD20(I+1) * RD30(I+2);
		DVAR1     = DVAR1 + DA10(I) - CD10(I+2).dimag;
		DVAR2     = (DVAR2 > DA50(I)) ? DVAR2:DA50(I);
		CE10(I+1).real = (0.5+pow(CE20(I).real,2)) + CE30(I+2).real;
		CE10(I+1).imag = (0.5+pow(CE20(I).imag,2)) + CE30(I+2).imag;
		DA40(I)   = DA30(I) * DA10(I) - CD30(I).dreal;
LBL_10:
		;
	}


	printf("  ****  *** NO.1 *** \n");
	printf("  DVAR1 = %g ** DVAR2 =  %g \n",DVAR1,DVAR2);
	for(K=2 ; K<=21 ; K++)
	{
		printf(" DA20= %g ",DA20(K));
		printf(" DA40= %g ",DA40(K));
		printf(" RD10= %g ",RD10(K));
		printf(" CE10= (%g,%g) \n",CE10(K).real,CE10(K).imag);
	}


	for(I=IT5 ; I>=IT3 ; I-=IT1)
	{
		DA50(I+IT5)  = DA50(I) + DA10(I-2) - DA20(I-IT3+1);
		RD20(I)      = CE10(I-1).imag * CE20(I).real - RD30(I-2);
		RD10(I)      = (float)(DA30(I-1) - DA40(I-2));
		DB10(IT4,I)  = DB10(IT3,I-1) * 2.0 - CD20(I).dimag;
		CDVAL1.dreal = CD10(I).dreal + CD20(I).dreal;
		CDVAL1.dimag = CD10(I).dimag + CD20(I).dimag;
		CDVAL2.dreal = CD30(I).dreal + CD20(I).dreal;
		CDVAL2.dimag = CD30(I).dimag + CD20(I).dimag;
		RD30(I)      = FUN(DA30(I));
LBL_20:
		;
	}

	printf("  ****  *** NO.2 **** \n");
	for(K=50 ; K>=5 ; K--)
	{
		printf(" RD10= %g ",RD10(K));
		printf(" RD20= %g ",RD20(K));
		printf(" RD30= %g ",RD30(K));
		printf(" DA50= %g ",DA50(K+50));
		printf(" DB10= %g \n",DB10(10,K));
	}


	DVAR1 = 0;
	for(I=IT4 ; I<=IT4*3 ; I+=IT2)
	{
		DA30(I+IT1+IT2+1) = DA30(I+IT2+1+IT2) / 2.0 * CD10(I).dimag;
		CD30(I+IT4).dreal = CD10(IT2).dreal + CE20(I+IT1).real * 2.0;
		CD30(I+IT4).dimag = CD10(IT2).dimag + CE20(I+IT1).imag * 2.0;
		for(J=5 ; J<=25 ; J++)
		{
			DB10(I,J) = DB20(I,J*2) + DB30(J,I+IT2);
			DB10(J,I) = DB20(I,J) * 4.0 - DB30(J,I);
			DA10(J)   = (DB10(I,J)>DB10(J,I)) ? DB10(I,J):DB10(J,I);
			DA20(J)   = (DB10(I,J)<DB10(J,I)) ? DB10(I,J):DB10(J,I);
			DVAR1     = DVAR1 + DA10(J) - DA20(J);
LBL_35:
			;
		}
		CD10(I+3).dreal = CD30(I).dreal + CE30(I).real;
		CD10(I+3).dimag = CD30(I).dimag + CE30(I).imag;
LBL_30:
		;
	}

	printf("  ****  *** NO.3 **** \n");
	for(K=5 ; K<=25 ; K++)
	{
		printf(" DA10= %g ",DA10(K));
		printf(" DA20= %g \n",DA20(K));
	}
	for(K=14 ; K<=34 ; K+=4)
	{
		printf(" DA30= %g ",DA30(K));
		printf("     %g \n",DA30(K+2));
	}
	for(J=5 ; J<=25 ; J+=5)
	{
		for(I=10 ; I<=30 ; I++)
		{
			printf(" DB10= %g ",DB10(I,J));
			printf(" %g ",DB10(I,J+1));
			printf(" %g ",DB10(I,J+2));
			printf(" %g ",DB10(I,J+3));
			printf(" %g \n",DB10(I,J+4));
		}
	}

	for(K=13 ; K<=33 ; K+=2)
	{
		printf("CD10= (%g , %g) ",CD10(K).dreal,CD10(K).dimag);
		printf("CD30= (%g , %g)\n",CD30(K+7).dreal,CD30(K+7).dimag);
	}
	exit (0);
}
