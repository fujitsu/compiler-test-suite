#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int EQUMCR();
int main()
{
	EQUMCR();
	exit (0);
}
#define RA(i) r.ra[i-1]
#define RB(i) r.rb[i-1]
#define RC(i) rc[i-1]
#define RD(i) rd[i-1]
#define RE(i) re[i-1]
#define S1 s.s1
#define S2 s.s2
#define DA(i) da[i-1]
#define DB(i) db[i-1]
#define DC(i,j) dc[i-1][j-1]
#define IA(i) ia[i-1]
#define IB(i) ib[i-1]
#define LA(i) la[i-1]
#define LB(i) lb[i-1]
#define CEA(i,j) cea[i-1][j-1]
#define CEB(i,j) ceb[i-1][j-1]
#define CDA(i) cda[i-1]
#define CDB(i) cdb[i-1]
#define CDC(i,j) cdc[i-1][j-1]
#define RF(i) rf[i-1]
#define RG(i) rg[i-1]
#define RH(i) rh[i-1]
union{
	float ra[10];
	float rb[10];
} r;
union{
	float s1;
	float s2;
} s;
unsigned long int la[10],lb[10];
float     rc[10],rd[10],re[10],rf[10],rg[10],rh[20];
double    da[10],db[10],dc[10][10];
long int  ia[10],ib[10];
COMPLEX8  cea[10][10],ceb[10][10];
COMPLEX16 cda[10],cdb[10],cdc[10][10];
int EQUMCR()
{
	long int i,j,JMX,I;
	float RMX,S4,S3,DIF;

	for(i=0 ; i<10 ; i++)
	{
		r.ra[i]=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		rc[i]=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		rd[i]=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		re[i]=1.;
	}
	for(i=0 ; i<10 ; i++)
	{
		da[i]=1.;
	}
	for(i=0 ; i<10 ; i++)
	{
		db[i]=1.;
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			dc[i][j]=1.0;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		ia[i]=1;
	}
	for(i=0 ; i<10 ; i++)
	{
		ib[i]=1;
	}
	for(i=0 ; i<10 ; i++)
	{
		la[i]=1;
	}
	for(i=0 ; i<10 ; i++)
	{
		lb[i]=0;
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			cea[i][j].real=1.0;
			cea[i][j].imag=1.0;
		}
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			ceb[i][j].real=1.0;
			ceb[i][j].imag=1.0;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		cda[i].dreal=1.0;
		cda[i].dimag=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		cdb[i].dreal=1.0;
		cdb[i].dimag=1.0;
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			cdc[i][j].dreal=1.0;
			cdc[i][j].dimag=1.0;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		rf[i]=1;
	}
	for(i=0 ; i<10 ; i++)
	{
		rg[i]=1;
	}
	for(i=0 ; i<20 ; i++)
	{
		rh[i]=1;
	}

	RMX=0.0;
	S4 =0.0;
	for(I=2 ; I<=10 ; I++)
	{
		S3 = RA(I)-RMX;
		if (S3 >  0)
		{
			RMX=RA(I);
			JMX=I;
			S4=S4+1.0;
		}
LBL_10:
		;
	}

	printf(" ****EQUMCR**LOOP1**\n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" RC= %g ",RC(i));
	}
	printf("\n");

	for(i=1 ; i<=10 ; i++)
	{
		printf(" RD= %g ",RD(i));
	}
	printf("\n");

	printf(" RMX= %g \n",RMX);
	printf(" JMX= %ld \n",JMX);

	RE(1)=0.0;
	RMX=0;
	for(I=1 ; I<=10 ; I++)
	{
		RF(I)=DA(I)+RF(I);
		DIF=RH(I+10)-RMX;
		if (DIF >  0)
		{
			RMX=RH(I+10);
		}
		RE(1)=RE(1)+1.0;
		if (RF(I) >= 0.0)
		{
			DA(I)=RF(I)+DA(I);
			IA(I)=I;
		}
LBL_20:
		;
	}

	printf("****EQUMCR**LOOP2**\n");
	for(i=1 ; i<=20 ; i++)
	{
		printf("RH= %g ",RH(i));
	}
	printf("\n");

	for(i=1 ; i<=10 ; i++)
	{
		printf("DA= %g ",DA(i));
	}
	printf("\n");

	for(i=1 ; i<=10 ; i++)
	{
		printf("IA= %ld ",IA(i));
	}
	printf("\n");

	printf("RMX= %g \n",RMX);

	RMX=0.0;
	S1=0.0;
	for(I=1 ; I<=10 ; I++)
	{
		if (S1 <  RA(I))
		{
			S1=RA(I);
			S2=RB(I);
		}
		RE(I)=DA(I)+DB(I);
		DIF=RF(I)-RMX;
		if (DIF >  0.0)
		{
			RMX=RF(I);
		}
LBL_30:
		;
	}

	printf(" ****EQUMCR**LOOP3**\n");
	for(i=1 ; i<=20 ; i++)
	{
		printf(" RH= %g ",RH(i));
	}
	printf("\n");

	printf(" RMX= %g \n",RMX);
	for(i=1 ; i<=10 ; i++)
	{
		printf(" RA= %g ",RA(i));
	}
	printf("\n");

	return 0;
}
