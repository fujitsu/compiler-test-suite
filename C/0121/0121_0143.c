#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i) ra[i-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i,j,k) rc[i-1][j-1][k-1]
#define RD(i,j,k,l) rd[i-1][j-1][k-1][l-1]
#define DA(i) da[i-1]
#define DB(i,j) db[i-1][j-1]
#define CSUM(i) csum[i-1]
#define CEA(i) cea[i-1]
#define CEB(i,j) ceb[i-1][j-1]
#define CDB(i,j) cdb[i-1][j-1]
#define IL(i) il[i-1]
float ra[20],rb[20][20],rc[20][20][20],rd[10][10][10][10];
double da[20],db[20][20];
COMPLEX8 csum[20],cea[20],ceb[20][20];
COMPLEX16 cdb[20][20];
long int il[10];
int main()
{
	COMPLEX8 CC;
	float RMX2=0,RMX1=0;
	long int I1,I2,J1,J2,I3,I4,i,j,k,l;
	short int m;
	float RS1,CI,CR,DIF1,DIF2;

	for(i=0; i<20; i++)
	{
		ra[i] = 1;
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			rb[i][j] = 1;
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				rc[i][j][k] = 1;
			}
		}
	}
	for(l=0; l<10; l++)
	{
		for(k=0; k<10; k++)
		{
			for(j=0; j<10; j++)
			{
				for(i=0; i<10; i++)
				{
					rd[i][j][k][l] = 1;
				}
			}
		}
	}
	for(i=0; i<20; i++)
	{
		da[i] = 1;
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			db[i][j] = 1;
		}
	}
	for(i=0; i<20; i++)
	{
		csum[i].real = 0;
		csum[i].imag = 0;
	}
	for(i=0; i<20; i++)
	{
		cea[i].real = 1;
		cea[i].imag = 1;
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			ceb[i][j].real = 1;
			ceb[i][j].imag = 1;
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			cdb[i][j].dreal = 1;
			cdb[i][j].dimag = 1;
		}
	}
	m = 1;
	for(i=0; i<10; i++)
	{
		il[i] = m;
		m++;
	}
	for(I1=1; I1<=20; I1++)
	{
		for(I2=2; I2<=9; I2++)
		{
			RB(I1,I2) = DB(I1,I2) * RA(I1) + DB(I2,I1);
			RS1 = RB(I1,I2-1);
			CEB(I2,I1).real = (float)(RS1);
			CEB(I2,I1).imag = (float)(RA(I2));
			CI = RB(I1,I2) * RC(I2,I1,I1) + RB(I1,I2) * RC(I1,I2,I1)
			    + RB(I1,I2) * RC(I1,I1,I2);
			CC.real = CEA(I1).real * CEA(I2-1).real
			    - CEA(I1).imag * CEA(I2-1).imag;
			CC.imag = CEA(I1).real * CEA(I2-1).imag
			    + CEA(I1).imag * CEA(I2-1).real;
			CR = -(CC).imag;
			CDB(I1,I2).dreal = (float)(CR);
			CDB(I1,I2).dimag = (float)(CI);
		}
LBL_12:
		;
		CSUM(I1).real = CSUM(I1).real + CEB(I2,I1).real
		    + CDB(I1,I2).dreal;
		CSUM(I1).imag = CSUM(I1).imag + CEB(I2,I1).imag
		    + CDB(I1,I2).dimag;
		RA(I1) = fabs(CEB(I1,I1).real);
		DA(I1) = fabs(CDB(I1,I1).dreal);
		DIF1 = RMX1 - RA(I1);
		DIF2 = RMX2 - DA(I1);
		if(DIF1 < 0) goto LBL_14;
		goto LBL_15;
LBL_14:
		;
		RMX1 = RA(I1);
		J1 = I1;
LBL_15:
		;
		if(DIF2 < 0) goto LBL_16;
		goto LBL_11;
LBL_16:
		;
		RMX2 = DA(I1);
		J2 = I1;
LBL_11:
		;
	}
	printf(" **** LOOP1 **\n");
	printf(" CSUM \n");
	for(i=1; i<=20; i++)
	{
		printf(" (%g,%g) ",CSUM(i).real,CSUM(i).imag);
		if(i == 10)
		{
			printf("\n");
		}
	}
	printf("\n");
	printf(" RMX1= %g\n",RMX1);
	printf(" RMX2= %g\n",RMX2);
	printf(" J1= %ld\n",J1);
	printf(" J2= %ld\n",J2);
	printf(" RB \n");
	for(j=1; j<=20; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" %g ",RB(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" CEB \n");
	for(j=1; j<=20; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" (%g,%g) ",CEB(i,j).real,CEB(i,j).imag);
			if(i == 10)
			{
				printf("\n");
			}
		}
		printf("\n");
	}
	printf("\n");
	printf(" CDB \n");
	for(j=1; j<=20; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" (%g,%g) ",CDB(i,j).dreal,CDB(i,j).dimag);
			if(i == 10)
			{
				printf("\n");
			}
		}
		printf("\n");
	}
	printf("\n");
	J1 = 1;
	for(I1=1; I1<=10; I1++)
	{
		for(I2=1; I2<=10; I2++)
		{
			for(I3=1; I3<=10; I3++)
			{
				RC(I3,I1,I2) = RC(I3,I1,I2) - 1.0;
LBL_23:
				;
			}
			RB(I2,I1) = RB(I2*J1+1,I1);
LBL_22:
			;
		}
LBL_21:
		;
	}
	printf("****LOOP2**\n");
	printf(" RB \n");
	for(j=1; j<=20; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" %g ",RB(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" RC \n");
	for(k=1; k<=20; k++)
	{
		for(j=1; j<=20; j++)
		{
			for(i=1; i<=20; i++)
			{
				printf(" %g ",RC(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	J1 = 1;
	for(I1=1; I1<=10; I1++)
	{
		for(I2=1; I2<=10; I2++)
		{
			if(RA(I2) > 4)
			{
				RB(I2,I1) = 0.0;
			}
			else
			{
				RB(I2,I1) = RA(I2) + RA(I1);
			}
			for(I3=1; I3<=10; I3++)
			{
				for(I4=1; I4<=I1*J1-1+IL(1); I4++)
				{
					if(RD(I3,I4,I2,I1) == 1)
					{
						RD(I3,I4,I2,I1) = RA(I1) * RA(I2) + RA(I3)
						    * RA(I4);
					}
					else
					{
						RD(I3,I4,I2,I1) = 0.0;
					}
LBL_34:
					;
				}
LBL_33:
				;
			}
			DB(I2,I1) = (double)(RD(I2,I1,I2,I1)) * (double)(RA(I1));
LBL_32:
			;
		}
LBL_31:
		;
	}
	printf(" **** LOOP3 **\n");
	printf(" RB \n");
	for(j=1; j<=20; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" %g ",RB(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" RD \n");
	m = 0;
	for(l=1; l<=10; l++)
	{
		for(k=1; k<=10; k++)
		{
			for(j=1; j<=10; j++)
			{
				for(i=1; i<=10; i++)
				{
					printf(" %g ",RD(i,j,k,l));
					m++;
					if(m == 25)
					{
						printf("\n");
						m = 0;
					}
				}
			}
		}
	}
	printf("\n");
	printf(" DB \n");
	for(j=1; j<=20; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" %g ",DB(i,j));
		}
		printf("\n");
	}
	printf("\n");
	exit (0);
}
