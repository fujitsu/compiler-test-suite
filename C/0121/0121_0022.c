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
#define L010(i) l010[i-1]
#define L020(i) l020[i-1]
#define CD010(i) cd010[i-1]
#define CD020(i) cd020[i-1]
#define CD030(i) cd030[i-1]
unsigned long int l010[40],l020[40];
double d010[40],d020[40],d030[40],d040[40],d110[40][40],d120[40][40],
d130[40][40];
COMPLEX16 cd010[40],cd020[40],cd030[40];
int main()
{
	short int HIND=0;
	float RIND=1.0;
	double DIND=1.0;
	long int IT1=1;
	long int IT2=2;
	long int IT3=3;
	long int IT4=10;
	long int IT5=40;
	long int IND=1;
	long int I,J,K,i,j,k,l,m,INV;


	for(i=0;i< 40;i++)
	{
		d010[i] = 1.0;
		d020[i] = 1.0;
		d030[i] = 1.0;
		d040[i] = 2.0;
		l020[i] = 0;
		cd010[i].dreal = 2.0;
		cd010[i].dimag = 4.0;
		cd020[i].dreal = 1.0;
		cd020[i].dimag = 2.0;
		cd030[i].dreal = 1.0;
		cd030[i].dimag = 1.0;
	}
	for(j=0;j< 40;j++)
	{
		for(i=0;i< 40;i++)
		{
			d110[i][j]=1.1;
		}
	}
	for(j=0;j< 40;j++)
	{
		for(i=0;i< 40;i++)
		{
			d120[i][j]=2.0;
		}
	}
	for(j=0;j< 40;j++)
	{
		for(i=0;i< 40;i++)
		{
			d130[i][j]=3.1;
		}
	}

	for(I=40;I>=1;I-=1)
	{
		for(J=40;J>=1;J-=1)
		{
			HIND = 41-J;
			D110(I,J)  = D010(J) + D020(HIND);
			D120(I,J)  = D030(HIND) + D040(I);
			D130(I,J)  = D110(J,I) - D120(J,I);
			D020(HIND) = CD010(I).dimag + D010(J);
			D030(HIND) = CD020(J).dreal + D010(I);
		}
	}

	printf("   ***  *** INIT *** \n");
	for(J=40 ; J>=1 ; J--)
	{
		for(I=40 ; I>=1 ; I--)
		{
			printf(" %g ",D110(I,J));
			if (I==21 || I==1)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(J=40 ; J>=1 ; J--)
	{
		for(I=40 ; I>=1 ; I--)
		{
			printf(" %g ",D120(I,J));
			if (I==21 || I==1)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(J=40 ; J>=1 ; J--)
	{
		for(I=40 ; I>=1 ; I--)
		{
			printf(" %g ",D130(I,J));
			if (I==21 || I==1)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(K=40 ; K>=21 ; K--)
	{
		printf(" %g ",D020(K));
	}
	printf("\n");

	for(K=20 ; K>=1 ; K--)
	{
		printf(" %g ",D020(K));
	}
	printf("\n");

	for(K=40 ; K>=21 ; K--)
	{
		printf(" %g ",D030(K));
	}
	printf("\n");

	for(K=20 ; K>=1 ; K--)
	{
		printf(" %g ",D030(K));
	}
	printf("\n");

	RIND=1.0;
	HIND=40;

	for(I=5;I<=20;I+=IT2)
	{
		j = RIND;
		k = HIND;
		l = DIND;
		m = IND;
		D030(k)   = D020(j) + D040(l+1) + D010(m+20);
		D040(l+1) = D030(k) * D020(j) - D010(m*2);
		D020(j)   = D020(j) + (D030(k) - D040(l+1)) * 2.0;
		D010(m)    = CD030(I).dreal + D110(I,I);
		HIND = HIND - 2;
		RIND = RIND + 1.0;
		DIND = DIND + 2.0;
		IND = IND + 1;
	}

	printf("  ****  *** NO.1 *** INDUCTION TEST **** \n");
	for(I=1 ; I<=20 ; I++)
	{
		printf(" %g ",D010(I));
	}
	printf("\n");

	for(I=1 ; I<=20 ; I++)
	{
		printf(" %g ",D020(I));
	}
	printf("\n");

	for(I=21 ; I<=40 ; I++)
	{
		printf(" %g ",D030(I));
	}
	printf("\n");

	for(I=1 ; I<=20 ; I++)
	{
		printf(" %g ",D040(I));
	}
	printf("\n");
	printf("   RIND = %g  DIND =  %g  \n", RIND , DIND);

	IT3 = 10;
	IND = 1;

	for(J=3;J<=IT3*2+1;J++)
	{
		HIND = J+1;
		IND  = 2*J-3;
		CD010(J).dreal = (double)(D010(IND)+D030(HIND));
		CD020(J).dreal = (double)(D020(IND)+D040(HIND));
		CD030(J).dreal = (double)(D010(IND)+D030(HIND));
		L010(J)  = 1;
		if ( CD010(J).dimag  >= CD020(J).dimag )
		{
			L020(J)   = 1;
			D010(IND) = 0.0;
			D020(IND) = CD030(IND).dreal;
		}
		D030(HIND) = 1.0 + D010(IND);
		D040(HIND) = 0.0 + D020(IND);
	}

	printf("  ****  **** NO.2 **** \n");
	for(K=3 ; K<=21 ; K++)
	{
		printf(" %g ",D010(K));
	}
	printf("\n");

	for(K=22 ; K<=39 ; K++)
	{
		printf(" %g ",D010(K));
	}
	printf("\n");

	for(K=3 ; K<=21 ; K++)
	{
		printf(" %g ",D020(K));
	}
	printf("\n");

	for(K=22 ; K<=39 ; K++)
	{
		printf(" %g ",D020(K));
	}
	printf("\n");

	for(K=4 ; K<=22 ; K++)
	{
		printf(" %g ",D030(K));
	}
	printf("\n");

	for(K=4 ; K<=22 ; K++)
	{
		printf(" %g ",D040(K));
	}
	printf("\n");

	for(K=3;K<=9;K++)
	{
		printf("( %g,%g) ",CD010(K).dreal,CD010(K).dimag);
	}
	printf("\n");

	for(K=10;K<=15;K++)
	{
		printf("( %g,%g) ",CD010(K).dreal,CD010(K).dimag);
	}
	printf("\n");

	for(K=16;K<=21;K++)
	{
		printf("( %g,%g) ",CD010(K).dreal,CD010(K).dimag);
	}
	printf("\n");

	for(K=3;K<=9;K++)
	{
		printf("( %g,%g) ",CD020(K).dreal,CD020(K).dimag);
	}
	printf("\n");

	for(K=10;K<=15;K++)
	{
		printf("( %g,%g) ",CD020(K).dreal,CD020(K).dimag);
	}
	printf("\n");

	for(K=16;K<=21;K++)
	{
		printf("( %g,%g) ",CD020(K).dreal,CD020(K).dimag);
	}
	printf("\n");

	for(K=3 ; K<=21 ; K++);
	{
		printf(" %lu ",L010(K));
	}
	printf("\n");

	for(K=3 ; K<=21 ; K++);
	{
		printf(" %lu ",L020(K));
	}
	printf("\n");

	IT4 = 2;
	IT2 = 1;
	IT1 = 1;
	IND = 1;
	INV = 1;

	for(I=5;I<=IT5/2;I+=2)
	{
		IND=I+IT2;
		INV=INV+IT2;
		D010(IT1)   = D020(IND+2) - D030(IND+5) + D110(3,IND);
		D020(IND)   = D040(IT1) * 2.0 - D120(I,IND);
		D030(IND+1) = D130(IND,5) * 5.0 - D010(IT1);
		D040(IT1)   = D010(IT1) - CD010(I).dreal + D040(IT1);
		D120(IND,I) = CD020(I).dreal + CD030(1).dreal;
		D110(I,IND) = CD020(I).dimag + CD030(40).dimag;
	}

	printf("  ****  *** NO.3 **** \n");
	for(K=4 ; K<=20 ; K++)
	{
		printf(" %g ",D010(K));
	}
	printf("\n");

	for(K=1 ; K<=20 ; K++)
	{
		printf(" %g ",D020(K));
	}
	printf("\n");

	for(K=2 ; K<=20 ; K++)
	{
		printf(" %g ",D030(K));
	}
	printf("\n");

	for(K=4 ; K<=20 ; K++)
	{
		printf(" %g ",D040(K));
	}
	printf("\n");

	for(J=5 ; J<=15 ; J++)
	{
		for(I=1 ; I<=20 ; I++)
		{
			printf(" %g ",D110(I,J));
			if (I==20)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(J=1 ; J<=20 ; J++)
	{
		for(I=5 ; I<=15 ; I++)
		{
			printf(" %g ",D120(I,J));
			if (I==15)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	exit (0);
}
