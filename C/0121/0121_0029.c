#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define DA40(i) da40[i-1]
#define DB10(i,j) db10[i-1][j-1]
#define DB20(i,j) db20[i-1][j-1]
#define DB30(i,j) db30[i-1][j-1]
#define DB40(i,j) db40[i-1][j-1]
#define ID10(i) id10[i-1]
#define ID20(i) id20[i-1]
#define ID30(i) id30[i-1]
#define ID40(i) id40[i-1]
#define ID50(i,j) id50[i-1][j-1]
#define ID60(i,j) id60[i-1][j-1]
#define ID70(i) id70[i-1]
#define LD10(i) ld10[i-1]
#define LD20(i) ld20[i-1]
#define LD30(i,j) ld30[i-1][j-1]
unsigned long int ld10[100],ld20[100],ld30[50][50];
double da10[100],da20[100],da30[100],da40[100],db10[50][50],
db20[50][50],db30[50][50],db40[50][50];
long int id10[100],id20[100],id30[100],id40[100],id50[50][50],
id60[50][50],id70[101];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=3;
	long int IT4=5;
	long int IT5=10;
	long int IT6=20;
	long int IT7=40;
	long int i,j,K,IVAL1,IVAL2,I,INV1,INV2,INDX,J,IVAL;

	for(i=0 ; i<100 ; i++)
	{
		da10[i]=2.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		da20[i]=3.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		da30[i]=5.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		da40[i]=4.0;
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			db10[i][j]=1.0;
		}
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			db20[i][j]=2.0;
		}
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			db30[i][j]=3.0;
		}
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			db40[i][j]=5.0;
		}
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			id50[i][j]=2;
		}
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			id60[i][j]=4;
		}
	}
	for(i=0 ; i<=100 ; i++)
	{
		id70[i]=8;
	}
	for(i=0 ; i<100 ; i++)
	{
		ld10[i]=0;
	}
	for(i=0 ; i<100 ; i++)
	{
		ld20[i]=0;
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			ld30[i][j]=0;
		}
	}

	IT4   =IT4+1;
	IVAL1 =100;
	IVAL2 =1;
	for(I=1 ; I<=100 ; I++)
	{
		ID10(I) = I;
		ID20(I) = IVAL2;
		ID30(I) = IVAL1;
		ID40(I) = I+IVAL2;
		IVAL1   = IVAL1-1;
		IVAL2   = IVAL2+2;
		if ( IVAL2 > 100 )
		{
			IVAL2 = 2;
		}
		if (I <= 50)
		{
			LD20(I*2) = 1;
		}
	}

	INV1 = 1;
	INV2 = 100;
	for(I=1 ; I<=IT6+IT5*2 ; I++)
	{
		DA10(I)      = DA20(INV2) + DA30(INV1) + DA40(I*2);
		ID40(I)      = ID40(I) * 2 + ID30(I*2-1) - ID10(I);
		DA30(INV1)   = DA10(I+IT2) - DB40(I,I+1);
		DA20(INV2-1) = DA30(INV1+1) * 2.0 - DA40(I+5);
		if ( LD20(I) ==1)
		{
			ID30(I*2) = ID10(I+1) * ID20(INV2-1);
			ID40(I+2) = ID20(INV2) + ID30(I);
		}
		else if(ID30(I)>ID40(I))
		{
			LD10(I) = 1;
			DA30(INV1*2) = DA20(INV2-1) * DA40(I);
		}
		ID20(INV2) = ID10(I*2) - ID40(I) + ID70(-I+100);
		INV1       = INV1+1;
		INV2       = INV2-2;
	}

	printf("  ****  *** NO.1 **** \n");
	for(K=1 ; K<=50 ; K++)
	{
		printf(" %g ",DA10(K));
		if(K==25)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=1 ; K<=100 ; K+=2)
	{
		printf(" %g ",DA30(K));
		if(K==51)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=100 ; K>=50 ; K--)
	{
		printf(" %g ",DA20(K));
		if(K==80 || K==60)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=100 ; K>=51 ; K--)
	{
		printf(" %ld ",ID20(K));
		if(K==76)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=2 ; K<=100 ; K+=2)
	{
		printf(" %ld ",ID30(K));
		if(K==52)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=3 ; K<=53 ; K++)
	{
		printf(" %ld ",ID40(K));
		if(K==22 || K==41)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=1 ; K<=50 ; K++)
	{
		printf(" %ld ",LD10(K));
		if(K==25)
		{
			printf("\n");
		}
	}
	printf("\n");

	IVAL1 = 0;
	INDX  = 0;
	for(I=2 ; I<=30 ; I++)
	{
		DA40(I*2)     = DA10(ID10(I)) + DA20(ID10(I+1)) - DA30(I+IT7);
		DA10(ID10(I)) = DA30(I) - DB20(I,I+1) + DB20(I+1,I);
		if ( LD10(I)  || ! LD20(101-I) ==1)
		{
			for(J=IT6 ; J>=3 ; J-=1)
			{
				DB30(I,J*2)     = DB10(51-I,51-J) + DB20(I,J);
				DB10(51-I,50-J) = DB40(I,J+IT6) * DB20(I,J);
				DB40(I,J)       = DB10(J+1,I) - DB30(J*2-1,I+1);
			}
		}
		LD20(I)       = 1^(LD20(I));
		DA20(ID10(I)) = DA40(I*2+11) * 2.0;
	}

	printf("  ****  *** NO.2 *** \n");
	for(K=2 ; K<=30 ; K++)
	{
		printf(" %g ",DA10(K));
		if(K==16)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=2 ; K<=30 ; K++)
	{
		printf(" %g ",DA20(K));
		if(K==16)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=4 ; K<=60 ; K+=2)
	{
		printf(" %g ",DA40(K));
		if(K==34)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=2 ; K<=30 ; K++)
	{
		printf(" %lu ",LD20(K));
		if(K==16)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(J=30 ; J<=47 ; J++)
	{
		for(I=49 ; I>=21 ; I--)
		{
			printf("%g,",DB10(I,J));
			if(I==35 || I==21)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(J=40 ; J>=6 ; J-=2)
	{
		for(I=2 ; I<=30 ; I++)
		{
			printf(" %g ",DB30(I,J));
			if(I==16 || I==30)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(J=20 ; J>=3 ; J--)
	{
		for(I=2 ; I<=30 ; I++)
		{
			printf(" %g ",DB40(I,J));
			if(I==16 || I==30)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(I=3 ; I<=IT6 ; I++)
	{
		ID70(1-I+100)   = ID70(-I+100) * ID10(I+IT2) - ID30(I+IT1+IT3);
		ID30(I+IT2)     = ID70(-IT6-I+100) - ID20(I+IT6);
		for(J=3 ; J<=IT5*2 ; J++)
		{
			ID50(I+IT1,J) = ID60(I+IT1,J+IT2) * 2 - ID50(J+1,I+IT3);
			ID60(J,I)     = ID50(I+1,J-IT1) * ID40(J+IT5);
		}
		ID20(I) = ID70(-I+100) + ID30(I+IT3) * 2;
	}

	printf("  ****  *** NO.3 *** \n");
	for(K=3 ; K<=20 ; K++)
	{
		printf(" %ld ",ID20(K));
	}
	printf("\n");

	for(K=5 ; K<=22 ; K++)
	{
		printf(" %ld ",ID30(K));
	}
	printf("\n");

	for(J=3 ; J<=20 ; J++)
	{
		for(I=6 ; I<=23 ; I++)
		{
			printf(" %ld ",ID50(I,J));
			if(I==23)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(J=6 ; J<=23 ; J++)
	{
		for(I=3 ; I<=20 ; I++)
		{
			printf(" %ld ",ID60(I,J));
			if(I==20)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(K=-2 ; K>=-19 ; K--)
	{
		printf(" %ld ",ID70(K+100));
	}
	printf("\n");

	IVAL1 = 0;
	IVAL2 = 0;
	INDX  = 0;
	for(I=1 ; I<=50 ; I++)
	{
		IVAL = (ID20(I)>ID30(I)) ? ID20(I):ID30(I);
		IVAL = (IVAL>ID40(I)) ? IVAL:ID40(I);
		if ( ID10(I)  >=  IVAL )
		{
			IVAL1 = (IVAL1 > IVAL) ? IVAL1:IVAL;
		}
		else
		{
			IVAL1   = (IVAL1 > ID10(I)) ? IVAL1:ID10(I);
			LD10(I) = 1;
		}
		for(J=1;J<=50;J++)
		{
			ID50(I,J) = (ID60(I,J)>ID50(I,J)) ? ID60(I,J):ID50(I,J);
			if (ID50(I,J) >= IVAL2 )
			{
				IVAL2 = ID50(I,J);
				INDX  = J;
				LD30(I,J) = 1;
			}
		}
		printf("  ****  *** NO.4 *** \n");
		printf("  ** IVAL2 = %ld ** INDX = %ld **  \n",IVAL2,INDX);
	}

	printf("  ****  *** NO.5 **** \n");
	printf("  ** IVAL1 =  %ld \n",IVAL1);
	exit (0);
}
