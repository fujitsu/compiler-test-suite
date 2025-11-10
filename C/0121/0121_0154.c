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
#define IA3(i,j,k) ia3[i-1][j-1][k-1]
#define IB3(i,j,k) ib3[i-1][j-1][k-1]
#define IC3(i,j,k) ic3[i-1][j-1][k-1]
#define LA3(i,j,k) la3[i-1][j-1][k-1]
#define LB3(i,j,k) lb3[i-1][j-1][k-1]
#define LC3(i,j,k) lc3[i-1][j-1][k-1]
#define RA3(i,j,k) ra3[i-1][j-1][k-1]
#define RB3(i,j,k) rb3[i-1][j-1][k-1]
#define RC3(i,j,k) rc3[i-1][j-1][k-1]
#define DA3(i,j,k) da3[i-1][j-1][k-1]
#define DB3(i,j,k) db3[i-1][j-1][k-1]
#define DC3(i,j,k) dc3[i-1][j-1][k-1]
#define CA3(i,j,k) ca3[i-1][j-1][k-1]
#define CB3(i,j,k) cb3[i-1][j-1][k-1]
#define CC3(i,j,k) cc3[i-1][j-1][k-1]
#define CDA3(i,j,k) cda3[i-1][j-1][k-1]
#define CDB3(i,j,k) cdb3[i-1][j-1][k-1]
#define CDC3(i,j,k) cdc3[i-1][j-1][k-1]
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
long int ia3[10][5][2],ib3[10][5][2],ic3[10][5][2];
unsigned long int la3[10][5][2],lb3[10][5][2],lc3[10][5][2];
float ra3[10][5][2],rb3[10][5][2],rc3[10][5][2];
double da3[10][5][2],db3[10][5][2],dc3[10][5][2];
COMPLEX8 ca3[10][5][2],cb3[10][5][2],cc3[10][5][2];
COMPLEX16 cda3[10][5][2],cdb3[10][5][2],cdc3[10][5][2];
int main()
{
	long int N1=10;
	long int N2=10;
	long int NCWNR=8;
	long int CWNR=7;
	long int IS1=0;
	float RS1=0.;
	double DS1=0.;
	long int I,J,K,N,CTR;
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
			CB2(I,J).imag=(float)(0);
			CC2(I,J).real=(float)(I+1);
			CC2(I,J).imag=(float)(0);
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
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=5;J++)
		{
			for(K=1;K<=2;K++)
			{
				IA3(I,J,K)=0;
				IB3(I,J,K)=I*J*K;
				IC3(I,J,K)=I-J*K;
				RA3(I,J,K)=(float)(I+J-K);
				RB3(I,J,K)=(float)(I*J*K);
				RC3(I,J,K)=(float)(I-J*K);
				DA3(I,J,K)=(double)(I+J-K);
				DB3(I,J,K)=(double)(I*J*K);
				DC3(I,J,K)=(double)(I-J*K);
				CA3(I,J,K).real=(float)(I+J-K);
				CA3(I,J,K).imag=(float)(0);
				CB3(I,J,K).real=(float)(I*J*K);
				CB3(I,J,K).imag=(float)(0);
				CC3(I,J,K).real=(float)(I-J*K);
				CC3(I,J,K).imag=(float)(0);
				CDA3(I,J,K).dreal=(double)(I+J-K);
				CDA3(I,J,K).dimag=(double)(0);
				CDB3(I,J,K).dreal=(double)(I*J*K);
				CDB3(I,J,K).dimag=(double)(0);
				CDC3(I,J,K).dreal=(double)(I-J*K);
				CDC3(I,J,K).dimag=(double)(0);
				LA3(I,J,K)=0;
				LB3(I,J,K)=2==I%2;
				LC3(I,J,K)=1;
LBL_3:
				;
			}
		}
	}
	printf(" *****  *****\n");
	printf(" ----- TEST NO.1 ----- UPPER SAB    \n");
	for(I=1;I<=10;I++)
	{
		if (LA1(I)==1)
		{
			IS1=IS1+IA1(I);
		}
		else
		{
			RS1=(RA1(I) > RS1)? RA1(I):RS1;
		}
		RA1(I)=(float)(I);
		for(J=1;J<=2;J++)
		{
			for(K=1;K<=2;K++)
			{
				DA3(I,J,K)=DA3(I,J,K)+DB3(I,J,K);
				RA2(I,J)=sqrt(RB2(I,J))+RA2(I,J)+RA1(I);
				if (LA2(I,J)==1) DS1 = DS1 + DB2(I,J);
LBL_11:
				;
			}
			CA2(I,J).real=(float)(IA1(I))+DA1(I);
			CA2(I,J).imag=(float)(0);
			DB2(I,J)=DB2(I,J)*2.0+DA1(I);
			RA2(I,J)=0.0;
			LC2(I,J)=DB2(I,J)>DC2(I,J);
LBL_10:
			;
		}
	}
	printf(" IS1 =  %ld\n",IS1);
	printf(" RS1 =  %g\n",RS1);
	printf(" RA1 = ");
	for(I=1;I<=10;I++)
	{
		printf(" %g",RA1(I));
		if (I%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	CTR=0;
	printf("\n");
	printf(" DA3 = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=5;J++)
		{
			for(K=1;K<=2;K++)
			{
				printf(" %g",DA3(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
LBL_990:
	;
	CTR=0;
	printf("\n");
	printf(" RA2 = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" %g",RA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("         ");
			}
		}
	}
	printf("\n");
LBL_989:
	;
	printf(" DS1 =  %g\n",DS1);
	CTR=0;
	printf(" CA2 = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" (%g,%g)",CA2(I,J).real,CA2(I,J).imag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("         ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" DB2 = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" %g",DA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("         ");
			}
		}
	}
LBL_991:
	;
	CTR=0;
	printf("\n");
	printf(" LC2 = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" %lu",LC2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("         ");
			}
		}
	}
	printf("\n");
LBL_992:
	;
	printf(" ----- TEST NO.2 ----- LOWER SAB    \n");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=5;J++)
		{
			LC2(I,J)=DB2(I,J)!=DC2(I,J);
			if (LC2(I,J)==1)
			{
				CA2(I,J).real =  CA2(I,J).real*CB2(I,J).real
				    - CA2(I,J).imag*CB2(I,J).imag;
				CA2(I,J).imag =  CA2(I,J).real*CB2(I,J).imag
				    + CA2(I,J).imag*CB2(I,J).real;
			}
			for(K=1;K<=2;K++)
			{
				DA3(I,J,K)=DB3(I,J,K)+DB2(I,J);
				CA2(I,J).real=CA3(I,J,K).real-CB3(I,J,K).real;
				CA2(I,J).imag=CA3(I,J,K).imag-CB3(I,J,K).imag;
				if (LA2(I,J)==1)  LB2(I,J) = !(LC2(I,J));
LBL_22:
				;
			}
			CA2(I,J).real=(float)(IA1(I))+DA1(I);
			CA2(I,J).imag=(float)(0);
			DB2(I,J)=DA2(I,J)*2.0+DA1(I)+(double)(IA1(I));
			LC2(I,J)=DB2(I,J)==DC2(I,J);
LBL_21:
			;
		}
		if (LA1(I)==1)  DA1(I) = DB1(I)*DC1(I);
		IA1(I)=-I;
		DA1(I)=(double)(IA1(I));
LBL_20:
		;
	}
	printf("\n");
	CTR=0;
	printf(" LC2 = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" %lu",LC2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("         ");
			}
		}
	}
LBL_993:
	;
	CTR=0;
	printf("\n");
	printf(" CA2 = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" (%g,%g)",CA2(I,J).real,CA2(I,J).imag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("         ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" DA3 = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=5;J++)
		{
			for(K=1;K<=2;K++)
			{
				printf(" %g",DA3(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
LBL_994:
	;
	CTR=0;
	printf("\n");
	printf(" LB2 = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" %lu",LB2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("         ");
			}
		}
	}
LBL_995:
	;
	CTR=0;
	printf("\n");
	printf(" DB2 = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" %g",DB2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("         ");
			}
		}
	}
	printf("\n");
	printf(" DA1 = ");
	for(I=1;I<=10;I++)
	{
		printf(" %g",DA1(I));
		if (I%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	printf(" IA1 = ");
	for(I=1;I<=10;I++)
	{
		printf(" %ld",IA1(I));
		if (I%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	printf(" ----- TEST NO.3 ----- UPPER/LOWER SAB \n");
	for(I=1;I<=10;I++)
	{
		DA1(I)=(double)(I);
		DS1=DS1+DA1(I);
		RS1=(RS1 > RA1(I))? RS1:RA1(I);
		for(J=1;J<=10;J++)
		{
			DA2(I,J)=RA2(I,J)+(double)(I);
			RB2(I,J)=RC2(I,J)*3.0;
			IB1(I)=IA1(I)+IC1(J);
			IS1=IS1+IB1(I);
			for(K=1;K<=2;K++)
			{
				N=J;
				if (N > 5)  N=N-5;
				if      (DA3(I,N,K)-10.0 <  0) goto LBL_32;
				else if (DA3(I,N,K)-10.0 == 0) goto LBL_33;
				else goto LBL_34;
LBL_32:
				;
				DB3(I,N,K)=DC3(I,N,K)-DA2(I,J);
				goto LBL_31;
LBL_33:
				;
				DC3(I,N,K)=RB2(I,J)+(double)(IB1(I));
				goto LBL_31;
LBL_34:
				;
				RA2(I,J)=sqrt(fabs(RB2(I,J)));
				if (LA2(I,J)==1)  LB2(I,J) = !(LC2(I,J));
LBL_31:
				;
			}
		}
		if (LA1(I)==1)  DA1(I) = DB1(I)*DC1(I);
		IA1(I)=-I;
		DA1(I)=(double)(IA1(I));
LBL_30:
		;
	}
	printf("\n");
	printf(" DA1 = ");
	for(I=1;I<=10;I++)
	{
		printf(" %g",DA1(I));
		if (I%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
LBL_996:
	;
	printf("\n");
	printf(" DS1 =  %g\n",DS1);
	printf(" RS1 =  %g\n",RS1);
	CTR=0;
	printf(" DA2 = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" %g",DA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("         ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf(" RB2 = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" %g",RB2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("         ");
			}
		}
	}
	printf("\n");
	printf(" IB1 = ");
	for(I=1;I<=10;I++)
	{
		printf(" %ld",IB1(I));
		if (I%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	printf(" IS1 =  %ld",IS1);
	printf("\n");
	CTR=0;
	printf(" DB3 = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=5;J++)
		{
			for(K=1;K<=2;K++)
			{
				printf(" %g",DB3(I,J,K));
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
	printf(" DC3 = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=5;J++)
		{
			for(K=1;K<=2;K++)
			{
				printf(" %g",DC3(I,J,K));
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
	printf(" RA2 = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" %g",RA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
LBL_997:
	;
	CTR=0;
	printf("\n");
	printf(" LB2 = ");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			printf(" %lu",LB2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
LBL_998:
	;
	printf("\n");
	printf(" IA1 = ");
	for(I=1;I<=10;I++)
	{
		printf(" %ld",IA1(I));
		if (I%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}

	printf("\n");
	exit (0);
}
