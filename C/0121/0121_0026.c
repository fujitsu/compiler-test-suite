#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define DA40(i) da40[i-1]
#define DB20(i,j) db20[i-1][j-1]
#define DB30(i,j) db30[i-1][j-1]
#define DB10(i,j) db10[i-1][j-1]
#define HD10(i) hd10[i-1]
#define HD20(i) hd20[i-1]
#define RD10(i) rd10[i-1]
#define LD10(i) ld10[i-1]
#define LD20(i) ld20[i-1]
#define RD20(i) rd20[i-1]
#define ID10(i) id10[i+20]
#define ID20(i) id20[i+20]
#define CD10(i) cd10[i-1]
#define CD20(i) cd20[i-1]
#define DSUM(i,j,k) i+j+k
#define LXOR(i,j) (1^i&&j)||(i&&1^j)
#define POWER(i,j) pow(i,2)+pow(j,2)
double da10[50],da20[50],da30[50],da40[50];
double db20[50][50],db30[50][50],db10[50][50];
short int hd10[50],hd20[50];
float rd10[50],rd20[50];
unsigned long int ld10[50],ld20[50];
long int id10[41],id20[41];
COMPLEX16 cd10[50],cd20[50];
double DFUN(DIM1,DIM2,DIM3,RDIM,FUN1)
double DIM1,DIM2,DIM3;
float  RDIM;
int    FUN1;
{
	double DSUM,DVAR1,DVAR2;
	DSUM=(DIM1+DIM2-DIM3)/2.0;
	if(FUN1 == 1)
	{
		DVAR1=(double)(RDIM)+((DIM1<DIM2) ? DIM1:DIM2);
		DVAR1=(double)(RDIM)+((DVAR1<DIM3) ? DVAR1:DIM3);
	}
	else
	{
		DVAR1=(double)(RDIM)+((DIM1>DIM2) ? DIM1:DIM2);
		DVAR1=(double)(RDIM)+((DVAR1>DIM3) ? DVAR1:DIM3);
	}
	if ( DSUM  >   DVAR1 )
	{
		DVAR2=DSUM-DVAR1;
	}
	else
	{
		DVAR2=DVAR1-DSUM;
	}
	DVAR1=DIM1*2.0 -DIM2-DIM3;
	return fabs(DVAR1+DVAR2);
}

int SUB1(N1,N2,CDVAR)
COMPLEX16 *CDVAR;
long int N1,N2;
{
	long int I;
	double DVAR1,DVAR2;


	DVAR1=0.0;
	DVAR2=0.0;
	for(I=1;I<=10;I++)
	{
		DVAR1=DVAR1+DA10(I)+DA20(I);
		DVAR2=DVAR2+DA30(I+10)+DA40(I+10);
LBL_10:
		;
	}

	DVAR1=fabs(DVAR1);
	DVAR2=fabs(DVAR2);
	DVAR1=(sin(DVAR1) > 0.0) ?
	    (double)(int)(sin(DVAR1)+0.5):(double)(int)(sin(DVAR1)-0.5);
	DVAR2=(cos(DVAR2) > 0.0) ?
	    (double)(int)(cos(DVAR2)+0.5):(double)(int)(cos(DVAR2)-0.5);
	DVAR1+=3.0;
	DVAR2+=2.0;
	(*CDVAR).dreal=DVAR1;
	(*CDVAR).dimag=DVAR2;
	printf("  ****  *** SUB1 ** RESULT *** \n");
	printf("  ** ITEM (N1,N2) **  %ld,%ld  \n",N1,N2);
	printf("  ** DVAR1 **  %g \n",DVAR1);
	printf("  ** DVAR2 **  %g \n",DVAR2);
	printf("  ** CDVAR **  (%g,%g) \n",(*CDVAR).dreal,(*CDVAR).dimag);
	return 0;
}
int main()
{
	long int IT2=2;
	long int IT3=10;
	long int IT4=20;
	long int IT5=50;
	long int i,j,I,J,K,ICNT,INV,IVAL,IVAL1,IVAL2;
	double D1,D2,D3,DV1,DV2,DV3,DV4;
	unsigned long int L1,L2;

	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			db20[i][j]=9.0;
			db30[i][j]=12.0;
			db10[i][j]=4.0;
		}
	}
	for(i=0 ; i<50 ; i++)
	{
		hd10[i]=2;
		hd20[i]=4;
		rd10[i]=2.0;
		rd20[i]=4.0;
		ld10[i]=0;
		ld20[i]=0;
		cd10[i].dreal = 2.0;
		cd10[i].dimag = 4.0;
		cd20[i].dreal = 4.0;
		cd20[i].dimag = 16.0;
	}
	for(i=0 ; i<41 ; i++)
	{
		id10[i]=0;
		id20[i]=0;
	}
	for(I=1 ; I<=40 ; I++)
	{
		DA10(I)=1.0;
		DA20(I)=2.0;
		DA30(I)=3.0;
		DA40(I)=4.0;
LBL_5:
		;
	}
	for(I=3 ; I<=IT3*2 ; I++)
	{
		DA10(I)   = DA20(I+1) + DA30(I);
		HD10(I)   = HD20(I+1) * HD10(I+1);
		DA30(I+1) = DA10(2*I-1) * 2.0 - DA40(I+1);
		DA40(I)   = DSUM( DA10(I),DA20(I),DA30(I) );
		for(J=5 ; J<=IT4 ; J++)
		{
			DB10(I*2,J*2) = DB20(I+IT4,J+IT4) / 2.0 * DB30(I,J+IT4);
			CD10(J).dreal=CD20(J).dreal*CD10(1).dreal
			    -CD20(J).dimag*CD10(1).dimag;
			CD10(J).dimag=CD20(J).dreal*CD10(1).dimag
			    +CD20(J).dimag*CD10(1).dreal;
			DV1 =CD10(J-1).dreal;
			DV2 =CD10(J-1).dimag;
			DV3 =POWER(DV1,DV2);
			DV4 =DSUM(DB10(I,J),DB20(I,J),DB30(I,J));
			if ( DV3 > DV4 )
			{
				LD10(J)=1;
			}
			else if ( DV3> 8.0 )
			{
				LD20(J)=1;
			}
LBL_10:
			;
		}
	}
	printf("  ****  *** NO.1 **** \n");
	for(K=3;K<=20;K++)
	{
		printf(" DA10= %g ",DA10(K));
		printf(" DA30= %g ",DA30(K+1));
		printf(" DA40= %g \n",DA40(K));
	}

	i=0;
	for(J=10;J<=36;J+=4)
	{
		printf("DB10= \n");
		for(I=6;I<=40;I+=2)
		{
			printf(" %g ",DB10(I,J));
			printf(" %g ",DB10(I,J+1));
			printf(" %g ",DB10(I,J+2));
			printf(" %g \n",DB10(I,J+3));
		}
	}
	for(K=5;K<=20;K++)
	{
		printf("CD10= ( %g,%g)",CD10(K).dreal,CD10(K).dimag);
		printf("LD10= %lu ",LD10(K));
		printf("LD20= %lu \n",LD20(K));
	}

	for(I=3;I<=22;I++)
	{
		RD10(I)=RD10(I)+RD20(I);
		for(J=2;J<=25;J++)
		{
			DB30(J,I)=DB20(I,2*J)-DB10(J+5,I)/2.0;
			DB20(I,J)=DB30(J-1,I)+DB10(J,I);
			DV1=DB10(I,J-1);
			DV2=DB10(I,J);
			DV3=DB10(I,J+1);
			DB10(I,J)=DFUN(DV1,DV2,DV3,RD20(J),1);
			DA10(J)=DFUN(DV1,DV2,DV3,RD20(J),2);
LBL_25:
			;
		}
		HD20(I)=HD10(I)+2;
LBL_20:
		;
	}
	printf("  ****  *** NO.2 *** \n");
	for(K=3;K<=22;K++)
	{
		printf(" RD10= %g ",RD10(K));
		printf(" HD10= %d ",HD10(K));
		printf(" HD20= %d ",HD20(K));
		printf(" DA10= %g \n",DA10(K));
	}
	for(J=2;J<=25;J++)
	{
		for(I=3;I<=22;I++)
		{
			printf(" DB10= %g ",DB10(I,J));
			printf(" DB20= %g ",DB20(I,J));
			printf(" DB30= %g \n",DB30(I,J));
		}
	}
	ICNT=1;
	INV=-15;
	CD10(10).dreal=5.0;
	CD10(10).dimag=2.0;
	CD20(10).dreal=3.0;
	CD20(10).dimag=4.0;
	for(I=10;I<=30;I++)
	{
		DA20(I)=DA10(I)+DA30(I)-DA40(I);
		DB20(I,I-1)=DB10(I,I+2)+DB20(I,I)-DB30(I,I);
		ID10(INV)=(float)(int)(RD10(I)+RD20(I));
		ID20(INV)=(float)(int)(RD10(I)-RD20(I));
		IVAL=(ID10(I-11) > ID20(I-11)) ? ID10(I-11):ID20(I-11);
		SUB1(ICNT,IVAL,&CD10(I+1).dreal);
		DV1=CD10(I).dreal;
		CD20(I).dreal=CD10(I).dreal+CD20(I+1).dreal;
		CD20(I).dimag=CD10(I).dimag+CD20(I+1).dimag;
		CD10(I).dreal=CD20(I).dreal+sqrt(CD20(I).dreal);
		CD10(I).dimag=CD20(I).dimag+sqrt(CD20(I).dimag);
		DV1=CD10(I).dreal;
		SUB1(ICNT,IVAL,&CD20(I-1).dreal);
		ICNT=ICNT+1;
		INV=INV+1;
LBL_30:
		;
	}
	printf("  ****  *** NO.3 *** \n");
	for(K=10;K<=30;K++)
	{
		printf("DA20= %g ",DA20(K));
		printf("DB20= %g \n",DB20(K,K-1));
	}
	for(K=-15;K<=5;K++)
	{
		printf("ID10= %ld ",ID10(K));
		printf("ID20= %ld \n",ID20(K));
	}
	for(K=10;K<=30;K++)
	{
		printf("CD10= (%g,%g) ",CD10(K).dreal,CD10(K).dimag);
		printf("CD20= (%g,%g) \n",CD20(K).dreal,CD20(K).dimag);
	}
	J=-20;
	for(I=1;I<=41;I++)
	{
		if (DB10(I,I)  >   DB20(I,I) )
		{
			ID10(J)=(int)(DB10(I,I));
			ID20(J)=(int)(DB20(I,I));
		}
		else
		{
			ID10(J)=(int)(DB20(I,I));
			ID20(J)=(int)(DB10(I,I));
		}
		IVAL1=ID10(J)*2;
		IVAL2=ID10(J)+ID20(J);
		if (IVAL1  >   IVAL2 )
		{
			ID10(J)=IVAL1;
			LD10(I)=1;
		}
		else
		{
			ID20(J)=IVAL2;
			LD20(I)=1;
		}
		J=J+1;
	}
	INV=1;
	for(I=-20;I<=IT2*10;I++)
	{
		if ( LD10(INV) ==1)
		{
			IVAL1=(IVAL1 > ID10(I)) ? IVAL1:ID10(I);
		}
		else
		{
			IVAL2=(IVAL2 < ID10(I)) ? IVAL2:ID10(I);
		}
	}
	printf("  ****  *** NO.4 *** \n");
	printf("  IVAL1 =  %ld \n",IVAL1);
	printf("  IVAL2 =  %ld \n",IVAL2);
	for(K=1;K<=20;K++)
	{
		printf(" %ld ",ID10(K));
		printf(" %ld ",ID20(K));
		printf(" %lu \n",LD10(K));
	}
	for(K=1;K<=41;K++)
	{
		printf(" %lu ",LD10(K));
		printf(" %lu \n",LD20(K));
	}
	for(J=1;J<=IT5;J++)
	{
		LD10(J)=LXOR(LD10(J),LD20(J));
		DA10(J)=((sin(fabs(DA20(J)))+cos(fabs(DA30(J))))>0.0)?
		    (double)(int)((sin(fabs(DA20(J)))+cos(fabs(DA30(J))))+0.5):
		    (double)(int)((sin(fabs(DA20(J)))+cos(fabs(DA30(J))))-0.5);
LBL_60:
		;
	}
	printf("  ****  *** NO.5 *** \n");
	for(i=1;i<=50;i++)
	{
		printf(" LD10= %lu ",LD10(i));
		printf(" DA10= %g \n",DA10(i));
	}
	exit (0);
}
