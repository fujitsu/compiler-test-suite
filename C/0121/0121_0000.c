#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int SUB2(double d010[], double d020[], double d030[], double d040[], long int IDNM1, long int IDNM2);
int SUB1(long int ID10, long int ID20, long int ID30, long int ID40);
#define R010(i) r010[i-1]
#define R020(i) r020[i-1]
#define R030(i) r030[i-1]
#define R040(i) r040[i-1]
#define D010(i) d010[i-1]
#define D020(i) d020[i-1]
#define D030(i) d030[i-1]
#define D040(i) d040[i-1]
#define D110(i,j) d110[i-1][j-1]
#define D120(i,j) d120[i-1][j-1]
#define D130(i,j) d130[i-1][j-1]
#define I010(i) i010[i-1]
#define I020(i) i020[i-1]
#define I030(i) i030[i-1]
#define I040(i) i040[i-1]
#define L010(i) l010[i-1]
#define L020(i) l020[i-1]

#define IT1 40
#define IT2 40
#define IT3 1
#define PAI 3.1415
#define DCNT 2.0
#define SUM(i,j,k) i+j+k
#define SUB(i,j,k) ((i>j) ? i:j)-((i<k) ? i:k)
#define MLT(i,j) (fabs(i-j)) * PAI


float      r010[40],r020[40],r030[40],r040[40];
double     d010[40],d020[40],d030[40],d040[40];
double     d110[40][40],d120[40][40],d130[40][40];
long int   i010[40],i020[40],i030[40],i040[40];
unsigned long int  l010[40],l020[40];
int main()
{
	long int   IT4 = 10;
	long int   IT5 = 20;
	long int   IT6 = 40;
	long int   i,j,J,I,K,N,ICNT1,ICNT2,IDNM1,IDNM2;
	double     DV1,DV2,DV3,DSUM,DFND;

	for(i=0 ; i<40 ; i++)
	{
		l010[i]=1;
		l020[i]=0;
		d010[i]=2.0;
		d020[i]=4.0;
		d030[i]=16.0;
	}
	for(j=0 ; j<40 ; j++)
	{
		for(i=0 ; i<40 ; i++)
		{
			d130[i][j]=1.0;
		}
	}

	for(I=1 ; I<=40 ; I++)
	{
		R010(I) = 2.0;
		R020(I) = 4.0;
		R030(I) = 16.0;
		R040(I) = 256.0;
	}


	for(J=1 ; J<=IT1 ; J++)
	{
		for(K=1 ; K<=IT2 ; K++)
		{
			D110(J,K) = D010(K);
			D120(J,K) = D020(K) * 2.0;
			D130(J,K) = D030(K) + 2.0;
			D040(K)   = SUM(D010(K),D020(K),D030(K));
		}
	}

	printf("  ****  *** ARGUMENT TEST ** \n");
	for(i=1 ; i<=20 ; i++)
	{
		printf(" %g ",D040(i));
		if(i==10)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(i=21 ; i<=40 ; i++)
	{
		printf(" %g ",D040(i));
		if(i==30)
		{
			printf("\n");
		}
	}
	printf("\n");


	DSUM = 0.0;
	DFND = 0.0;
	for(I=4 ; I<=15 ; I++)
	{
		D010(I+1) = (double)( sqrt(R020(I+1)) * sqrt(R040(I+2)) );
		D020(I+2) = D010(I) + ( D030(I*2+1)-D040(I) ) * (-2.0 );
		D030(I-1) = SUB( D010(I),D020(I),D040(I) );
		DV1       = (double)( R020(I)>R030(I) ) ? R020(I):R030(I);
		DV1       = (double)( DV1>R040(I) ) ? DV1:R040(I);
		DV2       = (double)( R040(I)-R020(I)-R030(I) ) * D020(I+3);
		D040(I-1) = MLT(DV1,DV2);
	}
	printf("  ****  *** NO.1 **** \n");
	for(K=5 ; K<=16 ; K++)
	{
		printf(" %g ",D010(K));
		if(K==14)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=8 ; K<=30 ; K+=2)
	{
		printf(" %g ",D020(K));
		if(K==26)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=3 ; K<=14 ; K++)
	{
		printf(" %g ",D030(K));
		if(K==12)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=3 ; K<=14 ; K++)
	{
		printf(" %g ",D040(K));
		if(K==12)
		{
			printf("\n");
		}
	}
	printf("\n");
	for(I=1 ; I<=40 ; I++)
	{
		J = 40+I;
		K = 80+I;
		N = K+40;
		I010(I) = I;
		I020(I) = J;
		I030(I) = K;
		I040(I) = N;
	}
	for(I=IT4 ; I<=IT4*3 ; I++)
	{
		I010(I+2) = I020(I+1) + I030(I+3) - I040(I);
		I020(I) = I030(I) * I040(I) - I020(I+1);
		I030(I) = I040(I) / I010(I) * 5;
		I040(I) = (fabs)( ((I030(I)>I020(I)) ? I030(I):I020(I))
		    + ((I020(I)<I030(I)) ? I020(I):I030(I)) );
		ICNT1   = ( I010(I)>I030(I) )  ?  I010(I):I030(I);
		ICNT2   = ( I020(I)>I040(I) )  ?  I020(I):I040(I);
		ICNT1   = fabs(ICNT1);
		ICNT2   = fabs(ICNT2);
		if ( ICNT1 <= 40  &&   ICNT2 <= 40 )
		{
			L010(I) = 0;
			SUB1( I010(I-1),I010(I+1),I010(I),I010(I-1) );
		}
	}
	printf("  ****  *** NO.2 **** \n");
	printf("  ========== NO 7 CHECK POINT ============ \n");
	for(K=10 ; K<=30 ; K++)
	{
		printf(" %ld ",I010(K));
		if(K==20)
		{
			printf("\n");
		}
	}
	printf("\n");

	printf("  ========== NO 8 CHECK POINT ============ \n");
	for(K=10 ; K<=30 ; K++)
	{
		printf(" %ld ",I020(K));
		if(K==20)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=10 ; K<=30 ; K++)
	{
		printf(" %ld ",I030(K));
		if(K==20)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=10 ; K<=30 ; K++)
	{
		printf(" %ld ",I040(K));
		if(K==20)
		{
			printf("\n");
		}
	}
	printf("\n");

	IDNM1 = ( ((ICNT1<37)?ICNT1:37) > 10 )  ?  ((ICNT1<37) ? ICNT1:37) : 
	10;
	IDNM2 = ( ((ICNT2<37)?ICNT2:37) > 10 )  ?  ((ICNT2<37) ? ICNT2:37) : 
	10;
	SUB2( d010,d020,d030,d040,IDNM1,IDNM2 );

	printf("  ****  *** NO.3 **** \n");
	for(K=1 ; K<=20 ; K++)
	{
		printf(" %g ",R010(K));
		if(K==10)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=1 ; K<=20 ; K++)
	{
		printf(" %g ",R020(K));
		if(K==10)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=11 ; K<=30 ; K++)
	{
		printf(" %g ",R030(K));
		if(K==20)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=11 ; K<=30 ; K++)
	{
		printf(" %g ",R040(K));
		if(K==20)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=11 ; K<=30 ; K++)
	{
		printf(" %g ",D010(K));
		if(K==20)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=11 ; K<=30 ; K++)
	{
		printf(" %g ",D020(K));
		if(K==20)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=15 ; K<=35 ; K++)
	{
		printf(" %g ",D030(K));
		if(K==25)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=15 ; K<=35 ; K++)
	{
		printf(" %g ",D040(K));
		if(K==25)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(I=1 ; I<=IT5 ; I++)
	{
		for(J=2 ; J<=IT5 ; J++)
		{
			D110(I,J) = D120(I+1,J) * D130(I,J+2);
			D120(J,I) = D110(I+IT5,J) * D130(I,J+1);
			D130(I,J) = D120(I,J) - D110(J,I);
		}
	}

	printf("  ****  *** NO.4 **** \n");
	for(J=2 ; J<=15 ; J++)
	{
		for(I=1 ; I<=20 ; I++)
		{
			printf(" %g ",D110(I,J));
			if(I==10 || I==20)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(J=1 ; J<=20 ; J++)
	{
		for(I=2 ; I<=20 ; I++)
		{
			printf(" %g  ",D120(I,J));
			if(I==11 || I==20)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(J=2 ; J<=15 ; J++)
	{
		for(I=1 ; I<=20 ; I++)
		{
			printf(" %g ",D130(I,J));
			if(I==10 || I==20)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	exit (0);
}
int SUB2(d010,d020,d030,d040,IDNM1,IDNM2)
double d010[],d020[],d030[],d040[];
long int IDNM1,IDNM2;
{
	long int  I,J,K;


	for(K=1 ; K<=40 ; K++)
	{
		R010(K) = 2.;
		R020(K) = 3.;
		R030(K) = 4.;
		R040(K) = 5.;
	}


	for(I=2 ; I<=IDNM1 ; I++)
	{
		D010(I)   = (double)( R020(I) - R040(I) );
		D030(I)   = (double)( fabs(R010(I) + R030(I)) );
		R010(I-1) = sqrt( fabs (D010(I-1) + D030(I-1)) );
	}


	for(J=2 ; J<=IDNM2 ; J+=2)
	{
		D020(J)   = (double)( R010(J) - R030(J) );
		D040(J)   = (double)( R020(J+1) - R040(J-1) );
		R010(J-1) = R010(J) + R020(J) + R030(J);
		R020(2)   = R020(2) + R040(J+1);
	}
	return 0;
}
int SUB1(ID10,ID20,ID30,ID40)
long int  ID10,ID20,ID30,ID40;
{

	ID10 = ID20 + ID30;
	ID30 = ID20 + ID40;
	ID20 = (ID10>ID30) ? ID10:ID30;
	ID40 = (ID10<ID30) ? ID10:ID30;
	return 0;
}
