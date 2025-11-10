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
#define DC10(i,j,k) dc10[i-1][j-1][k-1]
#define IL10(i) il10[i-1]
#define IL20(i) il20[i-1]
#define IL30(i) il30[i-1]
#define IL40(i,j) il40[i-1][j-1]
#define IP1 5
#define IP2 20
#define IP3 50
#define IP4 2
#define IP5 3
long int il10[50],il20[50],il30[50],il40[50][50];
double da10[100],da20[100],da30[100],da40[100],db10[50][50],
db20[50][50],db30[50][50],dc10[30][30][30];
int main()
{
	short int HINV,HDOP;
	float RINV,RDOP;
	long int IT1=1 ;
	long int IT2=2 ;
	long int IT3=3 ;
	long int IT4=10;
	long int IT5=20;
	long int INV1,INV2,K,I,II,J;
	long int i,j,k,H,R,K1,K2,K3,K4;

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
	for(i=0 ; i<20 ; i++)
	{
		da40[i]   =4.0;
		da40[i+20]=5.0;
	}
	for(i=40 ; i<70 ; i++)
	{
		da40[i]   =6.0;
		da40[i+30]=8.0;
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			db10[i][j]=10.0;
		}
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			db20[i][j]=12.0;
		}
	}
	for(j=0 ; j<20 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			db30[i][j]=2.0;
		}
	}
	for(j=20 ; j<30 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			db30[i][j]       =4.0;
			db30[i][j+10] =8.0;
			db30[i][j+20] =16.0;
		}
	}
	for(k=0 ; k<30 ; k++)
	{
		for(j=0 ; j<30 ; j++)
		{
			for(i=0 ; i<30 ; i++)
			{
				dc10[i][j][k]=2.0;
			}
		}
	}


	INV1=100;
	INV2=1;
	for(K=IT1 ; K<=IP3 ; K++)
	{
		IL10(K)=K*2;
		IL20(K)=INV1;
		IL30(K)=INV2;
		for(J=1 ; J<=50 ; J++)
		{
			IL40(K,J)=K+INV2;
		}
		INV1=INV1-1;
		INV2=INV2+1;
	}

	for(I=3 ; I<=IT4*3 ; I+=IP4)
	{
		DA10(I+IT1+IT2+IT3) = DA20(I*IT2+IT1) + DA30(I*IP5+IT2)
		    -DA40(I+IT2+IP1);
		DA20(I+IT1-IT2)     = DA30(I+IT4*3) * DA40(I+IP2+10);
		DA30(I)             = DA10(I+IT1+2+IT3) + DA40(I+IP4-1);
		DA40(I+IP4)         = DA10(I+1+2+3) - DA30(I+IT4*3) + DA20(I+IT1);
	}

	printf("  ****  *** NO.1 *** \n");
	printf("(DA10)  \n");
	for(K=9 ; K<=36 ; K+=2)
	{
		printf(" %g ",DA10(K));
		if(K==27)
		{
			printf("\n");
		}
	}
	printf("\n");

	printf("(DA20)  \n");
	for(K=2 ; K<=29 ; K+=2)
	{
		printf(" %g ",DA20(K));
		if(K==20)
		{
			printf("\n");
		}
	}
	printf("\n");

	printf("(DA30)  \n");
	for(K=3 ; K<=30 ; K+=2)
	{
		printf(" %g ",DA30(K));
		if(K==21)
		{
			printf("\n");
		}
	}
	printf("\n");

	printf("(DA40)  \n");
	for(K=5 ; K<=32 ; K+=2)
	{
		printf(" %g ",DA40(K));
		if(K==23)
		{
			printf("\n");
		}
	}
	printf("\n");

	HDOP=2;
	RDOP=25.0;
	HINV=1;
	RINV=40.0;

	for(II=RDOP ; II>=HDOP ; II-=1)
	{
		for(J=HDOP ; J<=IP2 ; J++)
		{
			H = HINV;
			R = RINV;
			DB10(II,J)       = DB20(II,J*2) + DB30(J,R);
			DB20(J*2,II+IP5) = DB10(II,J+1) * DB30(J+1,R);
			DB30(J,R)     = DB10(J+1,II-1) - DB20(II+IP4,J*2-1);
			DC10(II,J,H)  = DC10(II,J,H+1) + DB10(II+1,J);
		}
	}

	printf("  ****  *** NO.2 *** \n");
	i=0;
	printf("(DB10)  \n");
	for(K2=2 ; K2<=20 ; K2++)
	{
		for(K1=40 ; K1>=2 ; K1--)
		{
			printf(" %g ",DB10(K1,K2));
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
	printf("(DB20)  \n");
	for(K2=43 ; K2>=5 ; K2--)
	{
		for(K1=4 ; K1<=40 ; K1+=2)
		{
			printf(" %g ",DB20(K1,K2));
			i++;
			if(i==10)
			{
				printf("\n");
				i=0;
			}
		}
	}
	printf("\n");

	printf("(DB30)  \n");
	for(K1=2 ; K1<=20 ; K1++)
	{
		printf(" %g ",DB30(K1,42-K1));
		if(K1==11)
		{
			printf("\n");
		}
	}
	printf("\n");

	i=0;
	printf("(DC10)  \n");
	for(K2=2 ; K2<=20 ; K2++)
	{
		for(K1=30 ; K1>=2 ; K1--)
		{
			printf(" %g ",DC10(K1,K2,K2-1));
			i++;
			if(i==10)
			{
				printf("\n");
				i=0;
			}
		}
	}
	printf("\n");

	for(I=2 ; I<=27 ; I++)
	{
		DA30(IL10(I)) = DA10(IL10(I)) + DA40(IL20(I)) - DA20(IL30(I));
		DA10(IL30(I)) = DA30(IL10(I-1)) * DA20(IL30(I+1));
		for(J=2 ; J<=20 ; J++)
		{
			DB20(I,J+1)           = DB30(IL30(I),IL30(J))-DB10(I,IL30(J));
			DB30(IL30(I),IL30(J)) = DB20(J,I) * DB10(IL30(I),IL30(J+1));
			DB10(I,IL30(J))       = DB20(I,J) * DC10(I,J,IL30(J));
		}
		DA20(I-1) = DA40(IL30(I)) + DA10(IL20(I+1));
	}

	printf("  ****  *** NO.3 *** \n");
	i=0;
	printf("(DA10)  \n");
	for(K=2 ; K<=45 ; K++)
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
	for(K=1 ; K<=44 ; K++)
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
	for(K=2 ; K<=90 ; K+=2)
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
	printf("(DB10)  \n");
	for(J=2 ; J<=20 ; J++)
	{
		for(I=2 ; I<=45 ; I++)
		{
			printf(" %g ",DB10(I,J));
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
	printf("(DB20)  \n");
	for(J=3 ; J<=21 ; J++)
	{
		for(I=2 ; I<=45 ; I++)
		{
			printf(" %g ",DB20(I,J));
			i++;
			if(i==10)
			{
				printf("\n");
				i=0;
			}
		}
	}
	printf("\n");

	for(I=IT2 ; I<=IT5 ; I+=IT1)
	{
		DA10(I+IT5) = DA10(I) + DA20(I+IT1*4) - DA30(I*2+IT5);
		DA30(I+IT2) = DA40(I+IT2+IT1) * DA20(I*2+IT1);
		for(J=3 ; J<=IT5 ; J++)
		{
			DB20(I+IT4,J+IT5) = DB30(I,J+IT3) + DB10(I+IP4,J+IP5);
			DB10(J,I)         = DB20(I+IT2,J+2) * 2.0 - DB30(I,J+IT5+1);
			DB30(I,J+IT2)     = DB20(I,J+1) / 2.0 + DB10(I+IT2,J+IT3);
		}
		DA20(I)     = DA40(I+IT2+IT1) + DA10(I+IT2);
		DA40(I+IT2) = DC10(I,I,1) - DA30(I);
	}

	printf("  ****  *** NO.4 **** \n");
	printf("(DA10)  \n");
	for(K1=22 ; K1<=40 ; K1++)
	{
		printf(" %g ",DA10(K1));
		if(K1==31)
		{
			printf("\n");
		}
	}
	printf("\n");

	printf("(DA20)  \n");
	for(K2=2 ; K2<=20 ; K2++)
	{
		printf(" %g ",DA20(K2));
		if(K2==11)
		{
			printf("\n");
		}
	}
	printf("\n");

	printf("(DA30)  \n");
	for(K3=4 ; K3<=22 ; K3++)
	{
		printf(" %g ",DA30(K3));
		if(K3==13)
		{
			printf("\n");
		}
	}
	printf("\n");

	printf("(DA40)  \n");
	for(K4=4 ; K4<=22 ; K4++)
	{
		printf(" %g ",DA40(K4));
		if(K4==13)
		{
			printf("\n");
		}
	}
	printf("\n");

	i=0;
	printf("(DB10)  \n");
	for(J=2 ; J<=20 ; J++)
	{
		for(I=3 ; I<=20 ; I++)
		{
			printf(" %g ",DB10(I,J));
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
	printf("(DB20)  \n");
	for(J=23 ; J<=40 ; J++)
	{
		for(I=12 ; I<=30 ; I++)
		{
			printf(" %g ",DB20(I,J));
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
	printf("(DB30)  \n");
	for(J=5 ; J<=22 ; J++)
	{
		for(I=2 ; I<=20 ; I++)
		{
			printf(" %g ",DB30(I,J));
			i++;
			if(i==10)
			{
				printf("\n");
				i=0;
			}
		}
	}
	printf("\n");

	for(I=1 ; I<=20 ; I++)
	{
		for(J=1 ; J<=20 ; J++)
		{
			for(K=11 ; K<=30 ; K++)
			{
				if ( IL10(I)>30 ||  IL30(I)>30)  goto LBL_60;

				DC10(IL30(I),IL30(J),IL30(K))
				    = DC10(IL10(I),IL30(J),IL30(K)) + DB20(J,IL30(K));
			}
		}
LBL_60:
		;
	}

	printf("  ****  *** NO.5 *** \n");
	i=0;
	printf("(DC10)  \n");
	for(K=11 ; K<=30 ; K++)
	{
		for(J=1 ; J<=20 ; J++)
		{
			for(I=1 ; I<=20 ; I++)
			{
				printf(" %g ",DC10(I,J,K));
				i++;
				if(i==10)
				{
					printf("\n");
					i=0;
				}
			}
		}
	}
	printf("\n");
	exit (0);
}
