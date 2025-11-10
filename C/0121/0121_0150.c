#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define IA(i,j,k) ia[i-1][j-1][k-1]
#define IB(i,j,k) ib[i-1][j-1][k-1]
#define IC(i,j,k) ic[i-1][j-1][k-1]
#define IHA(i,j,k) iha[i-1][j-1][k-1]
#define IHB(i,j,k) ihb[i-1][j-1][k-1]
#define IHC(i,j,k) ihc[i-1][j-1][k-1]
#define LA(i,j,k) la[i-1][j-1][k-1]
#define LB(i,j,k) lb[i-1][j-1][k-1]
#define LC(i,j,k) lc[i-1][j-1][k-1]
#define LBA(i,j,k) lba[i-1][j-1][k-1]
#define LBB(i,j,k) lbb[i-1][j-1][k-1]
#define LBC(i,j,k) lbc[i-1][j-1][k-1]
#define RA(i,j,k) ra[i-1][j-1][k-1]
#define RB(i,j,k) rb[i-1][j-1][k-1]
#define RC(i,j,k) rc[i-1][j-1][k-1]
#define DA(i,j,k) da[i-1][j-1][k-1]
#define DB(i,j,k) db[i-1][j-1][k-1]
#define DC(i,j,k) dc[i-1][j-1][k-1]
#define QA(i,j,k) qa[i-1][j-1][k-1]
#define QB(i,j,k) qb[i-1][j-1][k-1]
#define QC(i,j,k) qc[i-1][j-1][k-1]
#define CA(i,j,k) ca[i-1][j-1][k-1]
#define CB(i,j,k) cb[i-1][j-1][k-1]
#define CC(i,j,k) cc[i-1][j-1][k-1]
#define CDA(i,j,k) cda[i-1][j-1][k-1]
#define CDB(i,j,k) cdb[i-1][j-1][k-1]
#define CDC(i,j,k) cdc[i-1][j-1][k-1]
#define CQA(i,j,k) cqa[i-1][j-1][k-1]
#define CQB(i,j,k) cqb[i-1][j-1][k-1]
#define CQC(i,j,k) cqc[i-1][j-1][k-1]
long int ia[7][7][7],ib[7][7][7],ic[7][7][7];
short int iha[7][7][7],ihb[7][7][7],ihc[7][7][7];
unsigned long int la[7][7][7],lb[7][7][7],lc[7][7][7];
unsigned char lba[7][7][7],lbb[7][7][7],lbc[7][7][7];
float ra[7][7][7],rb[7][7][7],rc[7][7][7];
double da[7][7][7],db[7][7][7],dc[7][7][7];
long double qa[7][7][7],qb[7][7][7],qc[7][7][7];
COMPLEX8 ca[7][7][7],cb[7][7][7],cc[7][7][7];
COMPLEX16 cda[7][7][7],cdb[7][7][7],cdc[7][7][7];
COMPLEX32 cqa[7][7][7],cqb[7][7][7],cqc[7][7][7];
int main()
{
	long int N1=7;
	long int N2=7;
	long int N3=7;
	long int NCWNR=7;
	long int CWNR=7;
	long int IS1;
	short int IHS1;
	unsigned long int LS1;
	unsigned char LBS1;
	float RS1;
	double DS1;
	long double QS1;
	COMPLEX8 CS1;
	COMPLEX16 CDS1;
	COMPLEX32 CQS1;
	long int I,J,K,I1,J1,I2,K2,I3,J3,I4,J4,J5,K5,J7,I8,J8,K8;
	long int I5,I6,I7,J2,J6,K1,K3,K4,K6,K7,CTR;
	for(K=1;K<=N1;K++)
	{
		for(J=1;J<=N1;J++)
		{
			for(I=1;I<=N2;I++)
			{
				IA(I,J,K)=0;
				IB(I,J,K)=I+J+K;
				IC(I,J,K)=I-J-K;
				RA(I,J,K)=(float)(0);
				RB(I,J,K)=(float)(I+J+K);
				RC(I,J,K)=(float)(I-J*K);
				DA(I,J,K)=(double)(0);
				DB(I,J,K)=(double)(I+J*K);
				DC(I,J,K)=(double)(I-J/K);
				QA(I,J,K)=(long double)(0);
				QB(I,J,K)=(long double)(I+J*K);
				QC(I,J,K)=(long double)(I-J+K);
				IHA(I,J,K)=0;
				IHB(I,J,K)=I+J-K;
				IHC(I,J,K)=I-J*K;
				LA(I,J,K)=0;
				LB(I,J,K)=0==I%2;
				LC(I,J,K)=1==I%3;
				LBA(I,J,K)=0;
				LBB(I,J,K)=0==I%2;
				LBC(I,J,K)=!(0==I%2);
				CA(I,J,K).real=(float)(0);
				CA(I,J,K).imag=(float)(0);
				CB(I,J,K).real=(float)(I-J+K);
				CB(I,J,K).imag=(float)(0);
				CC(I,J,K).real=(float)(I+J*K);
				CC(I,J,K).imag=(float)(0);
				CDA(I,J,K).dreal=(double)(0);
				CDA(I,J,K).dimag=(double)(0);
				CDB(I,J,K).dreal=(double)(I-K+J);
				CDB(I,J,K).dimag=(double)(0);
				CDC(I,J,K).dreal=(double)(I+J+K);
				CDC(I,J,K).dimag=(double)(0);
				CQA(I,J,K).qreal=(long double)(0);
				CQA(I,J,K).qimag=(long double)(0);
				CQB(I,J,K).qreal=(long double)(I-J*K);
				CQB(I,J,K).qimag=(long double)(0);
				CQC(I,J,K).qreal=(long double)(I+J/K);
				CQC(I,J,K).qimag=(long double)(0);
LBL_1:
				;
			}
		}
	}
	IS1=0;
	RS1=0.;
	DS1=0.;
	CS1.real=0.;
	CS1.imag=0.;
	CDS1.dreal=(double)(0);
	CDS1.dimag=(double)(0);
	CQS1.qreal=(long double)(0);
	CQS1.qimag=(long double)(0);
	QS1=0.;
	IHS1=0;
	LS1=0;
	LBS1=0;
	printf(" *****  *****\n");
	printf(" ----- TEST NO.1 -----  V - V - V\n");
	for(I1=1;I1<=7;I1++)
	{
		for(J1=1;J1<=7;J1++)
		{
			for(K1=1;K1<=7;K1++)
			{
				IA(I1,J1,K1)=IB(I1,J1,K1)+IC(I1,J1,K1);
LBL_10:
				;
			}
		}
	}
	printf(" ----- TEST NO.2 -----  V - S - V\n");
	for(I2=1;I2<=7;I2++)
	{
		for(J2=1;J2<=7;J2++)
		{
			for(K2=1;K2<=7;K2++)
			{
				RA(I2,K2,5)=RB(I2,K2,5)*RC(I2,K2,5);
LBL_20:
				;
			}
		}
	}
	printf(" ----- TEST NO.3 -----  V - V - S\n");
	for(I3=1;I3<=7;I3++)
	{
		for(J3=1;J3<=7;J3++)
		{
			for(K3=1;K3<=7;K3++)
			{
				DA(I3,J3,3)=DB(I3,J3,3)-DC(I3,J3,3);
LBL_30:
				;
			}
		}
	}
	printf(" ----- TEST NO.4 -----  V - S - S\n");
	for(I4=1;I4<=7;I4++)
	{
		for(J4=1;J4<=2;J4++)
		{
			for(K4=1;K4<=2;K4++)
			{
				CA(I4,J4,K4).real=CB(I4,J4,K4).real+CC(I4,J4,K4).real;
				CA(I4,J4,K4).imag=CB(I4,J4,K4).imag+CC(I4,J4,K4).imag;
LBL_40:
				;
			}
		}
	}
	printf(" ----- TEST NO.5 -----  S - V - V\n");
	for(I5=1;I5<=7;I5++)
	{
		for(J5=1;J5<=7;J5++)
		{
			for(K5=1;K5<=7;K5++)
			{
				CA(J5,K5,2).real=CB(J5,K5,2).real+CC(J5,K5,2).real;
				CA(J5,K5,2).imag=CB(J5,K5,2).imag+CC(J5,K5,2).imag;
LBL_50:
				;
			}
		}
	}
	printf(" ----- TEST NO.6 -----  S - S - V\n");
	for(I6=1;I6<=7;I6++)
	{
		for(J6=1;J6<=7;J6++)
		{
			for(K6=1;K6<=7;K6++)
			{
				CDA(6,6,K6).dreal=CDB(6,6,K6).dreal+CDC(6,6,K6).dreal;
				CDA(6,6,K6).dimag=CDB(6,6,K6).dimag+CDC(6,6,K6).dimag;
LBL_60:
				;
			}
		}
	}
	printf("  I = %ld,  J = %ld\n",I,J);
	printf(" ----- TEST NO.7 -----  S - V - S\n");
	for(I7=1;I7<=7;I7++)
	{
		for(J7=1;J7<=7;J7++)
		{
			for(K7=1;K7<=7;K7++)
			{
				IA(J7,2,2)=IB(J7,2,3)+IC(J7,2,4);
LBL_70:
				;
			}
		}
	}
	printf(" ----- TEST NO.8 -----  S - S - S\n");
	for(I8=2;I8<=3;I8++)
	{
		for(J8=2;J8<=3;J8++)
		{
			for(K8=2;K8<=3;K8++)
			{
				LA(I8,J8,K8)=LA(I8-1,J8-1,K8-1) || LC(I8,J8,K8);
LBL_80:
				;
			}
		}
	}
	CTR=0;
	printf(" IA  = ");
	for(I=1;I<=7;I++){
		for(J=1;J<=7;J++){
			for(K=1;K<=7;K++){
				printf(" %ld",IA(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" LA  = ");
	for(I=1;I<=7;I++){
		for(J=1;J<=7;J++){
			for(K=1;K<=7;K++){
				printf(" %lu",LA(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" RA  = ");
	for(I=1;I<=7;I++){
		for(J=1;J<=7;J++){
			for(K=1;K<=7;K++){
				printf(" %g",RA(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" DA  = ");
	for(I=1;I<=7;I++){
		for(J=1;J<=7;J++){
			for(K=1;K<=7;K++){
				printf(" %g",DA(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" DC  = ");
	for(I=1;I<=7;I++){
		for(J=1;J<=7;J++){
			for(K=1;K<=7;K++){
				printf(" %g",DC(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" IHA  = ");
	for(I=1;I<=7;I++){
		for(J=1;J<=7;J++){
			for(K=1;K<=7;K++){
				printf(" %d",IHA(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" QA  = ");
	for(I=1;I<=7;I++){
		for(J=1;J<=7;J++){
			for(K=1;K<=7;K++){
				printf(" %g",(double)QA(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" CA  = ");
	for(I=1;I<=7;I++){
		for(J=1;J<=7;J++){
			for(K=1;K<=7;K++){
				printf(" (%g,%g)",CA(I,J,K).real,CA(I,J,K).imag);
				CTR++;
				if (CTR%CWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" CDA  = ");
	for(I=1;I<=7;I++){
		for(J=1;J<=7;J++){
			for(K=1;K<=7;K++){
				printf(" (%g,%g)",CDA(I,J,K).dreal,CDA(I,J,K).dimag);
				CTR++;
				if (CTR%CWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" CQA  = ");
	for(I=1;I<=7;I++){
		for(J=1;J<=7;J++){
			for(K=1;K<=7;K++){
				printf(" (%g,%g)",(double)CQA(I,J,K).qreal,(double)CQA(I,J,K).qimag);
				CTR++;
				if (CTR%CWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	printf("\n");

	exit(0);
}
