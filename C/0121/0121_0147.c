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
	long int I,J,L,M,K,CTR;
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
			QB(I,J)=              I+J;
			QC(I,J)=              I-J;
			IHA(I,J)=0;
			IHB(I,J)=I+J;
			IHC(I,J)=I-J;
			LA(I,J)=0;
			LB(I,J)=0==I%2;
			LC(I,J)=0==I%3;
			LBA(I,J)=0;
			LBB(I,J)=0==I%4;
			LBC(I,J)=0==I%5;
			CA(I,J).real=(float)(0);
			CA(I,J).imag=(float)(0);
			CB(I,J).real=(float)(I-1);
			CB(I,J).imag=(float)(I-1);
			CC(I,J).real=(float)(I+1);
			CC(I,J).imag=(float)(I+1);
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
	printf(" ----- TEST NO.1 -----  OUTER = V  INNER = V & V\n");
	for(I=1;I<=N1;I++)
	{
		DA(I,1)=sqrt(fabs(DB(I,1)))*DC(I,1);
		for(J=1;J<=10;J++)
		{
			for(K=1;K<=10;K++)
			{
				IA(J,K)=IB(J,K)+IC(J,K);
LBL_10:
				;
			}
		}
		DC(I,2)=sqrt(fabs(DA(I,2)))+DB(I,2);
		for(L=1;L<=N2;L++)
		{
			for(M=1;M<=N2;M++)
			{
				RA(L,M)=RB(L,M)*RC(L,M);
LBL_11:
				;
			}
		}
LBL_100:
		;
	}
	printf(" ----- TEST NO.2 -----  OUT = V  IN = V(MI) & V(SI)\n");
	for(I=1;I<=N1;I++)
	{
		DA(I,1)=sqrt(fabs(DB(I,1)))*DC(I,1);
		for(J=1;J<=N2;J++)
		{
			for(K=1;K<=N2;K++)
			{
				CA(J,K).real=CB(J,K).real+CC(J,K).real;
				CA(J,K).imag=CB(J,K).imag+CC(J,K).imag;
LBL_20:
				;
			}
		}
		DC(I,2)=sqrt(fabs(DA(I,2)))+DB(I,2);
		DS1=0.0;
		for(L=1;L<=N2;L++)
		{
			for(M=1;M<=N2;M++)
			{
				RA(M,L)=RB(M,L)*RC(M,L);
				DS1=DS1+DB(M,L);
LBL_21:
				;
			}
		}
LBL_200:
		;
	}
	printf("  DS1 =  %g ",DS1);
	printf(" ----- TEST NO.3 -----  OUT = V  IN = V(MI) & S\n");
	for(I=1;I<=N1;I++)
	{
		DA(I,1)=sqrt(fabs(DB(I,1)))*DC(I,1);
		for(J=1;J<=10;J++)
		{
			for(K=1;K<=10;K++)
			{
				CDA(J,K).dreal=CDB(J,K).dreal+CDC(J,K).dreal;
				CDA(J,K).dimag=CDB(J,K).dimag+CDC(J,K).dimag;
LBL_30:
				;
			}
		}
		DC(I,2)=sqrt(fabs(DA(I,2)))+DB(I,2);
		for(L=1;L<=N2;L++)
		{
			for(M=1;M<=N2;M++)
			{
				QA(L,M)=QB(L,M)*QC(M,L);
LBL_31:
				;
			}
		}
LBL_300:
		;
	}
	printf(" ----- TEST NO.4 -----  OUT = V  IN = V(SI) & S\n");
	for(I=1;I<=N1;I++)
	{
		DA(I,1)=sqrt(fabs(DB(I,1)))*DC(I,1);
		IS1=0;
		for(J=1;J<=N2;J++)
		{
			for(K=1;K<=N3;K++)
			{
				CQA(K,J).qreal=  CQB(K,J).qreal*CQC(K,J).qreal
				    - CQB(K,J).qimag*CQC(K,J).qimag;
				CQA(K,J).qimag=  CQB(K,J).qreal*CQC(K,J).qimag
				    + CQB(K,J).qimag*CQC(K,J).qreal;
LBL_40:
				;
			}
		}
		DC(I,2)=sqrt(fabs(DA(I,2)))+DB(I,2);
		for(L=1;L<=N2;L++)
		{
			for(M=1;M<=N2;M++)
			{
				IS1=IS1+IB(L,M);
				IA(L,M)=IB(L,M)+IC(L,M);
				RA(L,M)=RB(L,M)*RC(M,L);
LBL_41:
				;
			}
		}
LBL_400:
		;
	}
	printf(" ----- TEST NO.5 -----  OUT = V  IN = S & S\n");
	for(I=1;I<=N1;I++)
	{
		DA(I,1)=sqrt(fabs(DB(I,1)))*DC(I,1);
		for(J=1;J<=N3;J++)
		{
			for(K=1;K<=N3;K++)
			{
				QA(J,K)=QB(J,K)+QC(K,J);
LBL_50:
				;
			}
		}
		DC(I,2)=sqrt(fabs(DA(I,2)))+DB(I,2);
		for(L=1;L<=N2;L++)
		{
			for(M=1;M<=N3;M++)
			{
				IHA(L,M)=IHB(L,M)*IHC(M,L);
LBL_51:
				;
			}
		}
LBL_500:
		;
	}
	printf(" ----- TEST NO.6 -----  OUT = V  IN = V(MI) & N\n");
	for(I=1;I<=N1;I++)
	{
		DA(I,1)=sqrt(fabs(DB(I,1)))*DC(I,1);
		for(J=1;J<=N2;J++)
		{
			for(K=1;K<=N3;K++)
			{
LBL_60:
				;
			}
		}
		DC(I,2)=sqrt(fabs(DA(I,2)))+DB(I,2);
		for(L=1;L<=10;L++)
		{
			for(M=1;M<=10;M++)
			{
				RA(L,M)=RB(L,M)*RC(L,M);
LBL_61:
				;
			}
		}
LBL_600:
		;
	}
	CTR=0;
	printf(" IA  = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" %ld",IA(I,J));
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
	printf(" RA  = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" %g",RA(I,J));
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
	printf(" DA  = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" %g",DA(I,J));
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
	printf(" DC  = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" %g",DC(I,J));
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
	printf(" IHA  = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" %d",IHA(I,J));
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
	printf(" QA  = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" %g",(double)QA(I,J));
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
	printf(" CA  = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" (%g,%g)",CA(I,J).real,CA(I,J).imag);
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
	printf(" CDA  = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
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
	printf(" CQA  = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" (%g,%g)",(double)CQA(I,J).qreal,(double)CQA(I,J).qimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	printf("\n");
	exit (0);
}
