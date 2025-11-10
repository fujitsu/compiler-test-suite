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
long int ieosle[100][10];
double roltn[100][10],rrocsq[100][10],parpl[100][10],rogtn[100][10],
gamce[100][10],tsup[100][10],tstar[100][10],rpstar[100][10],
cvg[100][10],rmat[100][10],tl[100][10],tsat[100][10],
sent[100][10],tcrit[100][10],hstar[100][10],zeta[100][10],
siels[100][10],tmlt[100][10],cvl[100][10],sieliq[100][10],
cvlp[100][10],aeoslm[100][10],rtcrit[100][10];
double ACOMP,ZERO,ACOMP,PVL,ONE,TWO3RD,HALF,SIEGTE,ROGTEM;
long int NCLEM2,IJ;
int main()
{
	double UNNORM=1.0;
	long int J,I,i;
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
	for(J=1;J<=100;J++)
	{
		for(I=1;I<=10;I++)
		{
			IEOSLE(J,I)=I;
			if ((I%2) == 0)
			{
				PARPL(J,I)=0.;
				ROLTN(J,I)=UNNORM;
				RROCSQ(J,I)=UNNORM;
				TSUP(J,I)=UNNORM;
				TSTAR(J,I)=UNNORM;
				RPSTAR(J,I)=UNNORM;
				TL(J,I)=UNNORM;
				CVG(J,I)=UNNORM;
				RMAT(J,I)=UNNORM;
				TSAT(J,I)=UNNORM;
				TCRIT(J,I)=UNNORM;
				RTCRIT(J,I)=UNNORM;
				SENT(J,I)=UNNORM;
				HSTAR(J,I)=UNNORM;
				ZETA(J,I)=UNNORM;
				SIELS(J,I)=UNNORM;
				SIELIQ(J,I)=UNNORM;
				TMLT(J,I)=UNNORM;
				CVL(J,I)=UNNORM;
				CVLP(J,I)=UNNORM;
				AEOSLM(J,I)=UNNORM;
			}
			else
			{
				PARPL(J,I)=I;
				ROLTN(J,I)=I;
				RROCSQ(J,I)=I;
				TSUP(J,I)=I;
				TSTAR(J,I)=I;
				RPSTAR(J,I)=I;
				TL(J,I)=I;
				CVG(J,I)=I;
				RMAT(J,I)=I;
				TSAT(J,I)=I;
				TCRIT(J,I)=I;
				RTCRIT(J,I)=I;
				SENT(J,I)=I;
				HSTAR(J,I)=I;
				ZETA(J,I)=I;
				SIELS(J,I)=I;
				SIELIQ(J,I)=I;
				TMLT(J,I)=I;
				CVL(J,I)=I;
				CVLP(J,I)=I;
				AEOSLM(J,I)=I;
			}
LBL_10:
			;
		}
	}
	SUB();
	printf(" SIEGTE= %g ROGTEM= %g \n",SIEGTE,ROGTEM);
	printf(" SIELS = \n");
	for(i=1;i<=100;i++){
		printf(" %g ",SIELS(i,1));
		printf(" %g ",SIELS(i,2));
		printf(" %g ",SIELS(i,3));
		printf(" %g ",SIELS(i,4));
		printf(" %g \n",SIELS(i,5));
		printf(" %g ",SIELS(i,6));
		printf(" %g ",SIELS(i,7));
		printf(" %g ",SIELS(i,8));
		printf(" %g ",SIELS(i,9));
		printf(" %g \n",SIELS(i,10));
	}
	exit (0);
}
int SUB()
{
	long int N,J;
	double ROLP,RLCMP,ATEMP,ZIP;
	double WK;
	for(N=1;N<=100;N++)
	{
		for(J=1;J<=10;J++)
		{
			ROGTN(N,J)=ZERO;
			GAMCE(N,J)=ZERO;
			if (PARPL(N,J) == ZERO) goto LBL_2330 ;
			ROLP=ROLTN(N,J);
			RLCMP=ROLP*RROCSQ(N,J);
			ATEMP=ACOMP-RLCMP;
			if (ROLP  >=  ATEMP*PARPL(N,J)) goto LBL_2320 ;
			PARPL(N,J)=ROLP/ATEMP;
			if (PARPL(N,J) == ZERO) goto LBL_2330 ;
			TL(N,J)=TSUP(N,J)-TSTAR(N,J)
			    /(log(PARPL(N,J)*RPSTAR(N,J)));
LBL_2320:
			;
			PVL=PVL+PARPL(N,J);
			ZIP=(PARPL(N,J)*CVG(N,J))/RMAT(N,J);
			TSAT(N,J)=TL(N,J)-TSUP(N,J);
			SENT(N,J)=ZERO;
			if (TSAT(N,J)  <   TCRIT(N,J)){
				SENT(N,J)=HSTAR(N,J)
				    *(ONE-TSAT(N,J)*RTCRIT(N,J))*ZETA(N,J);
			}
			if (TSAT(N,J) > TWO3RD * TCRIT(N,J)) goto LBL_2322 ;
			WK=((TSAT(N,J)-TMLT(N,J)) > ZERO) ? (TSAT(N,J)-TMLT(N,J)):ZERO;   
			;
			SIELS(N,J)=SIELIQ(N,J)+ WK*CVL(N,J);
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
