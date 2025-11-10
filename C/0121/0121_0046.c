#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i) r.ra[i-1]
#define RB(i) r.rb[i-1]
#define RC(i) r1.rc[i-1]
#define RD(i) r1.rd[i-1]
union{
	float ra[10];
	float rb[20]; 
} r;
union{
	float rc[10];
	float rd[20]; 
} r1;
int EQREP6();
int EQREP7();
int main()
{


	printf(" *** EQREP6 ***\n");
	EQREP6();
	printf(" *** EQREP7 ***\n");
	EQREP7();
	exit (0);
}


#define RE(i) re[i-1]
#define RF(i) rf[i-1]
#define RG(i) rg[i-1]
#define CEA(i) cea[i-1]
#define IA(i) ia[i-1]
#define IB(i) ib[i-1]
#define IC(i) ic[i-1]
#define ID(i) id[i-1]
#define LIST(i) list[i-1]
#define LA(i) la[i-1]
#define LL(i) ll[i-1]
float rc[10],rd[20],re[10],rf[10],rg[10];
COMPLEX8 cea[10];
long int ia[10],ib[10],ic[20],id[20],list[10];
unsigned long int la[10],ll[10];
int EQREP6()
{
	unsigned long int LT;
	long int i,I;

	for(i=0 ; i<20 ; i++)
	{
		r.rb[i]=1.0;
	}
	for(i=0 ; i<20 ; i++)
	{
		rd[i]=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		cea[i].real=1.0;
		cea[i].imag=1.0;
	}
	for(i=0 ; i<20 ; i++)
	{
		ic[i]=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		id[i]=1;
	}
	I=1;
	for(i=0 ; i<10 ; i++)
	{
		list[i]=I;
		I=I+1;
	}
	for(i=0 ; i<10 ; i++)
	{
		ll[i]=1;
	}

	for(I=1 ; I<=10 ; I++)
	{
		RA(I)    = I+I*I;
		RG(I)    = RA(I)+RB(I+10);
		RC(I)    = RG(I)+RA(I);
		RB(I+10) = RE(I)+RE(I)*2.5;
		LT       = RC(I)>RB(I+10);
		LA(LIST(I)) = LT;
LBL_10:
		;
	}

	printf("****EQREP6*LOOP1**\n");
	printf("(RA)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",RA(i));
	}
	printf("\n");

	printf("(RG)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",RG(i));
	}
	printf("\n");

	printf("(RC)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",RC(i));
	}
	printf("\n");

	printf("(RB)  \n");
	for(i=1 ; i<=20 ; i++)
	{
		printf(" %g ",RB(i));
	}
	printf("\n");

	printf("(LA)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %lu ",LA(i));
	}
	printf("\n");

	for(I=1 ; I<=10 ; I++)
	{
		IA(I) = I+ID(I);
		CEA(I).real = RG(I)+RG(I)*0.0;
		CEA(I).imag = 0;
		RA(I) = RF(I)+IB(I);
		RC(I) = RB(I)+RG(I);
		LA(I) = RG(I)>=RA(I);
LBL_20:
		;
	}

	printf(" ****EQREP6**LOOP2**\n");
	printf("(IA)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %ld ",IA(i));
	}
	printf("\n");

	printf("(CEA)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf("(%g , %g) ",CEA(i).real,CEA(i).imag);
	}
	printf("\n");

	printf("(RA)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",RA(i));
	}
	printf("\n");

	printf("(RC)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",RC(i));
	}
	printf("\n");

	printf("(LA)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %lu ",LA(i));
	}
	printf("\n");

	return 0;
}

#define DA(i) da[i-1]
#define DB(i) db[i-1]
#define DC(i) dc[i-1]
#define DD(i) dd[i-1]
#define QA(i) qa[i-1]
#define QB(i) qb[i-1]
#define QC(i) qc[i-1]
#define QD(i) qd[i-1]
#define LA(i) la[i-1]
#define LB(i) lb[i-1]
#define LC(i) lc[i-1]
#define LD(i) ld[i-1]
#define IA(i) ia[i-1]
#define IB(i) ib[i-1]
#define IC(i) ic[i-1]
#define ID(i) id[i-1]
double      da[10],db[10],dc[10],dd[20];
long double qa[10],qb[10],qc[10],qd[20];
long int    ia[10],ib[10],ic[20],id[20];
unsigned long int la[10],lb[10],lc[10],ld[20];
int EQREP7()
{
	float       RT=1.,RS=1.,RV=2.,RK=2.,RJ=3.,RP=3.;
	double      DT,DS,DV,DK,DJ,DP;
	long double QT,QS,QV,QK,QJ,QP;
	unsigned long int LT,LS,LV,LK,LJ,LP1;
	long int    i,I,IT,IS,IV,IK,IJ,IP;

	for(i=0 ; i<20 ; i++)
	{
		r1.rd[i]=1.0;
	}
	for(i=0 ; i<20 ; i++)
	{
		dd[i]=1.0;
	}
	for(i=0 ; i<20 ; i++)
	{
		qd[i]=1.0;
	}
	for(i=0 ; i<20 ; i++)
	{
		ld[i]=1;
	}
	for(i=0 ; i<20 ; i++)
	{
		id[i]=1;
	}

	for(I=2 ; I<=9 ; I++)
	{
		RA(I) = RC(I)+RS;
		RT    = RA(I)+RV+RP;
		if(I==5)
		{
			RB(I) = RT+RK+RP;
			RA(I) = RB(I)+RC(I);
		}
		RK = RA(I)+RB(I+1);
		RP = RA(I-1);
		RJ = RB(I+1);
LBL_10:
		;
	}

	printf("***EQREP7*LOOP7**\n");
	printf("(RD)   \n");
	for(i=1 ; i<=20 ; i++)
	{
		printf(" %g ",RD(i));
	}
	printf("\n");

	return 0;
}
