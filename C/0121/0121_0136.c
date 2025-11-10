#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i,j) da10[i-1][j-1]
#define DA20(i,j) da20[i-1][j-1]
#define DA30(i,j) da30[i-1][j-1]
#define DB10(i,j,k) db10[i-1][j-1][k-1]
#define DB20(i,j,k) db20[i-1][j-1][k-1]
#define DB30(i,j,k) db30[i-1][j-1][k-1]
#define CD10(i,j) cd10[i-1][j-1]
#define CD20(i,j) cd20[i-1][j-1]
#define CD30(i,j,k) cd30[i-1][j-1][k-1]
#define LD10(i,j) ld10[i-1][j-1]
#define LD20(i,j) ld20[i-1][j-1]
#define LD30(i,j,k) ld30[i-1][j-1][k-1]
double da10[20][20],da20[20][20],da30[20][20],db10[20][20][20],
db20[20][20][20],db30[20][20][20];
COMPLEX16 cd10[20][20],cd20[20][20],cd30[20][20][20];
unsigned long int ld10[20][20],ld20[20][20],ld30[20][20][20];
int main()
{
	long int ICNT1,ICNT2,I1,n,J1,K1,I2,J2,K2,K3,I3,J3,I4,J4,K4,i,j,k,
	III;
	double DX1,DY1,DX2,DY2,DX3,DY3;
	COMPLEX16 CDX;

	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			da10[i][j] = 2.0;
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			da20[i][j] = 1.0;
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			da30[i][j] = 4.0;
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				db10[i][j][k] = 4.0;
			}
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				db20[i][j][k] = 2.0;
			}
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				db30[i][j][k] = 3.0;
			}
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			cd10[i][j].dreal = 1;
			cd10[i][j].dimag = 2;
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			cd20[i][j].dreal = 2;
			cd20[i][j].dimag = 1;
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				cd30[i][j][k].dreal = 4;
				cd30[i][j][k].dimag = 2;
			}
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			ld10[i][j] = 0;
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			ld20[i][j] = 0;
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				ld30[i][j][k] = 0;
			}
		}
	}
	ICNT1 = 0;
	ICNT2 = 0;
	for(III=1; III<=2; III++)
	{
		for(I1=2; I1<=10; I1++)
		{
			for(J1=2; J1<=2*I1; J1++)
			{
				DA10(I1,J1) = DA20(I1+1,J1) * DA30(I1*2,J1);
				n = I1 + 10;
				DA10(n,J1) = DA20(I1+2,J1) * DA30(I1*2-1,J1);
				DX1 = sqrt(DA10(I1,J1)) + DA20(I1,J1);
				DY1 = DB10(I1,J1,1) - DA20(I1,J1) / 2.0;
				if(DX1 > DY1)
				{
					LD10(I1,J1) = 1;
					CD10(I1,J1).dreal = (double)(DX1);
					CD10(I1,J1).dimag = (double)(DY1);
				}
				else
				{
					LD20(I1,J1) = 1;
					CD20(I1,J1).dreal = (double)(DY1);
					CD20(I1,J1).dimag = (double)(DX1);
				}
				DA30(I1*2,J1) = DX1 + DY1;
				for(K1=10; K1>=1; K1-=1)
				{
					DB20(I1,J1,K1) = DB10(I1,J1,K1) * 2.0 - DB30(I1,J1,K1);
					DB30(I1,J1,K1) = DB10(I1+10,J1,K1) * 2.0
					    - DB20(I1,J1,K1+1);
					DX2 = (DB20(I1,J1,K1) > DB30(I1,J1,K1))
					    ? DB20(I1,J1,K1) : DB30(I1,J1,K1);
					DY2 = (DB20(I1,J1,K1) > DB30(I1,J1,K1))
					    ? DB20(I1,J1,K1) - DB30(I1,J1,K1) : 0;
					if(DY2 == 0) goto LBL_32;
					goto LBL_31;
LBL_31:
					;
					LD30(I1,J1,K1) = 1;
LBL_32:
					;
					CD30(I1,J1,K1).dreal = (double)(DX2);
					CD30(I1,J1,K1).dimag = (double)(DY2);
					DB10(I1,J1,K1) = DX2 - DY2;
LBL_30:
					;
				}
				DA20(I1,J1) = DB10(I1-1,J1-1,10) + DA30(I1,J1);
LBL_20:
				;
			}
		}
		if(LD10(2,III) == 1)
		{
			printf("  ***  *** VOLUME VECTORIZE *** \n");
			for(I2=1; I2<=20; I2++)
			{
				for(J2=1; J2<=20; J2++)
				{
					DA10(I2,J2) = CD10(I2,J2).dreal + CD20(I2,J2).dimag;
					DA20(I2,J2) = CD10(I2,J2).dimag - CD20(I2,J2).dreal;
					for(K2=1; K2<=20; K2++)
					{
						DB10(K2,I2,J2) = DB30(K2,I2,J2)
						    + DB20(K2,I2,J2)
						    - CD30(K2,I2,J2).dimag;
					}
				}
			}
LBL_40:
			;
		}
		else if(LD20(3,III) == 1)
			printf("  ***  ** VECTORIZE BY CHANGED INDEX **\n");
		for(I3=1; I3<=20; I3++)
		{
			for(J3=2; J3<=15; J3++)
			{
				for(K3=12; K3>=8; K3-=1)
				{
					CDX.dreal = sqrt(CD30(I3,J3,K3).dreal) + 1.0;
					CDX.dimag = sqrt(CD30(I3,J3,K3).dimag) + 1.0;
					DX3 = (CDX.dreal > 0.0)
					    ? (double)(int)(CDX.dreal + 0.5)
					    : (double)(int)(CDX.dreal - 0.5);
					DY3 = (CDX.dimag > 0.0)
					    ? (double)(int)(CDX.dimag + 0.5)
					    : (double)(int)(CDX.dimag - 0.5);
					if(LD30(I3,J3,K3) == 1)
					{
						DX3 = (sqrt(DA30(I3,K3)) > 0.0)
						    ? (double)(int)(sqrt(DA30(I3,K3)) + 0.5)
						    : (double)(int)(sqrt(DA30(I3,K3)) - 0.5);
					}
					DB20(I3,J3,K3) = DB20(I3,J3+1,K3)
					    + ((DX3 < DY3) ? DX3 : DY3);
LBL_60:
					;
				}
				DA30(I3,12) = DA30(I3,12) + DA10(I3,J3);
LBL_50:
				;
			}
		}
		for(I4=1; I4<=20; I4++)
		{
			for(J4=1;J4<=20;J4++)
			{
				if(LD10(I4,J4) == 1)
				{
					ICNT1 = ICNT1 + 1;
				}
				for(K4=1; K4<=20; K4++)
				{
					if(LD30(I4,J4,K4) == 1)
					{
						ICNT2 = ICNT2 + 1;
					}
				}
LBL_70:
				;
			}
		}
		printf("  ***  ** NO.1 \n");
		printf(" ICNT1 = %ld,ICNT2 = %ld\n",ICNT1,ICNT2);
LBL_10:
		;
	}
	printf("  ***  ** NO.2 *** \n");
	printf(" (DA10) \n");
	for(j=1; j<=20; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" %g ",DA10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DA20) \n");
	for(j=1; j<=20; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" %g ",DA20(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DA30) \n");
	for(j=1; j<=20; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" %g ",DA30(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (CD10) \n");
	for(j=1; j<=20; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" (%g,%g) ",CD10(i,j).dreal,CD10(i,j).dimag);
		}
		printf("\n");
	}
	printf("\n");
	printf(" (CD20) \n");
	for(j=1; j<=20; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" (%g,%g) ",CD20(i,j).dreal,CD20(i,j).dimag);
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DB10) \n");
	for(k=1; k<=10; k++)
	{
		for(j=2; j<=20; j+=2)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",DB10(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" (DB20) \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",DB20(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" (DB30) \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",DB30(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" (CD30) \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=20; i++)
			{
				printf(" (%g,%g) ",CD30(i,j,k).dreal,CD30(i,j,k).dimag);
			}
			printf("\n");
		}
	}
	printf("\n");
	exit (0);
}
