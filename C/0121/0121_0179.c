#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB();
#define IEOSLE(i,j) ieosle[i-1][j-1]
#define ROLTN(i,j) roltn[i-1][j-1]
#define RROCSQ(i,j) rrocsq[i-1][j-1]
#define PARPL(i,j) parpl[i-1][j-1]
#define ROGTN(i,j) rogtn[i-1][j-1]
#define GAMCE(i,j) gamce[i-1][j-1]
#define TSUP(i,j) tsup[i-1][j-1]
#define TSTAR(i,j) tstar[i-1][j-1]
#define RPSTAR(i,j) rpstar[i-1][j-1]
#define CVG(i,j) cvg[i-1][j-1]
#define RMAT(i,j) rmat[i-1][j-1]
#define TL(i,j) tl[i-1][j-1]
#define TSAT(i,j) tsat[i-1][j-1]
#define SENT(i,j) sent[i-1][j-1]
#define TCRIT(i,j) tcrit[i-1][j-1]
#define HSTAR(i,j) hstar[i-1][j-1]
#define ZETA(i,j) zeta[i-1][j-1]
#define SIELS(i,j) siels[i-1][j-1]
#define TMLT(i,j) tmlt[i-1][j-1]
#define CVL(i,j) cvl[i-1][j-1]
#define SIELIQ(i,j) sieliq[i-1][j-1]
#define CVLP(i,j) cvlp[i-1][j-1]
#define AEOSLM(i,j) aeoslm[i-1][j-1]
#define RTCRIT(i,j) rtcrit[i-1][j-1]
long int ieosle[10][10];
double roltn[10][10],rrocsq[10][10],parpl[10][10],rogtn[10][10],
gamce[10][10],tsup[10][10],tstar[10][10],rpstar[10][10],
cvg[10][10],rmat[10][10],tl[10][10],tsat[10][10],sent[10][10],
tcrit[10][10],hstar[10][10],zeta[10][10],siels[10][10],
tmlt[10][10],cvl[10][10],sieliq[10][10],cvlp[10][10],aeoslm[10][10],
rtcrit[10][10];
double ZERO,ACOMP,PVL,ONE,TWO3RD,HALF,SIEGTE,ROGTEM,PRINT;
int main()
{
	double UNNORM=1.0;
	long int NCLEM2,IJ,I,J,i,j;
	NCLEM2=10;
	ZERO=0.;
	ACOMP=100.;
	PVL=0.;
	IJ=1;
	ONE=1.;
	TWO3RD=1.;
	HALF=0.5;
	SIEGTE=0.;
	ROGTEM=0.;
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			IEOSLE(I,J)=I;
			if ((I%2) == 0)
			{
				PARPL(I,J)=0.;
				ROLTN(I,J)=UNNORM;
				RROCSQ(I,J)=UNNORM;
				TSUP(I,J)=UNNORM;
				TSTAR(I,J)=UNNORM;
				RPSTAR(I,J)=UNNORM;
				TL(I,J)=UNNORM;
				CVG(I,J)=UNNORM;
				RMAT(I,J)=UNNORM;
				TSAT(I,J)=UNNORM;
				TCRIT(I,J)=UNNORM;
				RTCRIT(I,J)=UNNORM;
				SENT(I,J)=UNNORM;
				HSTAR(I,J)=UNNORM;
				ZETA(I,J)=UNNORM;
				SIELS(I,J)=UNNORM;
				SIELIQ(I,J)=UNNORM;
				TMLT(I,J)=UNNORM;
				CVL(I,J)=UNNORM;
				CVLP(I,J)=UNNORM;
				AEOSLM(I,J)=UNNORM;
			}
			else
			{
				PARPL(I,J)=1.0;
				ROLTN(I,J)=1.0;
				RROCSQ(I,J)=1.0;
				TSUP(I,J)=1.0;
				TSTAR(I,J)=1.0;
				RPSTAR(I,J)=1.0;
				TL(I,J)=1.0;
				CVG(I,J)=1.0;
				RMAT(I,J)=1.0;
				TSAT(I,J)=1.0;
				TCRIT(I,J)=1.0;
				RTCRIT(I,J)=2.0;
				SENT(I,J)=1.0;
				HSTAR(I,J)=1.0;
				ZETA(I,J)=2.0;
				SIELS(I,J)=1.0;
				SIELIQ(I,J)=1.0;
				TMLT(I,J)=1.0;
				CVL(I,J)=1.0;
				CVLP(I,J)=1.0;
				AEOSLM(I,J)=1.0;
			}
LBL_10:
			;
		}
	}
	SUB();
	printf("SIEGTE= %f ROGTEM= %f \n",SIEGTE,ROGTEM);
	printf("SIELS= ");
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" %lf ",SIELS(i,j));
		}
		printf("\n");
	}
	exit (0);
}
int SUB()
{
	long int N,J;
	double ROLP,RLCMP,ATEMP,PVL=0,ZIP ;
	for(J=1;J<=10;J++)
	{
		for(N=1;N<=10;N++)
		{
			ROGTN(N,J)=ZERO;
			GAMCE(N,J)=ZERO;
			if (PARPL(N,J) == ZERO) goto LBL_2330 ;
			ROLP=ROLTN(N,J);
			RLCMP=ROLP*RROCSQ(N,J);
			ATEMP=ACOMP-RLCMP;
			if (ROLP  >=  ATEMP*PARPL(N,J)) goto LBL_2320;
			PARPL(N,J)=ROLP/ATEMP;
			if (PARPL(N,J)  ==  ZERO) goto LBL_2330;
			TL(N,J)=TSUP(N,J)-TSTAR(N,J)
			    /(log(PARPL(N,J)*RPSTAR(N,J)));
LBL_2320:
			;
			PVL=PVL+PARPL(N,J);
			ZIP=(PARPL(N,J)*CVG(N,J))/RMAT(N,J);
			TSAT(N,J)=TL(N,J)-TSUP(N,J);
			SENT(N,J)=ZERO;
			if (TSAT(N,J)  <   TCRIT(N,J))
				SENT(N,J)=HSTAR(N,J)
				    *pow((ONE-TSAT(N,J)*RTCRIT(N,J)),ZETA(N,J));
			if (TSAT(N,J)  >   TWO3RD * TCRIT(N,J)) goto LBL_2322;
			SIELS(N,J)=SIELIQ(N,J)
			    +(TSAT(N,J)-TMLT(N,J) > ZERO) ?
			    (TSAT(N,J)-TMLT(N,J)):ZERO*CVL(N,J);
			goto LBL_2324;
LBL_2322:
			;
			SIELS(N,J)=SIELIQ(N,J)+CVLP(N,J)
			    *(TSAT(N,J)-TWO3RD*TCRIT(N,J))
			    +AEOSLM(N,J)-HALF*SENT(N,J);
LBL_2324:
			;
LBL_2330:
			;
		}
	}
}
