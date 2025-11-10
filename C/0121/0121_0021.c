#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define LD010(i) ld010[i-1]
#define LD020(i) ld020[i-1]
#define D010(i) d010[i-1]
#define D020(i) d020[i-1]
#define D030(i) d030[i-1]
#define D040(i) d040[i-1]
#define I010(i) i010[i-1]
#define I020(i) i020[i-1]
unsigned long int ld010[30],ld020[30];
double d010[40],d020[40],d030[40],d040[40];
long int i010[20],i020[20];
int main()
{
	double    DSUM=0.0,DFND1,DFND2,DVAR1,DVAR2,DVAR3;
	long int  i,K,I,IND,J;

	for(i=0 ; i<20 ; i++)
	{
		ld010[i]=0;
	}
	for(i=20 ; i<30 ; i++)
	{
		ld010[i]=1;
	}
	for(i=0 ; i<40 ; i++)
	{
		d010[i]=2.0;
	}
	for(i=0 ; i<40 ; i++)
	{
		d020[i]=3.0;
	}
	for(i=0 ; i<40 ; i++)
	{
		d030[i]=4.0;
	}
	for(i=0 ; i<20 ; i++)
	{
		i010[i]=2;
	}
	for(i=0 ; i<20 ; i++)
	{
		i020[i]=4;
	}

	for(I=2 ; I<=30 ; I+=2)
	{
		LD020(I)   = LD010(1);
		LD020(I-1) = LD010(20);
	}

	for(I=2 ; I<=25 ; I++)
	{
		DVAR1     = D010(I) + D020(I+1) + D030(I+2) + D040(I+3);
		D020(I)   = D030(I+1) + D040(I+3);
		D030(I+2) = D020(I+1) + D010(30);
		D010(I)   = DVAR1 * 0.5;
		if (D010(I) >= D030(I))
		{
			DVAR2 = D030(I) - D040(I);
			DVAR3 = 0.0;
		}
		else if (LD020(I)==1)
		{
			DVAR3 = D020(I) - D040(I);
			DVAR2 = 0.0;
		}
		else
		{
			DVAR2 = 0.0;
			DVAR3 = 0.0;
		}
		D040(I) = (D010(I-1)+DVAR2) * (DVAR1+DVAR3);
	}

	printf("  ****  *** NO.1 **** \n");
	for(K=2 ; K<=13 ; K++)
	{
		printf(" %g ",D010(K));
	}
	printf("\n");

	for(K=14; K<=25 ; K++)
	{
		printf(" %g ",D010(K));
	}
	printf("\n");

	for(K=2 ; K<=13 ; K++)
	{
		printf(" %g ",D020(K));
	}
	printf("\n");

	for(K=14 ; K<=25 ; K++)
	{
		printf(" %g ",D020(K));
	}
	printf("\n");

	for(K=5 ; K<=15 ; K++)
	{
		printf(" %g ",D030(K));
	}
	printf("\n");

	for(K=16 ; K<=27 ; K++)
	{
		printf(" %g ",D030(K));
	}
	printf("\n");

	for(K=2 ; K<=13 ; K++)
	{
		printf(" %g ",D040(K));
	}
	printf("\n");

	for(K=14 ; K<=25 ; K++)
	{
		printf(" %g ",D040(K));
	}
	printf("\n");

	DSUM = 0.0;
	for(J=1 ; J<=30 ; J++)
	{
		IND     = 31 - J;
		DFND1   = D010(J) + D040(IND);
		DFND2   = D020(J) + D030(IND);
		D010(J) = (DFND1>DFND2) ? DFND1:DFND2;
		D020(J) = (DFND1<DFND2) ? DFND1:DFND2;
		DSUM    = DSUM + (D010(J)-D020(J));
	}

	printf("  **** MVCT3002 *** NO.2 **** \n");
	printf("   DSUM =  %g \n",DSUM);

	DSUM  = 0.0;
	DFND1 = 0.0;
	DFND2 = 0.0;
	for(I=1 ; I<=15 ; I++)
	{
		J = I + 15;
		D040(J) = D010(I);
		D030(J) = D020(I);
		if (LD010(I) &&  (!LD020(I))==1)
		{
			D010(I) = D030(I) + D040(I);
			D020(I) = D030(J) + D040(J);
			DFND1   = D020(J) + D010(I+1);
			DFND2   = DFND1 + D020(I);
		}
		else
		{
			DFND1=(fabs(D030(I))>fabs(D040(I))) ? fabs(D030(I)):fabs(D040(I));
			DFND2=(fabs(D030(J))<fabs(D040(J))) ? fabs(D030(J)):fabs(D040(J));
		}
		DSUM    = DSUM+D010(I) + D020(I);
		D010(I) = (DFND1-DFND2) * D030(I+15);
	}

	DVAR1 = 0.0;
	for(J=1 ; J<=40 ; J++)
	{
		DVAR1 = DVAR1 + D010(J);
	}

	if ( DSUM  >=  DVAR1 )
	{
		for(K=1 ; K<=20 ; K++)
		{
			LD010(K) = 1;
			LD020(K) = 0;
		}
	}

	printf("  ****  *** NO.3 **** \n");
	for(I=1 ; I<=15 ; I++)
	{
		printf(" %g ",D010(I));
	}
	printf("\n");

	for(I=1 ; I<=15 ; I++)
	{
		printf(" %g ",D020(I));
	}
	printf("\n");

	for(J=16 ; J<=30 ; J++)
	{
		printf(" %g ",D030(J));
	}
	printf("\n");

	for(J=16 ; J<=30 ; J++)
	{
		printf(" %g ",D040(J));
	}
	printf("\n");

	for(i=1 ; i<=15 ; i++)
	{
		printf(" %lu ",LD010(i));
	}
	printf("\n");

	for(i=16 ; i<=30 ; i++)
	{
		printf(" %lu ",LD010(i));
	}
	printf("\n");

	for(i=1 ; i<=15 ; i++)
	{
		printf(" %lu ",LD020(i));
	}
	printf("\n");

	for(i=16 ; i<=30 ; i++)
	{
		printf(" %lu ",LD020(i));
	}
	printf("\n");

	printf(" %g   %g   \n",DSUM,DVAR1);
	exit (0);
}
