#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define ID10(i,j) id10[i-1][j-1]
#define ID20(i,j) id20[i-1][j-1]
#define ID30(i,j) id30[i-1][j-1]
#define ID40(i,j) id40[i-1][j-1]
#define DA10(i) da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define DA40(i) da40[i-1]
#define DA50(i) da50[i-1]
#define DB10(i,j) db10[i-1][j-1]
#define DB20(i,j) db20[i-1][j-1]
#define DB30(i,j) db30[i-1][j-1]
#define CD10(i) cd10[i-1]
#define CD20(i) cd20[i-1]
long int id10[50][50],id20[50][50],id30[50][50],id40[50][50];
double da10[100],da20[100],da30[100],da40[100],da50[100],
db10[50][50],db20[50][50],db30[50][50];
COMPLEX16 cd10[100],cd20[100];
int main()
{
	long int i,j,INV1,INV2,IT1,IT2,I,J,K,IT3,IP1,IP2;
	double DVAL1,DVAL2;

	for(j=0 ; j<50 ;j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			id10[i][j]=1;
		}
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			id20[i][j]=2;
		}
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			id30[i][j]=3;
		}
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			id40[i][j]=4;
		}
	}
	for(i=0 ; i<100 ; i++)
	{
		da10[i]=1.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		da20[i]=2.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		da30[i]=3.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		da40[i]=4.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		da50[i]=5.0;
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			db10[i][j]=2.0;
		}
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			db20[i][j]=4.0;
		}
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			db30[i][j]=6.0;
		}
	}
	for(i=0 ; i<100 ; i++)
	{
		cd10[i].dreal=1.0;
		cd10[i].dimag=2.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		cd20[i].dreal=2.0;
		cd20[i].dimag=4.0;
	}

	INV1=1;
	INV2=50;
	IT1=10;
	IT2=50;
	for(I=3 ; I<=50 ; I++)
	{
		DA10(INV1*2)  = DA20(INV2+1) + DA30(I+IT2);
		DA20(INV2+IT1)= DA40(INV2*2-1) * DA50(I+I) / 5.0;
		for(J=5 ; J<=25 ; J++)
		{
			DB10(I,J*2)  = DB20(IT2,J) + DB30(INV1,J);
			DB20(J,I)    = DB10(INV2,J*2-1) * 2.0 + DB30(J,INV1+1);
			DB30(INV1,J) = (double)(int)(0.5+sqrt(DB10(INV2,J)));
LBL_20:
			;
		}
		DA30(I+IT1) = DA10(INV1) - DA20(INV2+IT2);
		for(K=40 ; K>=10 ; K-=2)
		{
			ID10(K,INV1) = ID20(INV2,K+2) + ID30(K,5);
			ID20(IT2,K)  = ID30(K,IT1) * 4 - ID40(K,K+IT1);
			ID30(4,K)    = ID10(K-2,INV1+1) + ID20(IT1,K+1);
LBL_30:
			;
		}
		DA50(I*2-1) = DA30(I+2) + (double)(int)(0.5+DA10(INV1*2-1));
		INV1        = INV1+1;
		INV2        = INV2-1;
LBL_10:
		;
	}

	printf("  ****  *** NO.1 **** \n");
	for(K=2 ; K<=100 ; K+=2)
	{
		printf(" %g ",DA10(K));
		if(K==52)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=50 ; K>=1 ; K--)
	{
		printf(" %g ",DA20(K));
		if(K==25)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=5 ; K<=100 ; K+=2)
	{
		printf(" %g ",DA50(K));
		if(K==53)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(J=1 ; J<=50 ; J++)
	{
		for(I=40 ; I>=10 ; I-=2)
		{
			printf(" %ld ",ID10(I,J));
			if(I==10)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(J=1 ; J<=50 ; J++)
	{
		printf(" %ld ",ID20(50,J));
		if(J==25)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(J=1 ; J<=50 ; J++)
	{
		printf(" %ld ",ID30(4,J));
		if(J==25)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(J=10 ; J<=50 ; J+=2)
	{
		for(I=3 ; I<=50 ; I++)
		{
			printf(" %g ",DB10(I,J));
			if(J==26 || J==50)
			{
				printf("\n");
			}
		}
		printf("\n");
	}
	printf("\n");

	for(J=3 ; J<=50 ; J++)
	{
		for(I=5 ; I<=25 ; I++)
		{
			printf(" %g ",DB20(I,J));
			if(I==25)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(J=5 ; J<=25 ; J++)
	{
		for(I=1 ; I<=50 ; I++)
		{
			printf(" %g ",DB30(I,J));
			if(I==25 || I==50)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	IT1 = 2;
	IT2 = 4;
	IT3 = 10;
	INV1= 99;
	INV2= 3;
	for(I=5 ; I<=IT3*4 ; I++)
	{
		DA30(INV1)       = DA10(I+IT1+IT2) + DA40(INV2+IT3*2);
		DA40(INV2+IT2)   = DA20(I+INV2) * DA50(I+40);
		DVAL1      = sqrt(fabs( DA40(INV2+2)+DA30(I+IT2) ));
		DVAL2      = fabs( DA10(I-IT2)-DA30(INV1) );
		DVAL1      = (double)(int)(0.5+DVAL1);
		CD10(INV1).dreal = (double)(DVAL1);
		CD10(INV1).dimag = (double)(DVAL2);
		for(J=IT2 ; J<=45 ; J++)
		{
			IP1=ID10(I,J);
			IP2=ID20(J,I);
			if ( IP1 <=  50   &&   IP2 <= 50 )
			{
				ID30(IP1,J) = ID40(IP2,J+IT1) + fabs(ID10(I,J)-IP2);
				ID40(IP1,J) = ID30(IP2,J-IT1) + fabs(ID20(J,I)-IP1);
			}
			ID10(J,I) = ID10(I,J) + IP1;
			ID20(I,J) = ID20(I,J) + IP2;
LBL_50:
			;
		}
		if ( DVAL1  >   DVAL2 )
		{
			CD20(I).dreal = CD10(INV1).dreal + (double)(DVAL1);
			CD20(I).dimag = CD10(INV1).dimag + (double)(DVAL2);
		}
		else
		{
			CD20(I).dreal = CD10(INV1).dreal + (double)(DVAL2);
			CD20(I).dimag = CD10(INV1).dimag + (double)(DVAL1);
		}
		DA20(INV2+I) = DA30(INV1+1) - DA40(INV2+IT1);
		DA50(I)      = DA30(INV1-IT2) + DA40(INV2+IT3);
		INV1 = INV1-1;
		INV2 = INV2+1;
LBL_40:
		;
	}

	printf("  ****  *** NO.2 **** \n");
	for(K=8 ; K<=80 ; K++)
	{
		printf(" %g ",DA20(K));
		if(K==32 || K==56 )
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=99 ; K>=60 ; K--)
	{
		printf(" %g ",DA30(K));
		if(K==79)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=7 ; K<=50 ; K++)
	{
		printf(" %g ",DA40(K));
		if(K==29)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=99 ; K>=63 ; K--)
	{
		printf(" (%g,%g) ",CD10(K).dreal,CD10(K).dimag);
		if(K==81)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=5 ; K<=40 ; K++)
	{
		printf(" (%g,%g) ",CD20(K).dreal,CD20(K).dimag);
		if(K==22)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(J=5 ; J<=40 ; J++)
	{
		for(I=4 ; I<=45 ; I++)
		{
			printf(" %ld ",ID10(I,J));
			if(I==24 || I==45)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(J=4 ; J<=45 ; J++)
	{
		for(I=5 ; I<=40 ; I++)
		{
			printf(" %ld ",ID20(I,J));
			if(I==22 || I==40)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(J=4 ; J<=45 ; J++)
	{
		for(I=1 ; I<=50 ; I++)
		{
			printf(" %ld ",ID30(I,J));
			if(I==25 || I==50)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(J=4 ; J<=45 ; J++)
	{
		for(I=1 ; I<=50 ; I++)
		{
			printf(" %ld ",ID40(I,J));
			if(I==25 || I==50)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	exit (0);
}
