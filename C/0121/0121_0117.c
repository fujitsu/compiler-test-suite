#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define MASK1(i) mask1[i-1]
#define MASK(i) mask[i-1]
#define IHA(i) iha[i-1]
#define IHB(i) ihb[i-1]
#define IHC(i) ihc[i-1]
#define IA(i) ia[i-1]
#define IB(i) ib[i-1]
#define IC(i) ic[i-1]
#define LA(i) la[i-1]
#define LB(i) lb[i-1]
#define LC(i) lc[i-1]
#define RA(i) ra[i-1]
#define RB(i) rb[i-1]
#define RC(i) rc[i-1]
#define DA(i) da[i-1]
#define DB(i) db[i-1]
#define DC(i) dc[i-1]
#define QA(i) qa[i-1]
#define QB(i) qb[i-1]
#define QC(i) qc[i-1]
#define CA(i) ca[i-1]
#define CB(i) cb[i-1]
#define CC(i) cc[i-1]
#define CDA(i) cda[i-1]
#define CDB(i) cdb[i-1]
#define CDC(i) cdc[i-1]
#define CQA(i) cqa[i-1]
#define CQB(i) cqb[i-1]
#define CQC(i) cqc[i-1]
unsigned char mask1[50]={
	50*1};
unsigned long int mask[50]={
	50*1};
short int iha[50],ihb[50],ihc[50];
long int ia[50],ib[50],ic[50];
unsigned long int la[50],lb[50],lc[50];
float ra[50],rb[50],rc[50];
double da[50],db[50],dc[50];
long double qa[50],qb[50],qc[50];
COMPLEX8 ca[50],cb[50],cc[50];
COMPLEX16 cda[50],cdb[50],cdc[50];
COMPLEX32 cqa[50],cqb[50],cqc[50];
int main()
{
	long int N1  = 50;
	long int N2  = 10;
	long int N3  = 10;
	long int I1  = 0;
	long int I2  = 1;
	long int I3  = 1;
	long int I4  = 0;
	long int I5  = 0;
	long int I6  = 0;
	long int I7  = 0;
	long int I8  = 0;
	long int I9  = 0;
	long int I10 = 0;
	long int I11 = 0;
	long int I12 = 0;
	long int I13 = 0;
	long int I14 = 0;
	long int I15 = 0;
	long int I16 = 0;
	long int I17 = 0;
	long int I18 = 0;
	unsigned char LBS1;
	short int IHS1,IHS2;
	long int IS1,IS2;
	unsigned long int LS1,LS2;
	float RS1,RS2;
	double DS1,DS2;
	long double QS1,QS2;
	COMPLEX8 CS1,CS2;
	COMPLEX16 CDS1,CDS2;
	COMPLEX32 CQS1,CQS2;
	long int i,j,k,l;

	for(i=0; i< 50; i++)
	{
		mask1[i] = 1;
	}
	for(i=0; i< 50; i++)
	{
		mask[i] = 1;
	}
	for(i=1; i<=N1; i++)
	{
		if (MASK1(i) == 1)
		{
			I1 = I1 + 1;
			IA(I1) = i;
			IB(I2) = -i;
			I2 =I2 + 1;
			IC(I3) =i + i;
			I3 = I3 + 1;
			I4 = I4 + 1;
			RA(I4) = 0;
			I5 = I5 + 1;
			RB(I5) = i;
			I6 = I6 + 1;
			RC(I6) = -i;
			I7 = I7 + 1;
			LA(I7) = 1;
			I8 = I8 + 1;
			LB(I8) =0 == fmod(i,2);
			I9 = I9 + 1;
			LC(I9) = 1^(0 == fmod(i,2));
			I10 = I10 + 1;
			DA(I10) = 0;
			I11 = I11 + 1;
			DB(I11) = i;
			I12 = I12 + 1;
			DC(I12) = -i;
			I13 = I13 + 1;
			QA(i) = 0;
			QB(I13) = i;
			QC(I13) = -i;
			CA(I13).real = 0;
			CA(I13).imag = 0;
			I14 = I14 + 1;
			CB(I14).real = i;
			CB(I14).imag = i;
			I15 = I15 + 1;
			CQA(I15).qreal = 0;
			CQA(I15).qimag = 0;
			CQB(i).qreal = i;
			CQB(i).qimag = i;
			CQC(I15).qreal = -i;
			CQC(I15).qimag = -i;
			CC(I15).real = -i;
			CC(I15).imag = -i;
			I16 = I16 + 1;
			CDA(I16).dreal = 0;
			CDA(I16).dimag = 0;
			I17 = I17 + 1;
			CDB(I17).dreal = i;
			CDB(I17).dimag = i;
			I18 = I18 + 1;
			CDC(I18).dreal = -i;
			CDC(I18).dimag = -i;
		}
LBL_1:
		;
	}
	RS1 = 0;
	RS2 = 0;
	IS2 = 0;
	DS1 = 0;
	DS2 = 0;
	CDS1.dreal = 0;
	CDS1.dimag = 0;
	j   = 0;
	k   = 1;
	l   = 1;
	for(i=1; i<=N2; i++)
	{
		if (LC(i) == 1)
		{
			LS1 = RA(i) > RB(i);
			DS2 = (DS2 > fabs(DC(k))) ? DS2:fabs(DC(k));
			QA(i) = QB(i) + QC(i);
			CA(i).real = CB(k).real - CC(k).real;
			CA(i).imag = CB(k).imag - CC(k).imag;
			CQA(i).qreal = CA(i).real + CB(k).real;
			k = k + 2;
			if ((LC(i) || LS1) == 1)
			{
				RS1 = RS1 + RB(i);
				j =j + 1;
				LBS1 = DB(i) == DC(i);
				DC(i) = DC(i) + 1;
				DA(j) = DB(i) * DC(i);
				DS1 = DS1 + DB(j);
				if (RS2 >  RA(i))
				{
					RS2 = RA(i);
					IS2 = i;
				}
				CQA(i).qreal = CQB(i).qreal * CQC(i).qreal
				    -CQB(i).qimag * CQC(i).qimag;
				CQA(i).qimag = CQB(i).qreal * CQC(i).qimag
				    +CQB(i).qimag * CQC(i).qreal;
				l = l + 1;
				LB(i) = LBS1;
				LS2 = DB(l) != DC(i);
				LA(i) = LS2;
			}
		}
LBL_10:
		;
	}
	printf(" DS2 = %g\n",DS2);
	printf(" CA \n");
	for(i=1; i<=50; i++)
	{
		printf(" (%g,%g) ",CA(i).real,CA(i).imag);
		if(i == 25)
		{
			printf("\n");
		}
	}
	printf("\n");
	printf(" K = %ld\n",k);
	printf(" RS1 = %g\n",RS1);
	printf(" J = %ld\n",j);
	printf(" DA \n");
	for(i=1; i<=50; i++)
	{
		printf(" %g ",DA(i));
		if(i == 25)
		{
			printf("\n");
		}
	}
	printf("\n");
	printf(" DS1 = %g\n",DS1);
	printf(" RS2 = %g\n",RS2);
	printf(" IS2 = %ld\n",IS2);
	printf(" L = %ld\n",l);
	printf(" LA \n");
	for(i=1; i<=50; i++)
	{
		printf(" %lu ",LA(i));
		if(i == 25)
		{
			printf("\n");
		}
	}
	printf("\n");
	exit (0);
}
