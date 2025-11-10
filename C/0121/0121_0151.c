#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define IA(i,j) ia[i-1][j-1]
#define IB(i,j) ib[i-1][j-1]
#define IC(i,j) ic[i-1][j-1]
#define IHA(i,j) iha[i-1][j-1]
#define IHB(i,j) ihb[i-1][j-1]
#define IHC(i,j) ihc[i-1][j-1]
#define LA(i,j) la[i-1][j-1]
#define LB(i,j) lb[i-1][j-1]
#define LC(i,j) lc[i-1][j-1]
#define LBA(i,j) lba[i-1][j-1]
#define LBB(i,j) lbb[i-1][j-1]
#define LBC(i,j) lbc[i-1][j-1]
#define RA(i,j) ra[i-1][j-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i,j) rc[i-1][j-1]
#define DA(i,j) da[i-1][j-1]
#define DB(i,j) db[i-1][j-1]
#define DC(i,j) dc[i-1][j-1]
#define QA(i,j) qa[i-1][j-1]
#define QB(i,j) qb[i-1][j-1]
#define QC(i,j) qc[i-1][j-1]
#define CA(i,j) ca[i-1][j-1]
#define CB(i,j) cb[i-1][j-1]
#define CC(i,j) cc[i-1][j-1]
#define CDA(i,j) cda[i-1][j-1]
#define CDB(i,j) cdb[i-1][j-1]
#define CDC(i,j) cdc[i-1][j-1]
#define CQA(i,j) cqa[i-1][j-1]
#define CQB(i,j) cqb[i-1][j-1]
#define CQC(i,j) cqc[i-1][j-1]
long int ia[10][10],ib[10][10],ic[10][10];
short int iha[10][10],ihb[10][10],ihc[10][10];
unsigned long int la[10][10],lb[10][10],lc[10][10];
unsigned char lba[10][10],lbb[10][10],lbc[10][10];
float ra[10][10],rb[10][10],rc[10][10];
double da[10][10],db[10][10],dc[10][10];
long double qa[10][10],qb[10][10],qc[10][10];
COMPLEX8 ca[10][10],cb[10][10],cc[10][10];
COMPLEX16 cda[10][10],cdb[10][10],cdc[10][10];
COMPLEX32 cqa[10][10],cqb[10][10],cqc[10][10];
int main()
{
	long int N1=10;
	long int N2=10;
	long int N3=10;
	long int NCWNR=7;
	long int CWNR=7;
	long int IS1;
	short int IHS;
	unsigned long int LS1;
	unsigned char LBS1;
	float RS1;
	double DS1;
	long double QS1;
	COMPLEX8 CS1;
	COMPLEX16 CDS1;
	COMPLEX32 CQS1;
	long int I,J,K,I4,CTR;
	for(J=1;J<=N1;J++)
	{
		for(I=1;I<=N2;I++)
		{
			IA(I,J)=0;
			IB(I,J)=I+J;
			IC(I,J)=I-J;
			RA(I,J)=(float)(0);
			RB(I,J)=(float)(I+J);
			RC(I,J)=(float)(I-J);
			DA(I,J)=(double)(0);
			DB(I,J)=(double)(I+J);
			DC(I,J)=(double)(I-J);
			QA(I,J)=(long double)(0);
			QB(I,J)=(long double)(I+J);
			QC(I,J)=(long double)(I-J);
			IHA(I,J)=0;
			IHB(I,J)=I+J;
			IHC(I,J)=I-J;
			LA(I,J)=0;
			LB(I,J)=0==I%2;
			LC(I,J)=!(LB(I,J));
			LBA(I,J)=0;
			LBB(I,J)=0==I%2;
			LBC(I,J)=!(LBB(I,J));
			CA(I,J).real=(float)(0);
			CA(I,J).imag=(float)(0);
			CB(I,J).real=(float)(I-1);
			CB(I,J).imag=(float)(0);
			CC(I,J).real=(float)(I+1);
			CC(I,J).imag=(float)(0);
			CDA(I,J).dreal=(double)(0);
			CDA(I,J).dimag=(double)(0);
			CDB(I,J).dreal=(double)(I-1);
			CDB(I,J).dimag=(double)(0);
			CDC(I,J).dreal=(double)(I+1);
			CDC(I,J).dimag=(double)(0);
			CQA(I,J).qreal=(long double)(0);
			CQA(I,J).qimag=(long double)(0);
			CQB(I,J).qreal=(long double)(I-1);
			CQB(I,J).qimag=(long double)(0);
			CQC(I,J).qreal=(long double)(I+1);
			CQC(I,J).qimag=(long double)(0);
LBL_1:
			;
		}
	}
	printf(" *****  *****\n");
	printf(" ----- TEST NO.1 ----- FUNCTION + IF\n");
	for(J=1;J<=10;J++)
	{
		for(K=1;K<=10;K++)
		{
			IA(J,K)=(0.5+pow(IB(J,K),3));
			RA(J,K)=sqrt(RB(J,K));
			if (LA(J,K)==1)
			{
				LB(J,K)=LC(J,K)&&(DA(J,K)>DB(J,K));
				if (LB(J,K)==1)
				{
					CA(J,K).real = CA(J,K).real + CB(J,K).real;
					CA(J,K).imag = CA(J,K).imag + CB(J,K).imag;
				}
			}
			else
			{
				DA(J,K)=sin(DC(J,K));
			}
LBL_10:
			;
		}
	}
	printf(" ----- TEST NO.2 -----  IF NEST \n");
	for(J=1;J<=10;J++)
	{
		for(K=1;K<=10;K++)
		{
			if (IA(J,K) >  IB(J,K))
			{
				if (RA(J,K) <  RB(J,K))
				{
					if (DA(J,K) != DB(J,K))
					{
						CA(J,K).real=CB(J,K).real+CC(J,K).real;
						CA(J,K).imag=CB(J,K).imag+CC(J,K).imag;
					}
					else
					{
						LA(J,K)=LB(J,K)&&LC(J,K);
					}
				}
				else
				{
					if (   CDA(J,K).dreal == CDB(J,K).dreal
					    && CDA(J,K).dimag == CDB(J,K).dimag)
					{
						CA(J,K).real=CB(J,K).real-CC(J,K).real;
						CA(J,K).imag=CB(J,K).imag-CC(J,K).imag;
					}
				}
			}
			else
			{
				if (LA(J,K)==1)  LB(J,K) = LC(J,K) || LB(J,K);
			}
LBL_20:
			;
		}
	}
	IS1=0;
	RS1=(float)(0);
	printf(" ----- TEST NO.3 -----  MACRO\n");
	for(K=1;K<=10;K++)
	{
		for(J=1;J<=3;J++)
		{
			IS1=IS1+IA(K,J);
			RS1=(RS1>RA(K,J))? RS1:RA(K,J);
			DA(K,J)=DB(K,J)*DC(K,J);
LBL_30:
			;
		}
	}
	printf(" ----- TEST NO.4 -----  INDUCTION \n");
	I4=0;
	for(J=1;J<=4;J++)
	{
		for(K=1;K<=2;K++)
		{
			I4=I4+1;
			RA(J,I4)=RB(J,I4)+RC(J,I4);
LBL_40:
			;
		}
	}
	printf(" ----- TEST NO.5 -----  EXTENDED DO LOOPS\n");
	for(J=1;J<=10;J++)
	{
		for(K=1;K<=10;K++)
		{
			DA(K,J)=DB(K,J)+DC(K,J);
			goto LBL_51;
LBL_52:
			;
			CA(K,J).real=  CB(K,J).real*CC(K,J).real
			    - CB(K,J).imag*CC(K,J).imag;
			CA(K,J).imag=  CB(K,J).real*CC(K,J).imag
			    + CB(K,J).imag*CC(K,J).real;
LBL_50:
			;
		}
	}
	goto LBL_53;
LBL_51:
	;
	LA(K,J)=LB(K,J)|LC(K,J);
	goto LBL_52;
LBL_53:
	;
	printf(" ----- TEST NO.6 -----  SCALAR ELEMENTS\n");
	CTR=0;
	printf(" IA = ");
	for(J=1;J<=10;J++)
	{
		for(K=1;K<=2;K++)
		{
			printf(" %ld ",IA(J,K));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("      ");
			}
			DA(J,K)=DB(J,K)+DC(J,K);
			CDA(J,K).dreal=   (CDC(J,K).dreal+1.)
			    *(  CDA(J,K).dreal*CDB(J,K).dreal
			    - CDA(J,K).dimag*CDB(J,K).dimag)
			    + (CDC(J,K).dimag+1.)
			    *(  CDA(J,K).dreal*CDB(J,K).dimag
			    + CDA(J,K).dimag*CDB(J,K).dreal)
			    /  (  CDC(J,K).dreal*CDC(J,K).dreal
			    + CDC(J,K).dimag*CDC(J,K).dimag);

			CDA(J,K).dimag=   (CDC(J,K).dreal+1.)
			    *(  CDA(J,K).dreal*CDB(J,K).dimag
			    + CDA(J,K).dimag*CDB(J,K).dreal)
			    - (CDC(J,K).dimag+1.)
			    *(  CDA(J,K).dreal*CDB(J,K).dreal
			    - CDA(J,K).dimag*CDB(J,K).dimag)
			    /  (  CDC(J,K).dreal*CDC(J,K).dreal
			    + CDC(J,K).dimag*CDC(J,K).dimag);
LBL_60:
			;
		}
	}
	CTR=0;
	printf(" IA = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %ld ",IA(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" LA = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %lu",LA(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" RA = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %g ",RA(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" DA = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %g ",DA(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" DC = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %g ",DC(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" IHA = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %d ",IHA(I,J));
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
	printf(" QA = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" %g ",(double)QA(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" CA = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" (%g,%g)",CA(I,J).real,CA(I,J).imag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" CDA = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" (%g,%g)",CDA(I,J).dreal,CDA(I,J).dimag);
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
	printf(" CQA = ");
	for(I=1;I<=10;I++){
		for(J=1;J<=10;J++){
			printf(" ( %g , %g )",(double)CQA(I,J).qreal,(double)CQA(I,J).qimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	printf("\n");

	exit(0);
}
