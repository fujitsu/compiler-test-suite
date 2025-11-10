#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define D010(i) d010[i-1]
#define D020(i) d020[i-1]
#define D030(i) d030[i-1]
#define D040(i) d040[i-1]
#define CD010(i) cd010[i-1]
#define CD020(i) cd020[i-1]
#define CD030(i) cd030[i-1]
COMPLEX16 cd010[40],cd020[40],cd030[40];
int main()
{
	short int HDOP=1,HIND;
	float RDOP=40.0,RIND;
	double d010[40],d020[40],d030[40],d040[40];
	double DDOP=1.0;
	long int IT1=1;
	long int IT2=2;
	long int IT3=10;
	long int IT4=20;
	long int IT5=40;
	long int i,j,I,J,IT6,K;
	for(i=0 ; i< 40 ; i++)
	{
		d010[i]=4.0;
	}

	D020(1) = 3.0;
	D030(1) = 1.0;
	D040(1) = 20.0;
	for(I=HDOP+1 ; I<=RDOP ; I++)
	{
		D020(I) = D010(I) * 2.0;
		D030(I) = D020(I-1) + D010(I);
		D040(I) = D030(I-1) - D010(I-1);
		D010(I-1) = D040(I) / 2.0;
	}

	for(RIND=1 ; RIND<=40 ; RIND++)
	{
		j = RIND;
		CD010(j).dreal = 2.0;
		CD010(j).dimag = 4.0;
		CD020(j).dreal = 0.6;
		CD020(j).dimag = 2.0;
		CD030(j).dreal = CD010(j).dreal * 2.0
		    - CD010(j).dimag * 4.0;
		CD030(j).dimag = CD010(j).dreal * 4.0
		    + CD010(j).dimag * 2.0;
	}

	printf("  ****  **** NO.1 **** \n");

	for(I=10 ; I<=20 ; I++)
	{
		printf(" %g ",D020(I));
	}
	printf("\n");

	for(I=10 ; I<=20 ; I++)
	{
		printf(" %g ",D040(I));
	}
	printf("\n");

	for(J=10 ; J<=20 ; J++)
	{
		printf("(%g,%g) ",CD010(J).dreal,CD010(J).dimag);
	}
	printf("\n");

	for(J=10 ; J<=20 ; J++)
	{
		printf("(%g,%g) ",CD020(J).dreal,CD020(J).dimag);
	}
	printf("\n");

	for(I=IT4 ; I>=2 ; I-=2)
	{
		D010(2*I) = D020(I) + D030(I+10);
		D020(I-1) = D040(I+5) * D010(2*I-1);
	}

	for(HIND=1 ; HIND<=IT4 ; HIND++)
	{
		D030(HIND) = D010(HIND+IT4) + D040(HIND);
		D040(HIND) = D020(HIND+1) * D030(IT4+1);
	}

	for(RIND=2 ; RIND<=10 ; RIND++)
	{
		j = RIND;
		CD010(j*2).dreal = CD020(j+2).dreal + CD030(j).dreal;
		CD010(j*2).dimag = CD020(j+2).dimag + CD030(j).dimag;
		CD030(j).dreal  = CD010(j*2+1).dreal * CD020(j+10).dreal
		    - CD010(j*2+1).dimag * CD020(j+10).dimag;
		CD030(j).dimag  = CD010(j*2+1).dreal * CD020(j+10).dimag
		    + CD010(j*2+1).dimag * CD020(j+10).dreal;
		CD020(j).dreal   = CD030(j-1).dreal - CD010(40).dreal;
		CD020(j).dimag   = CD030(j-1).dimag - CD010(40).dimag;
	}

	printf("  ****  **** NO.2 **** \n");

	for(K=4 ; K<=20 ; K+=2)
	{
		printf(" %g ",D010(K));
	}
	printf("\n");

	for(K=1 ; K<=20 ; K++)
	{
		printf(" %g ",D020(K));
	}
	printf("\n");

	printf("  *** INDUCTION VARIABLE ** I*2 *** \n");

	for(J=1 ; J<=20 ; J++)
	{
		printf(" %g ",D030(J));
	}
	printf("\n");

	for(J=1 ; J<=20 ; J++)
	{
		printf(" %g ",D040(J));
	}
	printf("\n");

	printf("  *** INDUCTION VARIABLE ** R*4 *** \n");

	for(I=4 ; I<=20 ; I+=2)
	{
		printf("(%g,%g) ",CD010(I).dreal,CD010(I).dimag);
	}
	printf("\n");

	for(I=2 ; I<=10 ; I++)
	{
		printf("(%g,%g) ",CD020(I).dreal,CD020(I).dimag);
	}
	printf("\n");

	for(I=2 ; I<=10 ; I++)
	{
		printf("(%g,%g) ",CD030(I).dreal,CD030(I).dimag);
	}
	printf("\n");

	for(I=2 ; I<=12 ; I+=IT1)
	{
		D010(3*I+IT1)     = D020(IT1+I*2) - D030(I+IT1+1);
		D030(I+IT1+00+1)  = D040(2*I+IT2+IT3) * CD020(I+1).dimag;
		D040(IT2+IT3+I*2) = D010(3*I+IT1) + CD010(I).dimag;
		D020(2*I+IT1)     = D010(I) + (CD010(I).dreal/2.0 );
		D010(I+1)         = fabs(CD030(I-1).dreal);
	}

	printf("  ****  *** NO.3 **** \n");

	for(K=7 ; K<=34 ; K++)
	{
		printf(" %g ",D010(K));
	}
	printf("\n");

	for(K=5 ; K<=23 ; K++)
	{
		printf(" %g ",D020(K));
	}
	printf("\n");

	for(K=4 ; K<=13 ; K++)
	{
		printf(" %g ",D030(K));
	}
	printf("\n");

	for(K=16 ; K<=36 ; K++)
	{
		printf(" %g ",D040(K));
	}
	printf("\n");

	for(J=3 ; J<=20 ; J++)
	{
		CD010(J).dreal   = (double)(D010(J+1) - D020(J));
		CD010(J).dimag   = 0;
		D020(2*J)        = CD010(J+1).dimag * 2.0 - D030(J);
		CD020(J).dreal   = (double)(CD020(J+1).dimag + D020(J+2));
		CD020(J).dimag   = (double)(CD020(J+1).dimag + 0);
		CD030(J-1).dreal = CD010(2*J).dreal + (double)(CD020(J+3).dreal);
		CD030(J-1).dimag = CD010(2*J).dimag + (double)(CD020(J+3).dreal);
	}

	printf("  **** RESULT OF COMPLEX DATA **** \n");

	for(I=3 ; I<=11 ; I++)
	{
		printf("(%g,%g) ",CD010(I).dreal,CD010(I).dimag);
	}
	printf("\n");
	for(I=12; I<=20 ; I++)
	{
		printf("(%g,%g) ",CD010(I).dreal,CD010(I).dimag);
	}
	printf("\n");

	for(I=3 ; I<=11 ; I++)
	{
		printf("(%g,%g) ",CD020(I).dreal,CD020(I).dimag);
	}
	printf("\n");

	for(I=12; I<=20 ; I++)
	{
		printf("(%g,%g) ",CD020(I).dreal,CD020(I).dimag);
	}
	printf("\n");

	for(I=2 ; I<=11 ; I++)
	{
		printf("(%g,%g) ",CD030(I).dreal,CD030(I).dimag);
	}
	printf("\n");

	for(I=11; I<=20 ; I++)
	{
		printf("(%g,%g) ",CD030(I).dreal,CD030(I).dimag);
	}
	printf("\n");

	IT6=0;
	for(K=10 ; K<=35 ; K++)
	{
		D020(K)       = D010(K) * D020(IT6*K+2);
		D040(IT6*K+1) = D040(IT6*K+1) - D030(K+1);
	}

	for(I=30 ; I>=5 ; I-=2)
	{
		CD010(I+1).dreal = CD020(I+2+00).dreal + CD030(00*I+2).dreal;
		CD010(I+1).dimag = CD020(I+2+00).dimag + CD030(00*I+2).dimag;
		CD020(I+2).dreal = CD010(00*I+35).dreal - CD030(I+7).dreal;
		CD020(I+2).dimag = CD010(00*I+35).dimag - CD030(I+7).dimag;
	}

	for(J=1 ; J<=10 ; J++)
	{
		CD030(00*J+1).dreal = CD030(00*J+1).dreal + CD020(J).dreal;
		CD030(00*J+1).dimag = CD030(00*J+1).dimag + CD020(J).dimag;
	}

	printf("  ****  **** NO.4 **** \n");

	for(J=2 ; J<=4 ; J++)
	{
		printf(" %g ",D010(J));
	}
	printf("\n");

	for(J=10 ; J<=22 ; J++)
	{
		printf(" %g ",D020(J));
	}
	printf("\n");

	for(J=23 ; J<=35 ; J++)
	{
		printf(" %g ",D020(J));
	}
	printf("\n");

	for(J=2 ; J<=4 ; J++)
	{
		printf(" %g ",D030(J));
	}
	printf("\n");

	printf(" %g ",D040(1));
	printf(" %g ",D040(2));
	printf("\n");

	printf(" (%g,%g) ",CD010(1).dreal,CD010(1).dimag);
	printf(" (%g,%g) ",CD010(2).dreal,CD010(2).dimag);
	printf("\n");

	printf(" (%g,%g) ",CD020(1).dreal,CD020(1).dimag);
	printf(" (%g,%g) ",CD020(2).dreal,CD020(2).dimag);
	printf("\n");

	printf(" (%g,%g) ",CD030(1).dreal,CD030(1).dimag);
	printf(" (%g,%g) ",CD030(2).dreal,CD030(2).dimag);
	printf("\n");

	exit (0);
}
