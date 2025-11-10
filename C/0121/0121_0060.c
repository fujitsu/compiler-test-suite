#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) d.da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define DA40(i) a.da40[i-1]
#define DB10(i,j) d.db10[i-1][j-1]
#define DB20(i,j) db20[i-1][j-1]
#define DB30(i,j) a.db30[i-1][j-1]
#define CD10(i) cd10[i-1]
#define CD20(i) cd20[i-1]
#define CD30(i) cd30[i-1]
#define LD10(i) ld10[i-1]
#define LD20(i) ld20[i-1]
#define LD30(i) ld30[i-1]
union{
	double da10[100];
	double db10[50][2];
} d;
union{
	double da40[100];
	double db30[50][2];
} a;
double da20[100],da30[100],db20[50][2];
COMPLEX16 cd10[100],cd20[100],cd30[100];
unsigned long int ld10[100],ld20[100],ld30[100];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=5;
	long int IT4=10;
	long int IT5=20;
	long int i,j,IL1,I,IL2,JL1,J,JL2,IP,JP,ICNT1,ICNT2;
	double DX,DY,DZ;

	for(i=0 ; i<100 ; i++)
	{
		d.da10[i]=1.0;
		da20[i]=4.0;
		da30[i]=2.0;
		a.da40[i]=3.0;
		cd10[i].dreal=1.5;
		cd10[i].dimag=2.2;
		cd20[i].dreal=0.2;
		cd20[i].dimag=-2.0;
		ld10[i]=0;
		ld20[i]=0;
		ld30[i]=0;
	}
	for(j=0 ; j<2 ; j++)
	{
		for(i=0 ; i<50 ; i++)
		{
			db20[i][j]=5.0;
		}
	}
	for(i=0 ; i<50 ; i++)
	{
		cd30[i].dreal=-1.0;
		cd30[i].dimag=0.5;
		cd30[i+50].dreal=2.5;
		cd30[i+50].dimag=4.0;
	}

	for(I=IT1 ; I<=IT2 ; I++)
	{
		IL1=I*2+IT2;
		IL2=I*2+IT4;
		for(J=IL1 ; J<=IT5 ; J++)
		{
			JL1 = J*IT2-IT1;
			JL2 = J*IT2+IT2;
			DA10(IL1) = DA10(IL1)+DA20(JL1);
			DX = CD10(IL2).dreal*(double)(I);
			DY = CD10(JL1).dimag*(double)(IT2);
			DA40(JL1) = DA40(JL2)-DB30(JL2,I);
			if ( DX - DY >= 0 ) goto LBL_16;
LBL_15:
			;
			DZ = DY-CD30(JL1).dimag;
			CD20(JL2).dreal = (double)(DX);
			CD20(JL2).dimag = (double)(DZ);
			goto LBL_17;
LBL_16:
			;
			DZ = DX-CD20(JL1).dimag;
			CD30(JL2).dreal = (double)(DY);
			CD30(JL2).dimag = (double)(DZ);
			LD10(J)=1;
LBL_17:
			;
			DA20(J) = DA20(JL2)+((DZ > DX) ? DZ:DX)-DY;
LBL_10:
			;
		}
	}

	for(I=1 ; I<=IT2 ; I++)
	{
		IL1=50-I*2;
		IL2=I+3;
		for(J=IL2 ; J<=IL1 ; J++)
		{
			IP=100-J*IT2;
			JP=J*2;
			DA30(101-JP)= DA30(100-JP) - DA40(IL2*IT3);
			DB20(J+1,I) = DB30(J,I) + DA20(IP-1);
			DX = (double)(IP)-DB10(J,I);
			if ( DX >= 0 ) goto LBL_32;
LBL_31:
			;
			LD20(J) = 1;
			DY=CD10(IL1).dreal;
			DZ=CD10(IL2).dimag;
			if ( DX - DY >= 0 ) goto LBL_34;
LBL_33:
			;
			LD30(J)=1;
			CD20(IL2).dreal = CD20(IL2).dreal + (double)(DX);
			CD20(IL2).dimag = CD20(IL2).dimag + (double)(DZ);
			goto LBL_35;
LBL_32:
			;
			LD10(J)=1;
			goto LBL_33;
LBL_34:
			;
			LD20(JP) = 1^LD10(J)&&LD30(JP);
			DA20(100-J) = DA20(IP)+DX;
LBL_35:
			;
			CD30(IP).dreal = CD30(99-J*IT2).dreal + (double)(DZ);
			CD30(IP).dimag = CD30(99-J*IT2).dimag + (double)(DX);
LBL_30:
			;
		}
LBL_20:
		;
	}

	printf("  ***  *** \n");
	I=0 ;
	printf("(DA10) \n");
	for(i=1 ; i<=100 ; i++)
	{
		printf(" %g ",DA10(i));
		I++ ;
		if(I == 15)
		{
			printf("\n");
			I=0 ;
		}
	}
	printf("\n");

	I=0 ;
	printf("(DA20) \n");
	for(i=1 ; i<=100 ; i++)
	{
		printf(" %g ",DA20(i));
		I++ ;
		if(I == 15)
		{
			printf("\n");
			I=0 ;
		}
	}
	printf("\n");

	I=0 ;
	printf("(DA30) \n");
	for(i=1 ; i<=100 ; i++)
	{
		printf(" %g ",DA30(i));
		I++ ;
		if(I == 15)
		{
			printf("\n");
			I=0 ;
		}
	}
	printf("\n");

	I=0 ;
	printf("(DA40) \n");
	for(i=1 ; i<=100 ; i++)
	{
		printf(" %g ",DA40(i));
		I++ ;
		if(I == 15)
		{
			printf("\n");
			I=0 ;
		}
	}
	printf("\n");

	I=0 ;
	printf("(CD10) \n");
	for(i=1 ; i<=100 ; i++)
	{
		printf("(%g , %g)",CD10(i).dreal,CD10(i).dimag);
		I++ ;
		if(I == 10)
		{
			printf("\n");
			I=0 ;
		}
	}
	printf("\n");

	I=0 ;
	printf("(CD20) \n");
	for(i=1 ; i<=100 ; i++)
	{
		printf("(%g , %g)",CD20(i).dreal,CD20(i).dimag);
		I++ ;
		if(I == 10)
		{
			printf("\n");
			I=0 ;
		}
	}
	printf("\n");

	I=0 ;
	printf("(CD30) \n");
	for(i=1 ; i<=100 ; i++)
	{
		printf("(%g , %g)",CD30(i).dreal,CD30(i).dimag);
		I++ ;
		if(I == 10)
		{
			printf("\n");
			I=0 ;
		}
	}
	printf("\n");

	for(I=1 ; I<=2 ; I++)
	{
		for(J=I ; J<=I+IT2*IT3+IT4 ; J++)
		{
			DB20(J,I)= DB20(2*J,I)
			    -((DB10(J,I) < DB30(J,I)) ? DB10(J,I) : DB30(J,I));
LBL_40:
			;
		}
	}
	printf("(DB20) \n");
	for(j=1 ; j<=2 ; j++)
	{
		for(i=1 ; i<=50 ; i++)
		{
			printf("%g ",DB20(i,j));
			if(i==25 || i==50)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	ICNT1=0;
	ICNT2=0;
	for(I=1 ; I<=IT3*IT4 ; I++)
	{
		IP=101-I;
		if ( LD10(I)  ||   LD20(I) ==1)
		{
			ICNT1=ICNT1+1;
		}
		LD10(IP)=1^LD30(IP)&&1^LD20(I*2);
		if ( LD10(IP) ==1)
		{
			LD20(I)=1^LD30(I)||LD10(51-I);
			ICNT2=ICNT2+1;
		}
LBL_50:
		;
	}
	printf("  ***  ** NO.2 *** \n");
	printf("  ICNT1 = %ld  , ICNT2 =  %ld  \n",ICNT1,ICNT2);
	exit (0);
}
