#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define DA40(i) da40[i-1]
#define ID10(i) id10[i-1]
#define ID20(i) id20[i-1]
#define ID30(i) id30[i-1]
#define ID40(i) id40[i-1]
#define RD10(i,j) rd10[i-1][j-1]
#define RD20(i,j) rd20[i-1][j-1]
#define RD30(i,j) rd30[i-1][j-1]
#define RD40(i,j) rd40[i-1][j-1]
double da10[100],da20[100],da30[100],da40[100];
long int id10[100],id20[100],id30[100],id40[100];
float rd10[50][50],rd20[50][50],rd30[50][50],rd40[50][50];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=3;
	long int IT4=5;
	long int IT6=10;
	long int IT7=20;
	long int IT8=50;
	long int i,j,I,J,K;

	for(i=0 ; i<100 ; i++)
	{
		da10[i]=2.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		da20[i]=4.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		da30[i]=8.0;
	}
	for(i=0 ; i<50 ; i++)
	{
		da40[i]=1.0;
		da40[i+50]=10.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		id10[i]=1;
	}
	for(i=0 ; i<100 ; i++)
	{
		id20[i]=2;
	}
	for(i=0 ; i<100 ; i++)
	{
		id30[i]=3;
	}
	for(i=0 ; i<100 ; i++)
	{
		id40[i]=4;
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			rd10[i][j]=2.0;
		}
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			rd20[i][j]=4.0;
		}
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			rd30[i][j]=6.0;
		}
	}
	for(j=0 ; j<20 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			rd40[i][j]=10.0;
			rd40[i][j+20]=12.0;
		}
	}
	for(j=40 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			rd40[i][j]=24.0;
		}
	}

	for(I=IT3 ; I<=IT3*10 ; I++)
	{
		DA10(I+IT2+1) = DA30(I+IT8) / DA20(I*2+IT6) * 2.0;
		DA40(I-1+IT3) = pow( DA20(I+IT4+IT2),2 ) - DA30(I+IT6);
		DA30(I+IT3)   = DA10(I-IT2) - DA40(I+1);
		DA20(I+2)     = DA40(I+1) + DA10(I);
	}

	printf("  ****  *** NO.1 *** \n");
	printf("(DA10)  \n");
	for(K=6 ; K<=19 ; K++)
	{
		printf(" %g ",DA10(K));
	}
	printf("\n");

	for(K=20 ; K<=33 ; K++)
	{
		printf(" %g ",DA10(K));
	}
	printf("\n");

	printf("(DA20)  \n");
	for(K=10 ; K<=23 ; K++)
	{
		printf(" %g ",DA20(K));
	}
	printf("\n");

	for(K=24 ; K<=37 ; K++)
	{
		printf(" %g ",DA20(K));
	}
	printf("\n");

	printf("(DA30)  \n");
	for(K=13 ; K<=26 ; K++)
	{
		printf(" %g ",DA30(K));
	}
	printf("\n");

	for(K=27 ; K<=40 ; K++)
	{
		printf(" %g ",DA30(K));
	}
	printf("\n");

	printf("(DA40)  \n");
	for(K=7 ; K<=20 ; K++)
	{
		printf(" %g ",DA40(K));
	}
	printf("\n");

	for(K=21 ; K<=34 ; K++)
	{
		printf(" %g ",DA40(K));
	}
	printf("\n");

	for(J=IT8 ; J>=IT4 ; J-=IT2)
	{
		ID20(J*2)   =((ID10(J+IT2) > ID30(J+1)) ? ID10(J+IT2):ID30(J+1))
		    * ID40(J+IT3*2);
		ID30(J+IT8) = ID10(J+IT4+IT2) + ID40(IT4+J-1) * 2;
		ID40(J+IT2) = ID10(J+5) + (int)(0.5+DA10(J));
		ID10(J+IT7) = ID20(J*2-IT2) - ID30(J+IT3);
	}

	printf("  ****  *** NO.2 *** \n");
	printf("(ID10)  \n");
	for(K=25 ; K<=70 ; K+=2)
	{
		printf(" %ld ",ID10(K));
		if(K==47)
		{
			printf("\n");
		}
	}
	printf("\n");

	i=0;
	printf("(ID20)  \n");
	for(K=10 ; K<=100 ; K+=2)
	{
		printf(" %ld ",ID20(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	printf("(ID30)  \n");
	i=0;
	for(K=100 ; K>=55 ; K-=2)
	{
		printf(" %ld ",ID30(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	printf("(ID40)  \n");
	for(K=54 ; K>=9 ; K-=2)
	{
		printf(" %ld ",ID40(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	for(I=IT8 ; I>=IT6 ; I-=IT1)
	{
		DA10(I+IT1) = DA30(I) - DA40(I+IT3);
		DA20(I+IT8) = DA10(I+IT3) + DA30(I+IT8);
		for(J=IT7 ; J>=IT3 ; J-=IT2)
		{
			RD10(I,J)   = RD20(J*2,I) + RD30(I-1,J*2+1);
			RD40(J,I)   = RD10(J,I) + RD20(J+IT7,I) / 2.0;
			RD20(J,I)   = RD30(I,J+IT2) - RD10(J+IT2,I-IT3);
			RD30(I,J*2) = RD20(I,J+IT2) * RD10(I,J+IT2);
LBL_35:
			;
		}
		DA30(I+IT6) = DA10(I+IT2) - DA20(I+1);
LBL_30:
		;
	}

	printf("  ****  *** NO.3 *** \n");
	i=0;
	printf("(DA10)  \n");
	for(K=51 ; K>=11 ; K--)
	{
		printf(" %g ",DA10(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	printf("(DA20)  \n");
	for(K=100 ; K>=60 ; K--)
	{
		printf(" %g ",DA20(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	printf("(DA30)  \n");
	for(K=60 ; K>=20 ; K--)
	{
		printf(" %g ",DA30(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	printf("(RD10)  \n");
	for(J=20 ; J>=3 ; J-=2)
	{
		for(I=50 ; I>=10 ; I--)
		{
			printf(" %g ",RD10(I,J));
			i++;
			if(i==10)
			{
				printf("\n");
				i=0;
			}
		}
	}
	printf("\n");

	i=0;
	printf("(RD20)  \n");
	for(J=50 ; J>=10 ; J--)
	{
		for(I=20 ; I>=3 ; I-=2)
		{
			printf(" %g ",RD20(I,J));
			i++;
			if(i==10)
			{
				printf("\n");
				i=0;
			}
		}
	}
	printf("\n");

	i=0;
	printf("(RD30)  \n");
	for(J=40 ; J>=6 ; J-=4)
	{
		for(I=50 ; I>=10 ; I--)
		{
			printf(" %g ",RD30(I,J));
			i++;
			if(i==10)
			{
				printf("\n");
				i=0;
			}
		}
	}
	printf("\n");

	i=0;
	printf("(RD40)  \n");
	for(J=50 ; J>=10 ; J--)
	{
		for(I=20 ; I>=3 ; I-=2)
		{
			printf(" %g ",RD40(I,J));
			i++;
			if(i==10)
			{
				printf("\n");
				i=0;
			}
		}
	}
	printf("\n");

	for(I=2 ; I<=10 ; I++)
	{
		ID10(I+I+IT1) = ID20(I*I) + ID30(I*I) - ID40(I+I+1);
		ID20(I*I)     = ID40(I*2) * ID10(I+IT1) - ID30(I*I-1);
		ID30(I*I-2)   = ID10(I+I) / ID20(I*I-1) + ID40(I+I+I);
		ID40(I)       = ID10(I) + ID20(I) + ID30(I);
LBL_40:
		;
	}

	printf("  ****  *** NO.4 *** \n");
	i=0;
	printf("(ID10)  \n");
	for(K=5 ; K<=21 ; K++)
	{
		printf(" %ld ",ID10(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	printf("(ID20)  \n");
	for(K=4 ; K<=100 ; K+=2)
	{
		printf(" %ld ",ID20(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	printf("(ID30)  \n");
	for(K=2 ; K<=98 ; K+=2)
	{
		printf(" %ld ",ID30(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	printf("(ID40)  \n");
	for(K=2 ; K<=10 ; K++)
	{
		printf(" %ld ",ID40(K));
	}
	printf("\n");

	for(I=IT3 ; I<=25 ; I++)
	{
		DA30(-I+IT8)   = DA20(I+3) + DA10(I*2);
		DA40(-IT3+I+1) = DA10(I*3+I) - DA20(I*2+IT3);
		DA10(-I+I*3)   = DA20(I+IT8) + DA30(IT7*2-I);
		DA20(100)      = DA20(100) + DA40(I);
LBL_50:
		;
	}

	printf("  ****  *** NO.5 *** \n");
	i=0;
	printf("(DA10)  \n");
	for(K=6 ; K<=50 ; K+=2)
	{
		printf(" %g ",DA10(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	printf("(DA20)  \n");
	for(K=99 ; K<=100 ; K++)
	{
		printf(" %g ",DA20(K));
	}
	printf("\n");

	i=0;
	printf("(DA30)  \n");
	for(K=25 ; K>=3 ; K--)
	{
		printf(" %g ",DA30(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	printf("(DA40)  \n");
	for(K=1 ; K<=23 ; K++)
	{
		printf(" %g ",DA40(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	exit (0);
}
