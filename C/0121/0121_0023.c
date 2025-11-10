#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DCOM01(i) dcom01[i-1]
#define DCOM02(i) dcom02[i-1]
#define DCOM03(i) dcom03[i-1]
#define DIM01(i) dim01[i-1]
#define DIM02(i) dim02[i-1]
#define DIM03(i) dim03[i-1]
#define DIM04(i) dim04[i-1]
#define DIM10(i,j) dim10[i-1][j-1]
#define DIM20(i,j) dim20[i-1][j-1]
#define DIM30(i,j) dim30[i-1][j-1]
#define CD010(i) cd010[i-1]
#define CD020(i) cd020[i-1]
#define CD030(i) cd030[i-1]
#define LD010(i) ld010[i-1]
#define LD020(i) ld020[i-1]
#define LD030(i) ld030[i-1]
#define ID010(i) id010[i+20]
#define ID020(i) id020[i+20]
#define ID030(i) id030[i+20]
#define ID040(i) id040[i+20]
COMPLEX16   cd010[40],cd020[40],cd030[40];
unsigned long int   ld010[40],ld020[40],ld030[40];

long int   id010[42],id020[42],id030[42],id040[42];
double   dcom01[40],dcom02[40],dcom03[40];
double   dim01[40],dim02[40],dim03[40],dim04[40];
double   dim10[40][40],dim20[40][40],dim30[40][40];
int main()
{
	unsigned long int  F=0,T=1;
	long int   IT1=1;
	long int   IT2=2;
	long int   IT3=3;
	long int   IT4=10;
	long int   IT5=20;
	long int   IT6=40;
	long int   i,j,J,I,K,INV,INV1,INV2,INV3,ICNT;


	for(i=0 ; i<40 ; i++)
	{
		dim01[i] = 2.0;
	}
	for(i=0 ; i<40 ; i++)
	{
		dim02[i] = 3.0;
	}
	for(i=0 ; i<40 ; i++)
	{
		dim03[i] = 4.0;
	}
	for(j=0 ; j<40 ; j++)
	{
		for(i=0 ; i<40 ; i++)
		{
			dim10[i][j] = 2.0;
		}
	}
	for(j=0 ; j<40 ; j++)
	{
		for(i=0 ; i<40 ; i++)
		{
			dim20[i][j] = 2.0;
		}
	}
	for(i=0 ; i< 41 ; i++)
	{
		id010[i] = 1;
	}
	for(i=0 ; i< 41 ; i++)
	{
		id020[i] = 2;
	}
	for(i=0 ; i< 41 ; i++)
	{
		id030[i] = 3;
	}
	for(i=0 ; i< 41 ; i++)
	{
		id040[i] = 4;
	}

	for(I=1 ; I<=40 ; I++)
	{
		DCOM01(I) = 1.0;
		DCOM02(I) = 2.0;
		DCOM03(I) = 3.0;
		CD010(I).dreal = 2.0;
		CD010(I).dimag = 4.0;
		CD020(I).dreal = 4.0;
		CD020(I).dimag = 3.0;
		CD030(I).dreal = 1.0;
		CD030(I).dimag = 2.0;
		LD010(I) = F;
		LD020(I) = F;
		LD030(I) = LD010(I);
	}

	for(J=-20 ; J<=20 ; J++)
	{
		ID010(J) = J + 21;
		ID020(J) = 21 - J;
		ID030(J) = J + 21;
	}
	for(I=2 ; I<=19 ; I+=IT2)
	{
		DIM01(I+IT2*2)     = DIM02(I*2+IT2) * (DIM03(I+IT2)-DIM04(I+5));
		CD010(I+2).dreal   = CD020(IT6).dreal + pow(CD030(I+2).dreal,2);
		CD010(I+2).dimag   = CD020(IT6).dimag + pow(CD030(I+2).dimag,2);
		DIM10(I,I+2)       = DIM20(IT1,I) - DIM30(I,IT3+1);
		DIM02(I+1)         = DIM01(I) + DIM03(I+IT2*2) - DIM04(IT2+1);
		CD020(IT6-I).dreal = CD010(I+2+IT2).dreal - 2.0 + CD030(I+20).dreal;
		CD020(IT6-I).dimag = CD010(I+2+IT2).dimag - 1.0 + CD030(I+20).dimag;
		INV                = I + IT2;
		DIM03(INV-1)       = DIM01(INV) * DIM04(I);
		DIM20(I,IT1)       = DIM30(I,IT3) * DIM10(2*I-1,I);
		DIM30(IT3,I)       = DIM20(1,IT1) * 2.0 + CD010(I).dimag;
	}
	printf("  ****  *** NO.1 **** \n");
	printf("    ** RESULT OF DIM01,DIM02,DIM03 ** \n");
	for(K=3 ; K<=21 ; K++)
	{
		printf(" DIM01= %g ",DIM01(K+3));
		printf(" DIM02= %g ",DIM02(K));
		printf(" DIM03= %g \n",DIM03(K));
	}

	printf("    ** RESULT OF DIM10,DIM20,DIM30 ** \n");
	for(K=2 ; K<=20 ; K++)
	{
		printf(" DIM10= %g ",DIM10(K,K));
		printf(" DIM20= %g ",DIM20(K,1));
		printf(" DIM30= %g \n",DIM30(3,K));
	}


	printf("    ** RESULT OF CD010,CD020 ** \n");
	for(K=4 ; K<=22 ; K++)
	{
		printf(" CD010= (%g,%g) \n",CD010(K).dreal,CD010(K).dimag);
	}

	for(K=20 ; K<=40 ; K++)
	{
		printf(" CD020= (%g,%g) \n",CD020(K).dreal,CD010(K).dimag);
	}


	for(I=11 ; I<=20 ; I++)
	{
		for(J=35 ; J>=IT5 ; J-=1)
		{
			DIM04(J-2-IT1)=(((double)sin(DIM01(J-IT5+1)-DIM02(IT2))) > 0.0)?
			    (double)(int)((double) sin(DIM01(J-IT5+1)-DIM02(IT2))+0.5):
			    (double)(int)((double) sin(DIM01(J-IT5+1)-DIM02(IT2))-0.5);
			DIM03(J+IT2)   = DIM01(J+00-IT1-IT2);
			DIM02(1)       = DIM02(1) + DIM03(J-IT5+IT2) + CD030(J-10).dreal;
			DIM10(J-1,I)   = DIM20(I*2,J-10) - DIM30(I,J+IT2);
			DIM30(J,I-1)   = DIM20(I-3,I*2-IT5) * DIM10(I-3,J-1);
			DIM20(J,I*2)   = DIM10(J+1,I+1) - DIM30(I+1,J-3);
		}
	}

	printf("  ****  *** NO.2 **** \n");
	for(K=1 ; K<=2 ; K++)
	{
		printf(" DIM02= %g ",DIM02(K));
	}
	printf("\n");

	for(K=32 ; K>=17 ; K--)
	{
		printf(" DIM03= %g ",DIM03(K+5));
		printf(" DIM04= %g \n",DIM04(K));
	}

	for(J=10 ; J<=19 ; J+=5)
	{
		for(I=19 ; I<=34 ; I++)
		{
			printf(" DIM10= %g  %g ",DIM10(I,J),DIM10(I,J+1));
			printf(" %g  %g ",DIM10(I,J),DIM10(I,J+3));
			printf(" %g \n",DIM10(I,J+J+4));
		}
	}

	for(J=20 ; J<=36 ; J+=4)
	{
		for(I=20 ; I<=35 ; I++)
		{
			printf(" DIM20= %g ",DIM20(I,J));
			printf(" %g  ",DIM20(I,J+1));
			printf(" %g  ",DIM20(I,J+2));
			printf(" %g \n",DIM20(I,J+3));
		}
	}

	for(J=9 ; J<=19 ; J+=2)
	{
		for(I=20 ; I<=35 ; I++)
		{
			printf(" DIM0= %g ",DIM30(I,J));
			printf(" %g \n",DIM30(I,J+1));
		}
	}


	INV1 = 1;
	INV2 = 41;
	INV3 = 31;

	for(I=9 ; I>=-9 ; I-=1)
	{
		if (I == 0)
		{
			LD010(INV1) = 1 ^ LD010(INV1);
			goto LBL_45;
		}
LBL_46:
		;
		ID010(I) = ID020(I) + ID030(I);
		J = I + 2;
		ID020(J)    = ID010(J+1) * ID030(I*2+1);
		ID030(2*I)  = ID010(J) + ID020(-10);
		INV2 = INV2 - 1;
		CD020(INV2).dreal = CD010(INV3).dreal + CD030(INV1).dreal;
		CD020(INV2).dimag = CD010(INV3).dimag + CD030(INV1).dimag;
		INV3 = INV3 - 1;
		CD010(INV3).dreal = CD020(INV2-1).dreal * CD030(INV1).dreal
		    - CD020(INV2-1).dimag * CD030(INV1).dimag;
		CD010(INV3).dimag = CD020(INV2-1).dreal * CD030(INV1).dimag
		    + CD020(INV2-1).dimag * CD030(INV1).dreal;
		CD030(INV1).dreal = CD010(INV3+1).dreal - CD020(INV2).dreal;
		CD030(INV1).dimag = CD010(INV3+1).dimag - CD020(INV2).dimag;
		DIM01(INV1)       = (CD010(INV3).dreal > CD030(INV1).dimag)
		    ? CD010(INV3).dreal : CD030(INV1).dimag;
		DIM02(INV2)       = ( (double)(ID020(J)) > (double)(ID030(I)) )
		    ? (double)(ID020(J)):(double)(ID030(I));

		if ( DIM01(INV1)  >=  DIM02(INV2) )
		{
			LD020(INV1) = T;
		}
		else
		{
			LD030(INV1) = T;
		}
		INV1 = INV1+1;
		goto LBL_40;
LBL_45:
		;
		ID010(I) = ( fabs(ID020(I)) < fabs(ID030(I-10)) )
		    ? fabs(ID020(I)) : fabs(ID030(I-10));
		goto LBL_46;
LBL_40:
		;
	}


	printf("  ****  *** NO.3 *** \n");
	printf("    ** RESULT OF I*4 DATA ** \n");
	for(K=-10; K<=10 ; K++)
	{
		printf(" ID010= %ld ",ID010(K));
		printf(" ID020= %ld \n",ID020(K));
	}
	for(K=-20; K<=20 ; K+=4)
	{
		printf(" ID30= %ld ",ID030(K));
		printf(" %ld \n",ID030(K+1));
	}


	printf("    ** RESULT OF R*8 DATA ** \n");
	for(K=1 ; K<=21 ; K++)
	{
		printf(" DIM01= %g ",DIM01(K));
		printf(" DIM02= %g \n",DIM02(K+19));
	}


	printf("    ** RESULT OF C*16 DATA ** \n");
	for(K=10 ; K<=20 ; K++)
	{
		printf(" CD010= (%g,%g) ",CD010(K).dreal,CD010(K).dimag);
		printf("(%g,%g) \n",CD010(K+10).dreal,CD010(K+10).dimag);
	}

	for(K=20 ; K<=30 ; K++)
	{
		printf(" CD020= (%g,%g) ",CD020(K).dreal,CD020(K).dimag);
		printf("(%g,%g) \n",CD020(K+10).dreal,CD020(K+10).dimag);
	}

	for(K=1 ; K<=10 ; K++)
	{
		printf(" CD030= (%g,%g) ",CD030(K).dreal,CD030(K).dimag);
		printf("(%g,%g) \n",CD030(K+10).dreal,CD030(K+10).dimag);
	}

	printf("    ** RESULT OF L*4 DATA ** \n");
	for(i=1 ; i<=20 ; i++)
	{
		printf("LD010(i)= %lu ",LD010(i));
		printf("LD010(i)= %lu ",LD010(i+20));
		printf("LD020(i)= %lu ",LD020(i));
		printf("LD020(i)= %lu ",LD020(i+20));
		printf("LD030(i)= %lu ",LD030(i));
		printf("LD030(i)= %lu \n",LD030(i+20));
	}


	INV1 = 0;
	INV2 = 0;
	ICNT = 0;
	J = 1;


	for(I=-15 ; I<=10 ; I++)
	{
		if ( LD010(J) &&  LD020(J)  || ! LD030(J) ==1)
		{
			INV1 = I;
			if (INV1 <= 10 ) ICNT = -1;
			if (INV1 >  10  &&   INV1 <= 20) ICNT = 0;
			if (INV1 >  21  &&   INV1 <= 30) ICNT = 1;
			if (INV1 >  31)goto LBL_54;
		}
		if ( ICNT <  0 ) goto LBL_51;
		if ( ICNT == 0 ) goto LBL_52;
		if ( ICNT >  0 ) goto LBL_53;

LBL_56:
		;
		ID020(I) = ID010(I-1) + ID030(I) + ID040(I);
		goto LBL_55;
LBL_51:
		;
		ID010(I) = ((ID040(I)>ID030(I))
		    ? ID040(I):ID030(I)) + ID020(I-1);
		goto LBL_55;
LBL_52:
		;
		ID030(I) = ((ID010(I)<ID040(I))
		    ? ID010(I):ID040(I)) * ID020(I);
		goto LBL_55;
LBL_53:
		;
		ID040(I) = ( ID010(I) > ((ID020(I)<ID030(I))?ID020(I):ID030(I)) )
		    ?   ID010(I) : ((ID020(I)<ID030(I))?ID020(I):ID030(I));
		goto LBL_55;
LBL_54:
		;
		ID010(I) = ID020(I+1) + (ID030(I)-2) * ID040(I-1);
		goto LBL_56;
LBL_55:
		;
		J = J + 1;
		LD020(J)   = LD010(J)  &&  1 ^ LD030(J);
		LD030(J-1) = LD010(J-1) || LD020(J);
LBL_50:
		;
	}

	printf("  ****  *** NO.4 **** \n");
	for(K=-20 ; K<=10 ; K++)
	{
		printf("ID010= %ld ",ID010(K));
		printf("ID020= %ld ",ID020(K));
		printf("ID030= %ld ",ID030(K));
		printf("ID040= %ld \n",ID040(K));
	}
	for(i=1 ; i<=20 ; i++)
	{
		printf(" ** LD020(i) ** %lu ",LD020(i));
		printf(" ** LD020(i) ** %lu ",LD020(i+20));
		printf(" ** LD030(i) ** %lu ",LD030(i));
		printf(" ** LD030(i) ** %lu \n",LD030(i+20));
	}

	exit (0);
}
