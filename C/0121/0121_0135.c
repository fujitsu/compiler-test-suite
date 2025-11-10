#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) da10[i+10]
#define DA20(i) da20[i+10]
#define DA30(i) da30[i+10]
#define DB10(i,j) db10[i+20][j-1]
#define DB20(i,j) db20[i-1][j+20]
#define DB30(i,j) db30[i+10][j+10]
#define DC10(i,j,k) dc10[i+10][j+10][k+10]
#define LD10(i) ld10[i-1]
#define LD20(i) ld20[i-1]
#define LD30(i,j) ld30[j-1][i-1]
#define RA10(i) ra10[i-1]
#define RA20(i) ra20[i-1]
#define RB10(i,j) rb10[j-1][i-1]
double da10[21],da20[21],da30[21],db10[21][21],db20[21][21],
db30[21][21],dc10[21][21][21];
unsigned long int ld10[20],ld20[20],ld30[20][20];
float ra10[20],ra20[20],rb10[20][20];
int main()
{
	long int IT1=1;
	long int IT2=-10;
	long int i,j,k,I1,n,J1,III,K1;
	short int m;
	double DX1;

	for(i=0; i<21; i++)
	{
		da10[i] = 1.0;
		da20[i] = 2.0;
		da30[i] = 3.0;
	}
	for(j=0; j<21; j++)
	{
		for(i=0; i<21; i++)
		{
			db10[i][j] = 2.0;
			db20[i][j] = 4.0;
			db30[i][j] = 6.0;
		}
	}
	for(k=0; k<21; k++)
	{
		for(j=0; j<21; j++)
		{
			for(i=0; i<21; i++)
			{
				dc10[i][j][k] = 1.0;
			}
		}
	}
	for(i=0; i<20; i++)
	{
		ld10[i] = 0;
		ld20[i] = 0;
		ra10[i] = 1;
		ra20[i] = 2;
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			ld30[i][j] = 0;
			rb10[i][j] = 3;
		}
	}
	for(III=1; III<=2; III++)
	{
		for(i=IT2; i<=-1; i++)
		{
			DA10(i) = DA20(i) * DA30(i);
			DA20(i+1) = (double)(RA10(-i+1)) + DB10(i,20);
			for(j=1; j<=10; j++)
			{
				DB10(i,j) = DB20(j,i-5) + DB30(i,j);
				RB10(j,-i) = RA10(j) + RA20(-i);
				DX1 = DB30(i,j) + (double)(RB10(j,-i));
				if(DB10(i,j) > DX1)
				{
					LD10(j) = 1;
					DB20(j,i) = (sqrt(DX1) > 0.0)
					    ? (double)(int)(sqrt(DX1) + 0.5)
					    : (double)(int)(sqrt(DX1) - 0.5);
				}
				else
				{
					LD20(j) = 1;
					DB30(i,j) = DX1 - DB10(i,j);
				}
				for(k=-10; k<=10; k+=2)
				{
					DC10(i,j,k) = DC10(i,j,k)
					    + DB20(j,i+IT2)
					    - DB30(i+11,j-11);
LBL_26:
					;
				}
				if(DB20(j,i) >= DB30(i,j))
				{
					LD30(j,-i) = 1;
				}
LBL_25:
				;
			}
			DA30(i+1) = DA10(i+2) + DA20(i+3);
LBL_20:
			;
		}
		printf("  ****  *** NO.1 ** III =  %ld\n",III);
		for(k=-10; k<=-1; k++)
		{
			printf(" DA10= %g ",DA10(k));
			printf(" DA20= %g ",DA20(k+1));
			printf(" DA30= %g \n",DA30(k+1));
		}
		for(j=1; j<=10; j++)
		{
			for(i=-10,k=1;i<=-1;i++,k++)
			{
				printf(" DB10= %g ",DB10(i,j));
				printf(" RB10= %g ",RB10(k,j));
				printf(" DB20= %g ",DB20(j,i));
				printf(" DB30= %g \n",DB30(i,j));
			}
		}
		printf(" (LD10) \n");
		for(k=1; k<=10; k++)
		{
			printf(" LD10= %lu ",LD10(k));
			printf(" LD20= %lu \n",LD20(k));
		}
		printf(" (DC10) \n");
		for(k=-10; k<=10; k+=2)
		{
			for(j=1; j<=10; j++)
			{
				for(i=1; i<=10; i++)
				{
					printf(" %g ",DC10(i,j,k));
				}
				printf("\n");
			}
		}
		printf(" (LD30) \n");
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %lu ",LD30(i,j));
			}
			printf("\n");
		}
		for(I1=10; I1>=0; I1-=1)
		{
			if(DA20(I1) > DA10(I1))
			{
				LD10(I1+1) = ! LD10(I1+1);
				DA10(I1) = DA20(I1);
			}
			else if(DA30(I1) > DA20(I1))
			{
				LD20(I1+1) = LD20(I1+1) || LD10(I1+10);
				DA20(I1) = DA30(I1);
			}
			for(J1=-20; J1<=-11; J1++)
			{
				n= J1 + 10;
				DB30(n,I1) = (DB10(J1,I1+1)
				    < DB20(I1+1,J1))
				    ? DB10(J1,I1+1) : DB20(I1+1,J1);
				DB20(I1+10,J1) = DB30(n,I1)
				    - (double)(RB10(I1+1,n+11));
				for(K1=IT1; K1<=10; K1++)
				{
					DC10(I1,J1+10,K1)
					    = DC10(I1-10,J1+10,K1)
					    + DB10(J1,K1);
LBL_40:
					;
				}
				DB10(J1,1) = (DB30(J1+10,I1)
				    > DB20(I1+10,J1))
				    ? DB30(J1+10,I1) : DB20(I1+10,J1);
			}
LBL_30:
			;
		}
		printf("  ****  ** NO.2 *** III =  %ld\n",III);
		printf(" (LD10) \n");
		for(k=10; k>0; k--)
		{
			printf(" LD10= %lu ",LD10(k));
			printf(" DA10= %g ",DA10(k));
			printf(" LD20= %lu ",LD20(k));
			printf(" DA20= %g \n",DA20(k));
		}
		printf(" (DB30) \n");
		for(j=10; j>=0; j--)
		{
			for(i=-10; i<=-1; i++)
			{
				printf(" %g ",DB30(i,j));
			}
			printf("\n");
		}
		printf(" (DB20) \n");
		for(j=-20; j<=-11; j++)
		{
			for(i=20; i>=10; i--)
			{
				printf(" %g ",DB20(i,j));
			}
			printf("\n");
		}
		printf(" (DB10) \n");
		for(i=-20; i<=-11; i++)
		{
			printf(" %g ",DB10(i,1));
		}
		printf("\n");
		printf(" (DC10) \n");
		for(k=1; k<=10; k++)
		{
			for(j=-10; j<=-1; j++)
			{
				for(i=10; i>=0; i--)
				{
					printf(" %g ",DC10(i,j,k));
				}
				printf("\n");
			}
		}
LBL_10:
		;
	}
	exit (0);
}
