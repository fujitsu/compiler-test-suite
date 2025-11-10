#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int LFAND (unsigned long int *LOP1, unsigned long int *LOP2, unsigned long int *LOP3);
int IFDIV (long int *IOP1, long int *IOP2, long int *IOP3);
int DFDIF (double *DA, double *DB, double *DC);
int FRCOS (float *X, float *Y);
int DRSIN (double *X, double *Y);
int FRSIN (float *X, float *Y);
#define L1 10
#define L2 10
#define L3 10
#define IA1(i) ia1[i-1]
#define IB1(i) ib1[i-1]
#define IC1(i) ic1[i-1]
#define IA2(i,j) ia2[i-1][j-1]
#define IB2(i,j) ib2[i-1][j-1]
#define IC2(i,j) ic2[i-1][j-1]
#define RA1(i) ra1[i-1]
#define RB1(i) rb1[i-1]
#define RC1(i) rc1[i-1]
#define RA2(i,j) ra2[i-1][j-1]
#define RB2(i,j) rb2[i-1][j-1]
#define RC2(i,j) rc2[i-1][j-1]
#define RA3(i,j,k) ra3[i-1][j-1][k-1]
#define RB3(i,j,k) rb3[i-1][j-1][k-1]
#define RC3(i,j,k) rc3[i-1][j-1][k-1]
#define DA1(i) da1[i-1]
#define DB1(i) db1[i-1]
#define DC1(i) dc1[i-1]
#define DP1(i) dp1[i-1]
#define DM1(i) dm1[i-1]
#define DA2(i,j) da2[i-1][j-1]
#define DB2(i,j) db2[i-1][j-1]
#define DC2(i,j) dc2[i-1][j-1]
#define DA3(i,j,k) da3[i-1][j-1][k-1]
#define DB3(i,j,k) db3[i-1][j-1][k-1]
#define DC3(i,j,k) dc3[i-1][j-1][k-1]
#define QA2(i,j) qa2[i-1][j-1]
#define QB2(i,j) qb2[i-1][j-1]
#define QC2(i,j) qc2[i-1][j-1]
#define CA1(i) ca1[i-1]
#define CB1(i) cb1[i-1]
#define CC1(i) cc1[i-1]
#define CA2(i,j) ca2[i-1][j-1]
#define CB2(i,j) cb2[i-1][j-1]
#define CC2(i,j) cc2[i-1][j-1]
#define CA3(i,j,k) ca3[i-1][j-1][k-1]
#define CB3(i,j,k) cb3[i-1][j-1][k-1]
#define CC3(i,j,k) cc3[i-1][j-1][k-1]
#define LA3(i,j,k) la3[i-1][j-1][k-1]
#define LB3(i,j,k) lb3[i-1][j-1][k-1]
#define LC3(i,j,k) lc3[i-1][j-1][k-1]
long int ia1[L1],ib1[L1],ic1[L1];
long int ia2[L1][L2],ib2[L1][L2],ic2[L1][L2];
float ra1[L1],rb1[L1],rc1[L1];
float ra2[L1][L2],rb2[L1][L2],rc2[L1][L2];
float ra3[L1][L2][L3],rb3[L1][L2][L3],rc3[L1][L2][L3];
double da1[L1],db1[L1],dc1[L1],dp1[L1],dm1[L1];
double da2[L1][L2],db2[L1][L2],dc2[L1][L2];
double da3[L1][L2][L3],db3[L1][L2][L3],dc3[L1][L2][L3];
long double qa2[L1][L2],qb2[L1][L2],qc2[L1][L2];
COMPLEX ca1[L1],cb1[L1],cc1[L1];
COMPLEX ca2[L1][L2],cb2[L1][L2],cc2[L1][L2];
COMPLEX ca3[L1][L2][L3],cb3[L1][L2][L3],cc3[L1][L2][L3];
unsigned long int la3[L1][L2][L3],lb3[L1][L2][L3],lc3[L1][L2][L3];
int main (void)
{
	long int IDX1=L1;
	long int IDX2=L2;
	long int IDX3=L3;
	long int NCWNR=8;
	long int CWNR=8;
	double DIF,DTEMP;
	long int I,J,K,ITEMP,CTR;
	float BSY,BSY2;
	for(I=1;I<=L1;I++)
	{
		IA1(I)=I;
		IB1(I)=I+2;
		IC1(I)=I+3;
		RA1(I)=(float)(I+2);
		RB1(I)=(float)(I+3);
		RC1(I)=(float)(I+4);
		DA1(I)=(double)(2*I);
		DB1(I)=(double)(3*I-2);
		DC1(I)=(double)(2*I+3);
		DP1(I)=(double)(3*I);
		DM1(I)=(double)(2*I);
		CA1(I).real=(float)(I);
		CA1(I).imag=(float)(I);
		CB1(I).real=(float)(I+5);
		CB1(I).imag=(float)(I);
		CC1(I).real=(float)(2*I);
		CC1(I).imag=(float)(3*I);
		for(J=1;J<=L2;J++)
		{
			IA2(I,J)=I*J;
			IB2(I,J)=I-J;
			IC2(I,J)=I+J;
			RA2(I,J)=(float)(I*J+5);
			RB2(I,J)=(float)(I-J-5);
			RC2(I,J)=(float)(I+J*3);
			DA2(I,J)=(double)(I*J-2);
			DB2(I,J)=(double)(I-J-3);
			DC2(I,J)=(double)(I+J-4);
			QA2(I,J)=(long double)(I*J-5);
			QB2(I,J)=(long double)(I-J-6);
			QC2(I,J)=(long double)(I+J-7);
			CA2(I,J).real=(float)(I+2);
			CA2(I,J).imag=(float)(J*3);
			CB2(I,J).real=(float)(I-2);
			CB2(I,J).imag=(float)(J+3);
			CC2(I,J).real=(float)(I*2);
			CC2(I,J).imag=(float)(J-3);
			for(K=1;K<=L3;K++)
			{
				RA3(I,J,K)=(float)(I+J+K);
				RB3(I,J,K)=(float)(I-J+K);
				RC3(I,J,K)=(float)(I+J-K);
				DA3(I,J,K)=(double)(I+J-K);
				DB3(I,J,K)=(double)(I*J+K);
				DC3(I,J,K)=(double)(I+J*K);
				CA3(I,J,K).real=(float)(I+J+K);
				CA3(I,J,K).imag=(float)(I+J*K);
				CB3(I,J,K).real=(float)(I-J+K);
				CB3(I,J,K).imag=(float)(I+J+K);
				CC3(I,J,K).real=(float)(I+J+K);
				CC3(I,J,K).imag=(float)(I-J+K);
				LA3(I,J,K)=(I+J)>(I+K);
				LB3(I,J,K)=(I-J)>(I+K);
				LC3(I,J,K)=(I*J)>(I+K);
LBL_10:
				;
			}
		}
	}
	printf(" #####  #####\n");
	printf(" ----- TEST NO.1 ----- SIMPLEST POSSIBLE        \n");
	printf("                       PI OPTION                \n");
	for(I=1;I<=L1;I++)
	{
		FRSIN(&RC1(I),&RA1(I));
		for(J=1;J<=L2;J++)
		{
			FRSIN(&RC2(I,J),&RA2(I,J));
LBL_100:
			;
		}
LBL_110:
		;
	}
	CTR=0;
	printf(" ### RA1 =");
	for(I=1;I<=L1;I++){
		printf(" %g",RA1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("          ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" ### RA2 =");
	for(I=1;I<=L1;I++){
		for(J=1;J<=L2;J++){
			printf(" %g",RA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("          ");
			}
		}
	}
	printf("\n");
	printf(" ----- TEST NO.2 ----- 2ND SIMPLEST POSSIBLE  \n");
	printf("                       PI OPTION              \n");
	for(I=1;I<=L1;I++)
	{
		FRSIN(&RB1(I),&RB1(I));
		RA1(I)=RB1(I)+RC1(I);
		for(J=1;J<=L2;J++)
		{
			FRSIN(&RB2(I,J),&RC2(I,J));
			RA2(I,J)=RB2(I,J)+RC2(I,J);
			DRSIN(&DA2(I,J),&DA2(I,J));
LBL_200:
			;
		}
		IA1(I)=(long int)(RA1(I));
LBL_210:
		;
	}
	CTR=0;
	printf(" ### IA1 =");
	for(I=1;I<=L1;I++){
		printf(" %ld",IA1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("          ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" ### RA2 =");
	for(I=1;I<=L1;I++){
		for(J=1;J<=L2;J++){
			printf(" %g",RA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("          ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" ### DA2 =");
	for(I=1;I<=L1;I++){
		for(J=1;J<=L2;J++){
			printf(" %g",DA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("          ");
			}
		}
	}
	printf("\n");
	printf(" ----- TEST NO.3 ----- PI OPTION              \n");
	printf("                       A LITTLE COMPLICATED   \n");
	for(I=1;I<=L1;I++)
	{
		RA1(I)=RB1(I)+RC1(I);
		for(J=1;J<=L2;J++)
		{
			RA2(I,J)=RB2(I,J)+RC2(I,J);
LBL_300:
			;
		}
		if (RA1(I) > 2.0*RB1(I))
		{
			FRCOS(&RA1(I),&RA1(I));
		}
LBL_310:
		;
	}
	CTR=0;
	printf(" ### RA1 =");
	for(I=1;I<=L1;I++){
		printf(" %g",RA1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("          ");
		}
	}
	printf("\n");
	printf(" ----- TEST NO.4 ----- PI OPTION              \n");
	printf("                  MORE GENERAL CASE           \n");
	BSY=-10.0;
	BSY2=-10.0;
	for(I=1;I<=L1;I++)
	{
		if (DC1(I) > (float)(0))
		{
			DTEMP=sqrt(DC1(I));
			DFDIF(&DIF,&DB1(I),&DTEMP);
		}
		for(J=1;J<=L1;J++)
		{
			for(K=1;K<=L2;K++)
			{
				RA3(J,K,3)=RB3(J,K,3)+RC3(J,K,3);
LBL_500:
				;
			}
			if (RC1(J) != 0)
			{
				ITEMP=(int)(RC1(J));
				IFDIV(&IA1(J),&IB1(J),&ITEMP);
			}
			else
			{
				IA1(J)=IB1(J);
			}
LBL_550:
			;
		}
		if (((int)(RA3(I,3,3))%I) != 0 )
		{
			BSY=RA3(I,3,3);
		}
		for(J=2;J<=L2-1;J++)
		{
			for(K=2;K<=L3-1;K++)
			{
				DA3(J,I,K+1)=DA3(J,I,K)+DA3(J,I,K-1);
				CA3(J,I,K+1).real=CA3(J,I,K).real*RA3(J,I,3);
				CA3(J,I,K+1).imag=CA3(J,I,K).imag*RA3(J,I,3);
LBL_600:
				;
			}
			if (DC2(I,J) > 0.0)
			{
				DA2(I,J)=sin(DB2(I,J))*sqrt(DC2(I,J));
				BSY2=DA2(I,J);
			}
LBL_660:
			;
		}
		for(J=1;J<=IDX1;J++)
		{
			CA1(J).real=  CB1(J).real*CA3(I,J,5).real
			    - CB1(J).imag*CA3(I,J,5).imag;
			CA1(J).imag=  CB1(J).real*CA3(I,J,5).imag
			    + CB1(J).imag*CA3(I,J,5).real;
			for(K=1;K<=IDX2;K++)
			{
				if (LA3(J,K,I)==1)
				{
					if (IC2(J,K) != 0)
					{
						IA2(J,K)=(IB2(J,K)%IC2(J,K));
					}
					else
					{
						IA2(J,K)=IB2(J,K)/5;
					}
				}
			}
LBL_770:
			;
		}
		LFAND(&LB3(I,2,2),&LB3(I,2,2),&LC3(I,2,2));
LBL_1000:
		;
	}
	printf(" ### DIF = %g\n",DIF);
	printf(" ### BSY = %g\n",BSY);
	printf(" ### BSY2= %g\n",BSY2);
	printf(" ### DB1 = %g\n",DB1(1));
	CTR=0;
	printf(" ### DB1 =");
	for(I=1;I<=L1;I++){
		printf(" %g",DB1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("          ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" ### RA3 =");
	for(I=1;I<=L1;I++){
		for(J=1;J<=L2;J++){
			for(K=1;K<=L3;K++){
				printf(" %g",RA3(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("          ");
				}
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" ### IA1 =");
	for(I=1;I<=L1;I++){
		printf(" %ld",IA1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("          ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" ### DA3 =");
	for(I=1;I<=L1;I++){
		for(J=1;J<=L2;J++){
			for(K=1;K<=L3;K++){
				printf(" %g",DA3(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("          ");
				}
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" ### CA3 =");
	for(I=1;I<=L1;I++){
		for(J=1;J<=L2;J++){
			for(K=1;K<=L3;K++){
				printf(" (%g,%g)",CA3(I,J,K).real,CA3(I,J,K).imag);
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("          ");
				}
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" ### DA2 =");
	for(I=1;I<=L1;I++){
		for(J=1;J<=L2;J++){
			printf(" %g",DA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("          ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" ### CA1 =");
	for(I=1;I<=L1;I++){
		printf(" (%g,%g)",CA1(I).real,CA1(I).imag);
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("          ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" ### IA2 =");
	for(I=1;I<=L1;I++){
		for(J=1;J<=L2;J++){
			printf(" %ld",IA2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("          ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" ### DA3 =");
	for(I=1;I<=L1;I++){
		for(J=1;J<=L2;J++){
			for(K=1;K<=L3;K++){
				printf(" %g",DA3(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("          ");
				}
			}
		}
	}
	printf("\n");

	exit(0);
}
int FRSIN (float *X, float *Y)
{
	*Y=sin(*X)*(*X)+2.5;
	return 0;
}
int DRSIN (double *X, double *Y)
{
	*Y=sin(*X)*(*X)+2.5;
	return 0;
}
int FRCOS (float *X, float *Y)
{
	*Y=cos(*X)*(*X)+2.5;
	return 0;
}
int DFDIF (double *DA, double *DB, double *DC)
{
	if (*DB > *DC)
	{
		*DA=(*DB)-(*DC);
	}
	else
	{
		*DA=-(*DB)+(*DC);
	}
	return 0;
}
int IFDIV (long int *IOP1, long int *IOP2, long int *IOP3)
{
	*IOP1=(*IOP2)/(*IOP3);
	return 0;
}
int LFAND (unsigned long int *LOP1, unsigned long int *LOP2, unsigned long int *LOP3)
{
	*LOP1 = (*LOP2) && (*LOP3);
	return 0;
}
