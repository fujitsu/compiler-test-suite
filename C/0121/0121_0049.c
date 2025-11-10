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
float rc[10],rd[10],re[10],rf[10],rg[10],rh[20];
double da[10],db[10],dc[10][10];
long int ia[10],ib[10];
unsigned long int la[10],lb[10];
COMPLEX8 cea[10][10],ceb[10][10];
COMPLEX16 cda[10],cdb[10],cdc[10][10];
int EQUMCR()
{
	long int i,j,I,JMX;
	float    RMX,S,DIF,S3,Y,Y1,RS;

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
		for(i=0 ; i< 10 ; i++)
		{
			cdc[i][j].dreal=1.0;
			cdc[i][j].dimag=1.0;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		rf[i]=1.;
	}
	for(i=0 ; i<10 ; i++)
	{
		rg[i]=1.;
	}
	for(i=0 ; i<20 ; i++)
	{
		rh[i]=1.;
	}

	RMX=0.0;
	S=S1-1.;
	Y=S;
	RS=0.0;
	for(I=1 ; I<=10 ; I++)
	{
		RE(I) = DA(I)*(1.0)+DB(I);
		S = S+RE(I);
		if (Y-5.0<0) goto LBL_11;
		if (Y-5.0==0) goto LBL_12;
		goto LBL_13;
LBL_11:
		;
		IA(I) = -1;
		goto LBL_14;
LBL_12:
		;
		IA(I) = 0;
		goto LBL_14;
LBL_13:
		;
		IA(I) = 1;
LBL_14:
		;
		DIF = RE(I)-RMX;
		if (DIF >  0)
		{
			RMX = RE(I);
		}
		if (RS == 2)
		{
			RE(I) = 0.0+DA(I);
		}
LBL_10:
		;
	}

	printf(" ****EQUMCR**LOOP1**\n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" RE= %g ",RE(i));
	}
	printf("\n");

	for(i=1 ; i<=10 ; i++)
	{
		printf(" IA= %ld ",IA(i));
	}
	printf("\n");

	printf(" S= %g \n",S);
	printf(" RMX= %g \n",RMX);

	RMX=0.0;
	Y1=RC(3);
	for(I=1 ; I<=10 ; I++)
	{
		S3=DA(I)-RMX;
		if (S3 >  0)
		{
			RMX=DA(I);
			JMX=I;
		}
		if (Y1 == 1.)
		{
			Y1=DA(I)*DB(I);
		}
LBL_20:
		;
	}

	printf(" ****EQUMCR**LOOP2**\n");
	printf(" RMX= %g \n",RMX);
	printf(" JMX= %ld \n",JMX);
	for(i=1 ; i<=10 ; i++)
	{
		printf(" RC= %g ",RC(i));
	}
	printf("\n");

	Y1=0.0;
	for(I=1 ; I<=10 ; I++)
	{
		Y1=Y1+DA(I);
		if (S3 >  1.)
		{
			DA(I)=RE(I)+RF(I);
			DB(I)=RA(I)-RD(I);
		}
LBL_30:
		;
	}

	printf(" ****EQUMCR**LOOP3**\n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" RC= %g ",RC(i));
	}
	printf("\n");

	for(i=1 ; i<=10 ; i++)
	{
		printf(" DA= %g ",DA(i));
	}
	printf("\n");

	for(i=1 ; i<=10 ; i++)
	{
		printf(" DB= %g ",DB(i));
	}
	printf("\n");

	Y1=0.0;
	for(I=1 ; I<=10 ; I++)
	{
		Y1=Y1+DA(I);
		if (S3 >  1)
		{
			DA(I)=RE(I)+RC(I);
			DB(I)=RA(I)+RD(I);
		}
LBL_40:
		;
	}

	printf("****EQUMCR**LOOP4**\n");
	for(i=1 ; i<=10 ; i++)
	{
		printf("RC= %g ",RC(i));
	}
	printf("\n");

	for(i=1 ; i<=10 ; i++)
	{
		printf("DA= %g ",DA(i));
	}
	printf("\n");

	for(i=1 ; i<=10 ; i++)
	{
		printf("DB= %g ",DB(i));
	}
	printf("\n");

	return 0;
}
