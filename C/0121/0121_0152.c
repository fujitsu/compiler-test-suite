#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define IA1(i) ia1[i-1]
#define IB1(i) ib1[i-1]
#define IC1(i) ic1[i-1]
#define IHA1(i) iha1[i-1]
#define IHB1(i) ihb1[i-1]
#define IHC1(i) ihc1[i-1]
#define LA1(i) la1[i-1]
#define LB1(i) lb1[i-1]
#define LC1(i) lc1[i-1]
#define LBA1(i) lba1[i-1]
#define LBB1(i) lbb1[i-1]
#define LBC1(i) lbc1[i-1]
#define RA1(i) ra1[i-1]
#define RB1(i) rb1[i-1]
#define RC1(i) rc1[i-1]
#define DA1(i) da1[i-1]
#define DB1(i) db1[i-1]
#define DC1(i) dc1[i-1]
#define QA1(i) qa1[i-1]
#define QB1(i) qb1[i-1]
#define QC1(i) qc1[i-1]
#define CA1(i) ca1[i-1]
#define CB1(i) cb1[i-1]
#define CC1(i) cc1[i-1]
#define CDA1(i) cda1[i-1]
#define CDB1(i) cdb1[i-1]
#define CDC1(i) cdc1[i-1]
#define CQA1(i) cqa1[i-1]
#define CQB1(i) cqb1[i-1]
#define CQC1(i) cqc1[i-1]
#define IA2(i,j) ia2[i-1][j-1]
#define IB2(i,j) ib2[i-1][j-1]
#define IC2(i,j) ic2[i-1][j-1]
#define IHA2(i,j) iha2[i-1][j-1]
#define IHB2(i,j) ihb2[i-1][j-1]
#define IHC2(i,j) ihc2[i-1][j-1]
#define LA2(i,j) la2[i-1][j-1]
#define LB2(i,j) lb2[i-1][j-1]
#define LC2(i,j) lc2[i-1][j-1]
#define LBA2(i,j) lba2[i-1][j-1]
#define LBB2(i,j) lbb2[i-1][j-1]
#define LBC2(i,j) lbc2[i-1][j-1]
#define RA2(i,j) ra2[i-1][j-1]
#define RB2(i,j) rb2[i-1][j-1]
#define RC2(i,j) rc2[i-1][j-1]
#define DA2(i,j) da2[i-1][j-1]
#define DB2(i,j) db2[i-1][j-1]
#define DC2(i,j) dc2[i-1][j-1]
#define QA2(i,j) qa2[i-1][j-1]
#define QB2(i,j) qb2[i-1][j-1]
#define QC2(i,j) qc2[i-1][j-1]
#define CA2(i,j) ca2[i-1][j-1]
#define CB2(i,j) cb2[i-1][j-1]
#define CC2(i,j) cc2[i-1][j-1]
#define CDA2(i,j) cda2[i-1][j-1]
#define CDB2(i,j) cdb2[i-1][j-1]
#define CDC2(i,j) cdc2[i-1][j-1]
#define CQA2(i,j) cqa2[i-1][j-1]
#define CQB2(i,j) cqb2[i-1][j-1]
#define CQC2(i,j) cqc2[i-1][j-1]
long int ia1[10],ib1[10],ic1[10];
short int iha1[10],ihb1[10],ihc1[10];
unsigned long int la1[10],lb1[10],lc1[10];
unsigned char lba1[10],lbb1[10],lbc1[10];
float ra1[10],rb1[10],rc1[10];
double da1[10],db1[10],dc1[10];
long double qa1[10],qb1[10],qc1[10];
COMPLEX8 ca1[10],cb1[10],cc1[10];
COMPLEX16 cda1[10],cdb1[10],cdc1[10];
COMPLEX32 cqa1[10],cqb1[10],cqc1[10];
long int ia2[10][10],ib2[10][10],ic2[10][10];
short int iha2[10][10],ihb2[10][10],ihc2[10][10];
unsigned long int la2[10][10],lb2[10][10],lc2[10][10];
unsigned char lba2[10][10],lbb2[10][10],lbc2[10][10];
float ra2[10][10],rb2[10][10],rc2[10][10];
double da2[10][10],db2[10][10],dc2[10][10];
long double qa2[10][10],qb2[10][10],qc2[10][10];
COMPLEX8 ca2[10][10],cb2[10][10],cc2[10][10];
COMPLEX16 cda2[10][10],cdb2[10][10],cdc2[10][10];
COMPLEX32 cqa2[10][10],cqb2[10][10],cqc2[10][10];
int main()
{
	long int N1=10;
	long int N2=10;
	long int N3=10;
	long int NCWNR=8;
	long int CWNR=8;
	long int IS1;
	short int IHS1;
	unsigned long int LS1;
	unsigned char LBS1;
	float RS1;
	double DS1=0.;
	long double QS1;
	COMPLEX8 CS1;
	COMPLEX16 CDS1;
	COMPLEX32 CQS1;
	long int I,J,K,CTR;
	J=3;
	for(I=1;I<=N2;I++)
	{
		IA1(I)=0;
		IB1(I)=I+J;
		IC1(I)=I-J;
		RA1(I)=(float)(0);
		RB1(I)=(float)(I+J);
		RC1(I)=(float)(I-J);
		DA1(I)=(double)(0);
		DB1(I)=(double)(I+J);
		DC1(I)=(double)(I-J);
		QA1(I)=(long double)(0);
		QB1(I)=(long double)(I+J);
		QC1(I)=(long double)(I-J);
		IHA1(I)=0;
		IHB1(I)=I+J;
		IHC1(I)=I-J;
		LA1(I)=0;
		LB1(I)=1;
		LC1(I)=0;
		LBA1(I)=0;
		LBB1(I)=1;
		LBC1(I)=0;
		CA1(I).real=(float)(0);
		CA1(I).imag=(float)(0);
		CB1(I).real=(float)(I-1);
		CB1(I).imag=(float)(0);
		CC1(I).real=(float)(I+1);
		CC1(I).imag=(float)(0);
		CDA1(I).dreal=(double)(0);
		CDA1(I).dimag=(double)(0);
		CDB1(I).dreal=(double)(I-1);
		CDB1(I).dimag=(double)(0);
		CDC1(I).dreal=(double)(I+1);
		CDC1(I).dimag=(double)(0);
		CQA1(I).qreal=(long double)(0);
		CQA1(I).qimag=(long double)(0);
		CQB1(I).qreal=(long double)(I-1);
		CQB1(I).qimag=(long double)(0);
		CQC1(I).qreal=(long double)(I+1);
		CQC1(I).qimag=(long double)(0);
LBL_1:
		;
	}
	for(J=1;J<=N1;J++)
	{
		for(I=1;I<=N2;I++)
		{
			IA2(I,J)=0;
			IB2(I,J)=I+J;
			IC2(I,J)=I-J;
			RA2(I,J)=(float)(0);
			RB2(I,J)=(float)(I+J);
			RC2(I,J)=(float)(I-J);
			DA2(I,J)=(double)(0);
			DB2(I,J)=(double)(I+J);
			DC2(I,J)=(double)(I-J);
			QA2(I,J)=(long double)(0);
			QB2(I,J)=(long double)(I+J);
			QC2(I,J)=(long double)(I-J);
			IHA2(I,J)=0;
			IHB2(I,J)=I+J;
			IHC2(I,J)=I-J;
			LA2(I,J)=0;
			LB2(I,J)=1;
			LC2(I,J)=0;
			LBA2(I,J)=0;
			LBB2(I,J)=1;
			LBC2(I,J)=0;
			CA2(I,J).real=(float)(0);
			CA2(I,J).imag=(float)(0);
			CB2(I,J).real=(float)(I-1);
			CB2(I,J).imag=(float)(I-1);
			CC2(I,J).real=(float)(I+1);
			CC2(I,J).imag=(float)(I+1);
			CDA2(I,J).dreal=(double)(0);
			CDA2(I,J).dimag=(double)(0);
			CDB2(I,J).dreal=(double)(I-1);
			CDB2(I,J).dimag=(double)(0);
			CDC2(I,J).dreal=(double)(I+1);
			CDC2(I,J).dimag=(double)(0);
			CQA2(I,J).qreal=(long double)(0);
			CQA2(I,J).qimag=(long double)(0);
			CQB2(I,J).qreal=(long double)(I-1);
			CQB2(I,J).qimag=(long double)(0);
			CQC2(I,J).qreal=(long double)(I+1);
			CQC2(I,J).qimag=(long double)(0);
LBL_2:
			;
		}
	}
	printf(" *****  *****\n");
	printf(" ----- TEST NO.1 ----- UPPER SAB    \n");
	for(J=1;J<=10;J++)
	{
		IA1(J)=J;
		RA1(J)=(float)(IA1(J))+RB1(J);
		DB1(5)=DB1(5)+DC1(J);
		for(K=1;K<=5;K++)
		{
			IA2(J,K)=(0.5+pow(IB2(J,K),3));
			RA2(J,K)=sqrt(RB2(J,K));
			if (LA2(J,K)==1)
			{
				LB2(J,K)=LC2(J,K)&&(DA2(J,K)>DB2(J,K));
				if (LB2(J,K)==1)
				{
					CA2(J,K).real = (float)(CDA2(J,K).dreal+CDB2(J,K).dreal);
					CA2(J,K).imag = (float)(CDA2(J,K).dimag+CDB2(J,K).dimag);
				}
			}
			else
			{
				DA2(J,K)=sin(DC2(J,K));
			}
LBL_10:
			;
		}
	}
	CTR=0;
	printf(" IA1 = ");
	for(I=1;I<=10;I++){
		printf(" %ld",IA1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	CTR=0;
	printf("\n");
	printf(" RA1 = ");
	for(I=1;I<=10;I++){
		printf(" %g",RA1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	CTR=0;
	printf("\n");
	printf(" DB1 = ");
	for(I=1;I<=10;I++){
		printf(" %g",DB1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	CTR=0;
	printf("\n");
	printf(" IA2 = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %ld",IA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" RA2 = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %g",RA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" LB2 = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %lu",LB2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" CA2 = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" (%g,%g)",CA2(I,J).real,CA2(I,J).imag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" DA2 = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %g",DA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	printf("\n");
	printf(" ----- TEST NO.2 ----- LOWER SAB    \n");
	for(J=1;J<=10;J++)
	{
		for(K=1;K<=5;K++)
		{
			IA2(J,K)=(0.5+pow(IB2(J,K),3));
			if (LA2(5,5)==1)
			{
				LB2(J,K)=LC2(J,K)&&(DA2(J,K)>DB2(J,K));
				if (LB2(J,K)==1)
				{
					CA2(J,K).real = (float)(CDA2(J,K).dreal+CDB2(J,K).dreal);
					CA2(J,K).imag = (float)(CDA2(J,K).dimag+CDB2(J,K).dimag);
				}
			}
			else
			{
				DA2(J,K)=sin(DC2(J,K));
			}
			RA2(J,K)=sqrt(RB2(J,K));
LBL_20:
			;
		}
		LA1(J)=!(LB1(J));
		IA1(J)=J;
		RA1(J)=(float)(IA1(J))+RB1(J);
		DB1(5)=DB1(5)+DC1(J);
LBL_21:
		;
	}
	CTR=0;
	printf(" IA2 = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %ld",IA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" RA2 = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %g",RA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" LB2 = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %lu",LB2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" CA2 = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" (%g,%g)",CA2(I,J).real,CA2(I,J).imag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" DA2 = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %g",DA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" LB1 = ");
	for(I=1;I<=10;I++){
		printf(" %lu",LB1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	CTR=0;
	printf("\n");
	printf(" IA1 = ");
	for(I=1;I<=10;I++){
		printf(" %ld",IA1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	CTR=0;
	printf("\n");
	printf(" RA1 = ");
	for(I=1;I<=10;I++){
		printf(" %g",RA1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	CTR=0;
	printf("\n");
	printf(" DB1 = ");
	for(I=1;I<=10;I++){
		printf(" %g",DB1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	printf(" ----- TEST NO.3 ----- UPPER/LOWER SAB \n");
	for(J=1;J<=10;J++)
	{
		CA1(J).real=  CB1(J).real*CC1(J).real
		    - CB1(J).imag*CC1(J).imag;
		CA1(J).imag=  CB1(J).real*CC1(J).imag
		    + CB1(J).imag*CC1(J).real;
		CDA1(J).dreal=CDB1(J).dreal;
		CDA1(J).dimag=CDB1(J).dimag;
		if (LC1(J)==1)  DS1 = DS1 + DA1(J);
		for(K=1;K<=5;K++)
		{
			IA2(J,K)=(0.5+pow(IB2(J,K),3));
			if (LB1(J)==1)
			{
				LB2(J,K)=!(LC2(J,K));
			}
			else
			{
				DA2(J,K)=sin(DC2(J,K));
				if (LB2(J,K)==1)
				{
					CDA2(J,K).dreal =  (CDA2(J,K).dreal*CDB2(J,K).dreal
					    + CDA2(J,K).dimag*CDB2(J,K).dimag)
					    / (CDB2(J,K).dreal*CDB2(J,K).dreal
					    + CDB2(J,K).dimag*CDB2(J,K).dimag);
					CDA2(J,K).dimag =  (CDA2(J,K).dimag*CDB2(J,K).dreal
					    - CDA2(J,K).dreal*CDB2(J,K).dimag)
					    / (CDB2(J,K).dreal*CDB2(J,K).dreal
					    + CDB2(J,K).dimag*CDB2(J,K).dimag);
				}
			}
			RA2(J,K)=sqrt(RB2(J,K));
LBL_30:
			;
		}
		LA1(J)=0;
		IA1(J)=J;
		RA1(J)=(float)(IA1(J))+RB1(J);
		DB1(5)=DB1(5)+DC1(J);
LBL_31:
		;
	}
	CTR=0;
	printf(" CA1 = ");
	for(I=1;I<=10;I++){
		printf(" (%g,%g)",CA1(I).real,CA1(I).imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	CTR=0;
	printf("\n");
	printf(" CDA1 = ");
	for(I=1;I<=10;I++){
		printf(" (%g,%g)",CDA1(I).dreal,CDA1(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("        ");
		}
	}
	printf("\n");
	printf(" DS1 =  %g ",DS1);
	CTR=0;
	printf("\n");
	printf(" IA2 = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %ld",IA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" RA2 = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %g",RA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" LB2 = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %lu",LB2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" DA2 = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %g",DA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" CDA2 = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" (%g,%g)",CDA2(I,J).dreal,CDA2(I,J).dimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("        ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" RA2 = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %g",RA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" LA1 = ");
	for(I=1;I<=10;I++){
		printf(" %lu",LA1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	CTR=0;
	printf("\n");
	printf(" IA1 = ");
	for(I=1;I<=10;I++){
		printf(" %ld",IA1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	CTR=0;
	printf("\n");
	printf(" RA1 = ");
	for(I=1;I<=10;I++){
		printf(" %g",RA1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	CTR=0;
	printf("\n");
	printf(" DB1 = ");
	for(I=1;I<=10;I++){
		printf(" %g",DB1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");

	exit(0);
}
