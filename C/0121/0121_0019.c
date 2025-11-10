#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define D010(i) d010[i-1]
#define D020(i) d020[i-1]
#define D030(i) d030[i-1]
#define D040(i) d040[i-1]
#define D110(i,j) d110[i-1][j-1]
#define D120(i,j) d120[i-1][j-1]
#define D130(i,j) d130[i-1][j-1]
#define D210(i) d210[i-1]
#define D220(i) d220[i-1]
#define D230(i) d230[i-1]
double d010[30],d020[30],d030[30],d040[30],d110[30][30],d120[30][30],
d130[30][30],d210[30],d220[30],d230[30];
int main()
{
	short int HDINT=1,HDTRM=30,HDINC=1;
	float RINV,RDOP=30;
	long int IT1=1;
	long int IT2=2;
	long int IT3=3;
	long int IT4=10;
	long int IT5=15;
	long int IT6=30;
	long int J,I,K;


	for(I=HDINT ; I<=30 ; I++)
	{
		D010(I) = 3.0;
		D020(I) = D010(I) * 2.0;
		D030(I) = 4.0;
		D040(I) = 2.0 - D010(I);
	}


	for(J=1 ; J<=IT6 ; J++)
	{
		for(K=1 ; K<=HDTRM ; K++)
		{
			D110(J,K) = D010(J);
			D120(J,K) = 2.0;
			D130(J,K) = D030(K) * 2.0;
		}
	}


	for(I=1 ; I<=30 ; I+=HDINC)
	{
		D210(I) = 4.0;
		D220(I) = 5.0;
		D230(I) = 6.0;
	}


	for(I=2 ; I<=IT4 ; I++)
	{
		J = I-10;
		D010(I*2+1)     = D020(I+IT3+2) + D030(2*I+IT1+1);
		D040(I+1)       = D040(I+IT4) * 2.0 - D020(I*2+1);
		D030(2*I+IT1+1) = D010(I*2) + D040(I);
		D210(J+13)       = D010(I-1) * D220(I+10) - D230(J+11);
		if (I <= 5)
		{
			D220(I+9) = D210(I+1) + D230(2*I+10);
		}
		else
		{
			D230(I+4) = D220(I+2) - D210(J+11);
		}
	}


	printf("  ****  **** S:S ***\n");
	for(I=5 ; I<=21 ; I+=2)
	{
		printf(" %g ",D010(I));
	}
	printf("\n");

	for(I=6 ; I<=22 ; I++)
	{
		printf(" %g ",D030(I));
	}
	printf("\n");

	for(I=3 ; I<=21 ; I++)
	{
		printf(" %g ",D040(I));
	}
	printf("\n");

	for(J=-6 ; J<=2 ; J++)
	{
		printf(" %g ",D210(J+11));
	}
	printf("\n");

	for(J=0 ; J<=3 ; J++)
	{
		printf(" %g ",D220(J+11));
	}
	printf("\n");

	for(J=-9 ; J<=-1 ; J++)
	{
		printf(" %g ",D230(J+11));
	}
	printf("\n");


	for(I=IT3 ; I<=20 ; I++)
	{
		D010(I+1)   = D110(I+2,10) + D020(IT3);
		D040(I+IT4) = D120(I,IT6) * D130(I,I);
		D020(IT3+I) = D030(I) + D010(IT3);
		D110(5,I+3) = D040(IT4) / D020(I+IT3-1);
	}


	printf("  ****  **** NO.2 **** \n");
	for(K=3 ; K<=20 ; K++)
	{
		printf(" %g ",D010(K));
	}
	printf("\n");

	for(K=6 ; K<=23 ; K++)
	{
		printf(" %g ",D020(K));
	}
	printf("\n");

	for(K=13 ; K<=30 ; K++)
	{
		printf(" %g ",D040(K));
	}
	printf("\n");

	for(J=6 ; J<=23 ; J++)
	{
		for(I=4 ; I<=5 ; I++)
		{
			printf(" %g ",D110(I,J));
		}
	}
	printf("\n");


	for(J=4 ; J>=-4 ; J-=IT2)
	{
		D210(J*2+12)   = D220(J-IT2+11) + D230(J+2+11);
		D220(J+11)       = D210(J*2+11) - D010(J+10) / 2.0;
		D230(J+13+IT2) = D020(J+15) * D030(J+20);
	}


	printf("  ****  *** NO.3 **** \n");
	for(K=-7 ; K<=9 ; K++)
	{
		printf(" %g ",D210(K+11));
	}
	printf("\n");

	for(K=-4 ; K<=4 ; K++)
	{
		printf(" %g ",D220(K+11));
	}
	printf("\n");

	for(K=0 ; K<=8 ; K++)
	{
		printf(" %g ",D230(K+11));
	}
	printf("\n");

	exit (0);
}
