#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) c.da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define DA40(i) dd.da40[i-1]
#define IL10(i) il10[i-1]
#define IL20(i) il20[i-1]
#define IL30(i) il30[i-1]
#define DB10(i) c.db10[i-1]
#define DB20(i) d.db20[i-1]
#define DB30(i) dd.db30[i-1]
#define DC10(i,j) dd.dc10[i-1][j-1]
#define DD10(i) dd.dd10[i-1]
#define CD10(i) c.cd10[i-1]
#define CD20(i) cd20[i-1]
#define CD30(i) cd30[i-1]
#define LD10(i) ld10[i-1]
#define LD20(i) ld20[i-1]
#define LD30(i) ld30[i-1]
#define DX d.dx
#define DY d.dy
#define CDV d.cdv
union{
	double da10[50];
	double db10[100];
	COMPLEX16 cd10[50];
} c;
union{
	double db20[100];
	double dx;
	double dy;
	COMPLEX16 cdv;
} d;
union{
	double db30[100];
	double dc10[10][10];
	double da40[50];
	double dd10[20];
} dd;
double da20[50],da30[50];
long int il10[50],il20[50],il30[50];
COMPLEX16 cd20[50],cd30[50];
unsigned long int ld10[50],ld20[50],ld30[50];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=5;
	long int IT4=10;
	long int IT5=20;
	long int i,j,N1,I,N,NI,J,K;
	double DZ;
	unsigned long int LX;

	for(i=0 ; i<50 ; i++)
	{
		ld10[i]=0;
		ld20[i]=0;
		ld30[i]=0;
	}
	for(I=1 ; I<=50 ; I++)
	{
		DA30(I) = 1.0 -(double)(I);
		DA40(I) = (double)(I)-1.0;
		N1      = I+50;
		DB10(I) = (double)(I);
		DB10(N1)= 1.0-(double)(I);
		DB20(I) = 2.0 *(double)(I);
		DB20(N1)= 25.0 -(double)(I);
		DB30(I) = (double)(N1)-2.0;
		DB30(N1)= 51.0 -(double)(I);
		CD20(I).dreal = 1.0 ;
		CD20(I).dimag = 2.0;
		CD30(I).dreal = (double)(DX);
		CD30(I).dimag = (double)(DY);
		if ( I >   20 ) goto LBL_10;
		LD10(I) = 0;
		LD20(I) = 1;
		LD30(I) = 1;
		if ( I >   10 )goto LBL_10         ;
		LD10(2*I) = 1^LD10(I);
		LD20(3*I) = 1^LD20(I);
		LD30(I)   = 1^LD10(I);
LBL_10:
		;
	}
	N=51;
	for(I=1 ; I<=50 ; I++)
	{
		NI=N-I;
		IL10(I)=I;
		IL20(I)=NI;
		IL30(I)=I+1;
		if ( I == 50 ) IL30(I)=N-1;
LBL_20:
		;
	}
	for(J=IT2 ; J<=IT4 ; J++)
	{
		DX = DA10(IL10(J))*DA30(IL20(IL20(J)));
		for(I=J ; I<=IT5 ; I++)
		{
			DY = DA40(I)*2.0 -DA20(J);
			if ( (LD10(I)  &&   !LD30(I-1)) ==1)
			{
				LD20(I)=1;
				DZ = DB30(I*2)*DA20(IT5)/DX;
			}
			else
			{
				LD10(I) = 1^LD10(I)||1^LD20(IT5);
				DZ = DX-CD30(J).dimag;
			}
			CDV.dreal = CDV.dreal+(double)(DY);
			CDV.dimag = CDV.dimag+(double)(DZ);
LBL_30:
			;
		}
	}
	printf("  ***  ** NO.1 *** \n");
	printf("  CDV = ( %g , %g ) \n",CDV.dreal,CDV.dimag);
	for(I=1 ; I<=IT5 ; I+=2)
	{
		DX = DX + DB10(I*2) - DB30(I*3);
		DB10(I*2+6) = CD20(I).dimag - (double)(IL20(I));
		DY = DB30(I*2) * (double)(IT2);
		DY = (DY > DB10(I*2))  ?  DY : DB10(I*2);
LBL_35:
		;
	}
	printf("  ***  ** NO.2 *** \n");
	printf("   DX =  %g \n",DX);
	printf("   DY =  %g \n",DY);
	for(K=IT2 ; K<=IT3 ; K++)
	{
		LX=LD10(K)||(1^LD20(K)&&1^LD30(K));
		for(J=IL10(K);J<=15 ; J++)
		{
			CD10(J).dreal = CD20(J+1).dreal * CD30(J-1).dreal
			    - CD20(J+1).dimag * CD30(J-1).dimag - CDV.dreal;
			CD10(J).dimag = CD20(J+1).dreal * CD30(J-1).dimag
			    + CD20(J+1).dimag * CD30(J-1).dreal - CDV.dimag;
			DA40(J) = fabs(DA30(K)-CD10(J-1).dimag);
			if ( LX ==1)
			{
				if ( LD10(J)  ||   LD20(J+1) ==1)
				{
					DA30(K) = DA20(J+5);
				}
			}
			else
			{
				if ( (LD10(J)  ||   LD30(J+1))==1  &&   J <= 10 )
				{
					DB30(IL30(J)) = DB10(J)+DC10(IL10(K),J);
					LD10(J) = 1^LD20(J)|LX;
				}
			}
			DD10(J)  = DD10(J+1) + CD20(K).dimag;
			IL20(IT1)= IL20(IT1) + IL30(J);
LBL_40:
			;
		}
	}
	printf("  ***  ** NO.3 *** \n");
	I=1;
	J=1;
	for(i=1 ; i<=100 ; i++)
	{
		printf("(DB10)  %g ",DB10(i));
		if(J+9 == I)
		{
			printf("\n");
			J=I;
		}
		I=i;
	}
	printf("\n");

	I=1;
	J=1;
	for(i=1 ; i<=100 ; i++)
	{
		printf("(DB20)  %g ",DB20(i));
		if(J+9 == I)
		{
			printf("\n");
			J=I;
		}
		I=i;
	}
	printf("\n");

	I=1;
	J=1;
	for(i=1 ; i<=100 ; i++)
	{
		printf("(DB30)  %g ",DB30(i));
		if(J+9 == I)
		{
			printf("\n");
			J=I;
		}
		I=i;
	}
	printf("\n");

	I=1;
	J=1;
	for(i=1 ; i<=50 ; i++)
	{
		printf("CD20= (%g , %g) ",CD20(i).dreal,CD20(i).dimag);
		if(J+9 == I)
		{
			printf("\n");
			J=I;
		}
		I=i;
	}
	printf("\n");

	I=1;
	J=1;
	for(i=1 ; i<=50 ; i++)
	{
		printf("CD30= (%g , %g) ",CD30(i).dreal,CD30(i).dimag);
		if(J+9 == I)
		{
			printf("\n");
			J=I;
		}
		I=i;
	}
	printf("\n");

	I=1;
	J=1;
	for(i=1 ; i<=50 ; i++)
	{
		printf("(LD10)  %lu ",LD10(i));
		if(J+9 == I)
		{
			printf("\n");
			J=I;
		}
		I=i;
	}
	printf("\n");

	I=1;
	J=1;
	for(i=1 ; i<=50 ; i++)
	{
		printf("(LD20)  %lu ",LD20(i));
		if(J+9 == I)
		{
			printf("\n");
			J=I;
		}
		I=i;
	}
	printf("\n");

	I=1;
	J=1;
	for(i=1 ; i<=50 ; i++)
	{
		printf("(LD30)  %lu ",LD30(i));
		if(J+9 == I)
		{
			printf("\n");
			J=I;
		}
		I=i;
	}
	printf("\n");

	I=1;
	J=1;
	for(i=1 ; i<=50 ; i++)
	{
		printf("(IL20)  %ld ",IL20(i));
		if(J+9 == I)
		{
			printf("\n");
			J=I;
		}
		I=i;
	}
	printf("\n");
	exit (0);
}
