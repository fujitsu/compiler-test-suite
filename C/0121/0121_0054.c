#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB(float ra10[][20], float ra20[][20], float ra30[][20], unsigned long int LD10[], long int IN);
int blockdat();
#define RD10(i,j) rd10[i-1][j-1]
#define RD20(i,j) rd20[i-1][j-1]
#define RD30(i,j) rd30[i-1][j-1]
#define CE10(i,j) ce10[i-1][j-1]
#define CE20(i,j) ce20[i-1][j-1]
#define CE30(i,j) ce30[i-1][j-1]
#define LD10(i) ld10[i-1]
#define LD20(i) ld20[i-1]
#define LD30(i) ld30[i-1]
#define RA10(i,j) ra10[i-1][j-1]
#define RA20(i,j) ra20[i-1][j-1]
#define RA30(i,j) ra30[i-1][j-1]
#define HD10(i,j) hd10[i-1][j-1]
#define HD20(i,j) hd20[i-1][j-1]
#define NI na.ni
#define IP na.ip
#define NJ ja.nj
#define JP ja.jp
#define IT3 ia.it3
#define IN3 ia.in3
#define IT4 t.it4
#define IN4 t.in4
union{
	long int ni;
	long int ip;
} na;
union{
	long int nj;
	long int jp;
} ja;
union{
	long int it3;
	long int in3;
} ia;
union{
	long int it4;
	long int in4;
} t;
float rd10[20][20],rd20[20][20],rd30[20][20];
COMPLEX ce10[20][20],ce20[20][20],ce30[20][20];
short int hd10[20][20],hd20[20][20];
float ra10[20][20],ra20[20][20],ra30[20][20];
unsigned long int ld10[20],ld20[20],ld30[20];
long int IT2 ;
int main()
{
	long int IT5=10;
	long int i,j,N1,N2,N3,I,J,K ;
	float RX,RY;
	IT4=5;
	IT3=3;
	blockdat();

	for(j=0 ; j<20 ; j++)
	{
		for(i=0 ; i<20 ; i++)
		{
			hd10[i][j]=1;
			hd20[i][j]=2;
			ra10[i][j]=1.0;
			ra20[i][j]=4.0;
			ra30[i][j]=2.0;
		}
	}
	for(i=0 ; i<20 ; i++)
	{
		ld10[i]=0;
		ld20[i]=0;
		ld30[i]=0;
	}

	for(NI=IT2 ; NI<=IT5 ; NI++)
	{
		N1 = NI-1;
		IT3= NI+IT5;
		SUB(ra10,ra20,ra30,ld10,IT3);
		for(NJ=11 ; NJ<=IT5*2 ; NJ++)
		{
			N2 = 21-JP;
			RD10(NJ,NI)  = RD20(NJ,N1) * 2.0 - RA30(N2,N1);
			RD20(NJ-1,NI)= RA10(N2,NJ) + RD30(NJ-1,IT3);
			RX = CE20(NJ,NI+1).imag - (float)(N2);
			RY = CE30(JP,IP+1).imag - (float)(N2);
			if ( RX  >=  RY )
			{
				LD20(NJ)=1;
				N3=IP-1;
				CE10(N3,N1).real = CE10(N1,N3).real + (float)(RX);
				CE10(N3,N1).imag = CE10(N1,N3).imag + (float)(RY);
			}
			else
			{
				LD30(NJ)=1;
				N3=JP-10;
				CE20(NJ,IT3).real=(float)(RX);
				CE20(NJ,IT3).imag=(float)(RY);
				CE30(N3,NI).real=(float)(RY);
				CE30(N3,NI).imag=(float)(RX);
			}
LBL_10:
			;
		}
	}


	printf("  ***  ** NO.1 *** \n");
	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf(" RD10= %g  RD20= %g ",RD10(i,j),RD20(i,j));
			printf(" LD20= %lu LD30= %lu ",LD20(i),LD30(i));
			printf(" CE10= (%g,%g)  ",CE10(i,j).real,CE10(i,j).imag);
			printf(" CE20= (%g,%g)\n",CE20(i,j).real,CE20(i,j).imag);
		}
	}

	for(I=20 ; I>=11 ; I-=1)
	{
		NI=I-IT4;
		IN4=I-10;
		for(J=IT5 ; J>=1 ; J-=2)
		{
			if ( LD10(IN4)  &&   LD20(J) ==1)
			{
				IT3=1;
				for(K=IT3 ; K<=IN4 ; K++)
				{
					RA10(K,J)    = (RA10(K,J) > RD10(NI,J+IT5)) ?
					    RA10(K,J) : RD10(NI,J+IT5);
					RA20(IT3,NI) = (RA20(IT3,NI) < RD20(IN4,K)) ?
					    RA20(IT3,NI) : RD20(IN4,K);
					RA30(NI,J)   =RA30(NI,J) + RD30(J,K) - (float)(IT4);
LBL_40:
					;
				}
				HD10(I,J)=IT4+IT3;
			}
			else if( LD10(J)==1 && LD30(J)==1 )
			{
				IT3=21-J;
				for(K=2 ; K<=10 ; K++)
				{
					RX = CE10(IT3,IN4).real - CE30(K,J).imag;
					RY = CE10(K-1,NI).imag - CE20(K,J).real;
					CE30(J,K).real = (float)(RX);
					CE30(J,K).imag = (float)(RY);
					CE10(J,I).real = CE10(J,I).real - (float)(RY);
					CE10(J,I).imag = CE10(J,I).imag - (float)(RX);
LBL_50:
					;
				}
			}
			HD20(NI,J) = HD10(IN4,J)-IT3;
LBL_30:
			;
		}
LBL_20:
		;
	}


	printf("  ***  ** NO.2 *** \n");
	for(j=1 ; j<=20 ; j++){
		for(i=1 ; i<=20 ; i++){
			printf(" RA10= %g  RA20= %g ",RA10(i,j),RA20(i,j));
			printf(" RA30= %g ",RA30(i,j));
			printf(" HD10= %d  HD20= %d \n",HD10(i,j),HD20(i,j));
		}
	}
	for(j=1 ; j<=20 ; j++){
		for(i=1 ; i<=20 ; i++){
			printf(" CE10= (%g,%g) ",CE10(i,j).real,CE10(i,j).imag);
			printf(" CE30= (%g,%g) \n",CE30(i,j).real,CE30(i,j).imag);
		}
	}

	exit (0);
}
#define RA10(i,j) ra10[i-1][j-1]
#define RA20(i,j) ra20[i-1][j-1]
#define RA30(i,j) ra30[i-1][j-1]
#define LD10(i) ld10[i-1]
int SUB(ra10,ra20,ra30,LD10,IN)
float ra10[][20],ra20[][20],ra30[][20];
unsigned long int LD10[];
long int IN;
{
	long int II,I,JJ,J;
	float RVAL;
	RVAL=1.0;

	for(I=2 ; I<=IN ; I++)
	{
		II=I-1;
		for(J=2 ; J<=IN ; J++)
		{
			JJ=J-1;
			RA10(I,J)  = RVAL - RA10(I,J);
			RA20(II,J) = RA30(JJ,I) + RD30(J,II) - RVAL;
			RA30(II,JJ)= RA20(J,II) - RVAL + (RD10(I,J) < RD20(J,I)) ?
			    RD10(I,J):RD20(J,I);
			if ( RD10(I,J)  >   RD20(I,J) )
			{
				LD10(J)=1;
			}
			else
			{
				LD10(JJ)=1^LD10(J);
			}
LBL_20:
			;
		}
		RVAL=RVAL+1;
LBL_10:
		;
	}
	return 0;
}
int blockdat()
{
	long int i,j;
	NI=1;
	NJ=1;
	IT2=2 ;
	for(j=0 ; j<20 ; j++)
	{
		for(i=0 ; i<20 ; i++)
		{
			rd10[i][j]=2.0;
			rd20[i][j]=3.0;
			rd30[i][j]=5.0;
			ce10[i][j].real=1.0;
			ce10[i][j].imag=3.0;
			ce20[i][j].real=4.0;
			ce20[i][j].imag=2.0;
			ce30[i][j].real=2.0;
			ce30[i][j].imag=1.0;
		}
	}
}
