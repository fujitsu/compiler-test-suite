#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int ALS(COMPLEX8 cc[30], COMPLEX16 cda[30][30], COMPLEX16 cdc[30], COMPLEX16 cdd[30], COMPLEX16 cde[30][30], COMPLEX16 cdf[30], COMPLEX16 cdg[30], COMPLEX16 cdh[30], COMPLEX16 cdi[30], COMPLEX16 *CDS1, long int *N);
int VANDS(COMPLEX8 cc[30], COMPLEX16 cda[30][30], COMPLEX16 cdc[30], COMPLEX16 cdd[30], COMPLEX16 cde[30][30], COMPLEX16 cdf[30], COMPLEX16 cdg[30], COMPLEX16 cdh[30], COMPLEX16 cdi[30], COMPLEX16 *CDS1, long int *N);
int ALV(COMPLEX8 cc[30], COMPLEX16 cda[30][30], COMPLEX16 cdb[30][30], COMPLEX16 cdc[30], COMPLEX16 cdd[30], COMPLEX16 cde[30][30], COMPLEX16 cdf[30], COMPLEX16 cdg[30], COMPLEX16 cdh[30], COMPLEX16 cdi[30], COMPLEX16 *CDS1, long int *N);
int INDT(COMPLEX16 cda[30][30], COMPLEX16 cdb[30][30], COMPLEX16 cdc[30], COMPLEX16 cdd[30], COMPLEX16 cde[30][30], COMPLEX16 cdf[30], COMPLEX16 cdg[30], COMPLEX16 cdh[30], COMPLEX16 cdi[30], COMPLEX16 *CDS1);
#define CC(i) cc[i-1]
#define CDA(i,j) cda[i-1][j-1]
#define CDB(i,j) cdb[i-1][j-1]
#define CDC(i) cdc[i-1]
#define CDD(i) cdd[i-1]
#define CDE(i,j) cde[i-1][j-1]
#define CDF(i) cdf[i-1]
#define CDG(i) cdg[i-1]
#define CDH(i) cdh[i-1]
#define CDI(i) cdi[i-1]
COMPLEX8  ca[30],cb[30],cc[30];
COMPLEX16 cdg[30],cdh[30],cdi[30];
COMPLEX16 cda[30][30],cdb[30][30],cdc[30],
cdd[30],cde[30][30],cdf[30],CDS1;
int main (void)
{
	long int N=20,CWNR=8,CTR,I,J,K;
	for(I=0;I<30;I++){
		ca[I].real=1.00;
		ca[I].imag=1.00;
		cb[I].real=0.33;
		cb[I].imag=0.99;
		cc[I].real=0.;
		cc[I].imag=0.;
	}
	INDT(cda,cdb,cdc,cdd,cde,cdf,cdg,cdh,cdi,&CDS1);
	ALV(cc,cda,cdb,cdc,cdd,cde,cdf,cdg,cdh,cdi,&CDS1,&N);
	CTR=0;
	printf(" CC =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CC(I).real,CC(I).imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDA =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" (%g,%g)",CDA(I,J).dreal,CDA(I,J).dimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDC =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDC(I).dreal,CDC(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDD =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDD(I).dreal,CDD(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDE =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" (%g,%g)",CDE(I,J).dreal,CDE(I,J).dimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDF =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDF(I).dreal,CDF(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDG =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDG(I).dreal,CDG(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDH =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDH(I).dreal,CDH(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDI =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDI(I).dreal,CDI(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	INDT(cda,cdb,cdc,cdd,cde,cdf,cdg,cdh,cdi,&CDS1);
	VANDS(cc,cda,cdc,cdd,cde,cdf,cdg,cdh,cdi,&CDS1,&N);
	CTR=0;
	printf(" CC =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CC(I).real,CC(I).imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDA =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" (%g,%g)",CDA(I,J).dreal,CDA(I,J).dimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDC =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDC(I).dreal,CDC(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDD =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDD(I).dreal,CDD(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDE =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" (%g,%g)",CDE(I,J).dreal,CDE(I,J).dimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDF =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDF(I).dreal,CDF(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDG =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDG(I).dreal,CDG(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDH =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDH(I).dreal,CDH(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDI =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDI(I).dreal,CDI(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	INDT(cda,cdb,cdc,cdd,cde,cdf,cdg,cdh,cdi,&CDS1);
	ALS(cc,cda,cdc,cdd,cde,cdf,cdg,cdh,cdi,&CDS1,&N);
	CTR=0;
	printf(" CC =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CC(I).real,CC(I).imag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("     ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDA =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" (%g,%g)",CDA(I,J).dreal,CDA(I,J).dimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDC =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDC(I).dreal,CDC(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDD =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDD(I).dreal,CDD(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDE =");
	for(J=1;J<=30;J++){
		for(I=1;I<=30;I++){
			printf(" (%g,%g)",CDE(I,J).dreal,CDE(I,J).dimag);
			CTR++;
			if (CTR%CWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDF =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDF(I).dreal,CDF(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDG =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDG(I).dreal,CDG(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDH =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDH(I).dreal,CDH(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" CDI =");
	for(I=1;I<=30;I++){
		printf(" (%g,%g)",CDI(I).dreal,CDI(I).dimag);
		CTR++;
		if (CTR%CWNR==0)
		{
			printf("\n");
			printf("      ");
		}
	}
	printf("\n");
LBL_199:
	;
	exit (0) ;
}
#define CA(i) ca[i-1]
#define CB(i) cb[i-1]
#define CC(i) cc[i-1]
#define CDA(i,j) cda[i-1][j-1]
#define CDB(i,j) cdb[i-1][j-1]
#define CDC(i) cdc[i-1]
#define CDD(i) cdd[i-1]
#define CDE(i,j) cde[i-1][j-1]
#define CDF(i) cdf[i-1]
#define CDG(i) cdg[i-1]
#define CDH(i) cdh[i-1]
#define CDI(i) cdi[i-1]
int INDT(cda,cdb,cdc,cdd,cde,cdf,cdg,cdh,cdi,CDS1)
COMPLEX16 cda[30][30],cdb[30][30],cdc[30],
cdd[30],cde[30][30],cdf[30],
cdg[30],cdh[30],cdi[30],
*CDS1;
{
	long int I,J;
	for(I=1;I<=30;I++)
	{
		CDC(I).dreal=1.25+(double)(I);
		CDC(I).dimag=6.5;
		CDD(I).dreal=3.+(double)(I-3);
		CDD(I).dimag=2.;
		CDF(I).dreal=1.00*(double)(I);
		CDF(I).dimag=1.00*(double)(I);
		CDG(I).dreal=0.0625*(double)(I);
		CDG(I).dimag=0.25*(double)(I);
		CDH(I).dreal=8.*(double)(I);
		CDH(I).dimag=0.5*(double)(I);
		CDI(I).dreal=CDC(I).dreal*(double)(1/16);
		CDI(I).dimag=CDC(I).dimag*(double)(1/16);
		for(J=1;J<=30;J++)
		{
			CDA(I,J).dreal=1.00;
			CDA(I,J).dimag=1.00;
			CDB(I,J).dreal=8.00;
			CDB(I,J).dimag=8.00;
LBL_10:
			;
			CDE(I,J).dreal=4.25;
			CDE(I,J).dimag=4.25;
		}
	}
	(*CDS1).dreal=1.;
	(*CDS1).dimag=0.;
}
#define CA(i) ca[i-1]
#define CB(i) cb[i-1]
#define CC(i) cc[i-1]
#define CDA(i,j) cda[i-1][j-1]
#define CDB(i,j) cdb[i-1][j-1]
#define CDC(i) cdc[i-1]
#define CDD(i) cdd[i-1]
#define CDE(i,j) cde[i-1][j-1]
#define CDF(i) cdf[i-1]
#define CDG(i) cdg[i-1]
#define CDH(i) cdh[i-1]
#define CDI(i) cdi[i-1]
int ALV(cc,cda,cdb,cdc,cdd,cde,cdf,cdg,cdh,cdi,CDS1,N)
COMPLEX8  cc[30];
COMPLEX16 cda[30][30],cdb[30][30],
cdc[30],cdd[30],cde[30][30],cdf[30],
cdg[30],cdh[30],cdi[30],
*CDS1;
long int  *N;
{
	long int J,I;
	J=1;
	for(I=2;I<=*N;I++)
	{
		CDA(J,I).dreal=  pow(CDA(J,I).dreal,CDA(J,I+1).dreal)
		    + CDB(I,I).dreal;
		CDA(J,I).dimag=  pow(CDA(J,I).dimag,CDA(J,I+1).dimag)
		    + CDB(I,I).dimag;
		CDC(I).dreal=sin(CDA(J,I).dreal);
		CDC(I).dimag=sin(CDA(J,I).dimag);
		CDI(J).dreal=pow(CDA(J,J).dreal,(*CDS1).dreal);
		CDI(J).dimag=pow(CDA(J,J).dimag,(*CDS1).dimag);
		CDD(I).dreal=cos(CDA(J,I).dreal);
		CDD(I).dimag=cos(CDA(J,I).dimag);
		CDE(J,J).dreal=CDC(I).dreal;
		CDE(J,J).dimag=CDC(I).dimag;
		CC(I).real=pow(CA(I-1).real,CA(I+1).real)+CB(I).real;
		CC(I).imag=pow(CA(I-1).imag,CA(I+1).imag)+CB(I).imag;
		CDF(J).dreal=CDD(I).dreal;
		CDF(J).dimag=CDD(I).dimag;
		J++;
		CDG(J).dreal=  CDE(J,J-1).dreal*CDF(J-1).dreal
		    - CDE(J,J-1).dimag*CDF(J-1).dimag;
		CDG(J).dimag=  CDE(J,J-1).dreal*CDF(J-1).dimag
		    + CDE(J,J-1).dimag*CDF(J-1).dreal;
		CDH(I).dreal=pow(CDA(J,I).dreal,J);
		CDH(I).dimag=pow(CDA(J,I).dimag,J);
LBL_100:
		;
	}
}
#define CA(i) ca[i-1]
#define CB(i) cb[i-1]
#define CC(i) cc[i-1]
#define CDA(i,j) cda[i-1][j-1]
#define CDB(i,j) cdb[i-1][j-1]
#define CDC(i) cdc[i-1]
#define CDD(i) cdd[i-1]
#define CDE(i,j) cde[i-1][j-1]
#define CDF(i) cdf[i-1]
#define CDG(i) cdg[i-1]
#define CDH(i) cdh[i-1]
#define CDI(i) cdi[i-1]
int VANDS(cc,cda,cdc,cdd,cde,cdf,cdg,cdh,cdi,CDS1,N)
COMPLEX8  cc[30];
COMPLEX16 cda[30][30],cdc[30],
cdd[30],cde[30][30],cdf[30],
cdg[30],cdh[30],cdi[30],
*CDS1;
long int  *N;
{
	long int S=-1;
	long int J,JJ,K,I;
	J=2;
	JJ=1;
	K=2;
	for(I=2;I<=*N;I++)
	{
		CDA(J,I).dreal=pow(CDA(J,I+S).dreal,CDA(J,I+1).dreal);
		CDA(J,I).dimag=pow(CDA(J,I+S).dimag,CDA(J,I+1).dimag);
		CDC(I).dreal=sin(CDA(K,K).dreal);
		CDC(I).dimag=sin(CDA(K,K).dimag);
		CDI(J).dreal=pow(CDA(J,J).dreal,(*CDS1).dreal);
		CDI(J).dimag=pow(CDA(J,J).dimag,(*CDS1).dreal);
		CDD(I).dreal=cos(CDA(K,K).dreal);
		CDD(I).dimag=cos(CDA(K,K).dimag);
		if (   CDE(J,J).dreal == CDA(J,I).dreal
		    && CDE(J,J).dimag == CDA(J,I).dimag)
		{
			CDE(JJ,JJ).dreal=CDE(I,I).dreal;
			CDE(JJ,JJ).dimag=CDE(I,I).dimag;
			JJ++;
			CDH(I).dreal=pow(CDH(I+K).dreal,JJ);
			CDH(I).dimag=pow(CDH(I+K).dimag,JJ);
		}
		CC(I).real=pow(CA(I-1).real,CA(I+1).real)+CB(I).real;
		CC(I).imag=pow(CA(I-1).imag,CA(I+1).imag)+CB(I).real;
		CDF(J).dreal=CDD(I).dreal;
		CDF(J).dimag=CDD(I).dimag;
		J++;
		CDG(J).dreal=  CDE(J,J-K).dreal*CDF(J-1).dreal
		    - CDE(J,J-K).dimag*CDF(J-1).dimag;
		CDG(J).dimag=  CDE(J,J-K).dreal*CDF(J-1).dimag
		    + CDE(J,J-K).dimag*CDF(J-1).dreal;
LBL_100:
		;
	}
}
#define CA(i) ca[i-1]
#define CB(i) cb[i-1]
#define CC(i) cc[i-1]
#define CDA(i,j) cda[i-1][j-1]
#define CDB(i,j) cdb[i-1][j-1]
#define CDC(i) cdc[i-1]
#define CDD(i) cdd[i-1]
#define CDE(i,j) cde[i-1][j-1]
#define CDF(i) cdf[i-1]
#define CDG(i) cdg[i-1]
#define CDH(i) cdh[i-1]
#define CDI(i) cdi[i-1]
int ALS(cc,cda,cdc,cdd,cde,cdf,cdg,cdh,cdi,CDS1,N)
COMPLEX8  cc[30];
COMPLEX16 cda[30][30],cdc[30],
cdd[30],cde[30][30],cdf[30],
cdg[30],cdh[30],cdi[30],
*CDS1;
long int  *N;
{
	long int J,K,I;
	J=1;
	K=1;
	for(I=3;I<=*N-1;I++)
	{
		CDC(I).dreal=pow(CDA(J,I).dreal,CDA(J,I).dreal);
		if (J > K)
		{
			if (K < *N-3)
			{
				CA(I).real=CC(I).real+CA(I-1).real;
				CA(I).imag=CC(I).imag+CA(I-1).imag;
			}
			CDC(J).dreal=sin(CDA(I,J).dreal)+CDH(I+1).dreal;
			CDC(J).dimag=sin(CDA(I,J).dimag)+CDH(I+1).dimag;
			K++;
			if (K < *N-3)
			{
				CDI(J).dreal=pow(CDA(J,I).dreal,(*CDS1).dreal);
				CDI(J).dimag=pow(CDA(J,I).dimag,(*CDS1).dimag);
			}
			CDD(K).dreal=cos(CDA(I,J).dreal)+CDH(I+1).dreal;
			CDD(K).dimag=cos(CDA(I,J).dimag)+CDH(I+1).dimag;
			CDE(I,I).dreal=CDD(K).dreal+CDH(I-1).dreal;
			CDE(I,I).dimag=CDD(K).dimag+CDH(I-1).dimag;
			CDF(I).dreal=CDD(K).dreal;
			CDF(I).dimag=CDD(K).dimag;
		}
		J++;
		CDG(J).dreal=  CDE(I-1,I-1).dreal*CDF(I-1).dreal
		    - CDE(I-1,I-1).dimag*CDF(I-1).dimag;
		CDG(J).dimag=  CDE(I-1,I-1).dreal*CDF(I-1).dimag
		    + CDE(I-1,I-1).dimag*CDF(I-1).dreal;
		CDH(I).dreal=pow(CDI(J).dreal,K)+CDG(J).dreal;
		CDH(I).dimag=pow(CDI(J).dimag,K)+CDG(J).dimag;
LBL_100:
		;
	}
}
