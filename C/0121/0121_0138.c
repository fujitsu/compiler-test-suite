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
#define DC(i,j,k) dc[i-1][j-1][k-1]
#define CEA(i) cea[i-1]
#define CEB(i,j) ceb[i-1][j-1]
#define CEC(i,j,k) cec[i-1][j-1][k-1]
#define LBA(i) lba[i-1]
#define L4A(i) l4a[i-1]
#define L4B(i,j) l4b[i-1][j-1]
#define IL(i) il[i-1]
float ra[10],rb[10][10],rc[10][10][10],rd[10][10][10][10];
double da[10],db[10][10],dc[10][10][10];
COMPLEX8 cea[10],ceb[10][10],cec[10][10][10];
unsigned char lba[10];
unsigned long int l4a[10],l4b[10][10];
long int il[10];
int main()
{
	long int ID1,I2,I1,I3,ID3,i,j,k,l;
	float RSUM,R1;

	for(i=0; i<10; i++)
	{
		ra[i] = 1;
	}
	for(j=0; j<10; j++)
	{
		for(i=0; i<10; i++)
		{
			rb[i][j] = 1;
		}
	}
	for(k=0; k<10; k++)
	{
		for(j=0; j<10; j++)
		{
			for(i=0; i<10; i++)
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
	for(i=0; i<10; i++)
	{
		da[i] = 1;
	}
	for(j=0; j<10; j++)
	{
		for(i=0; i<10; i++)
		{
			db[i][j] = 1;
		}
	}
	for(k=0; k<10; k++)
	{
		for(j=0; j<10; j++)
		{
			for(i=0; i<10; i++)
			{
				dc[i][j][k] = 1;
			}
		}
	}
	for(i=0; i<10; i++)
	{
		cea[i].real = 1;
		cea[i].imag = 1;
	}
	for(j=0; j<10; j++)
	{
		for(i=0; i<10; i++)
		{
			ceb[i][j].real = 1;
			ceb[i][j].imag = 1;
		}
	}
	for(k=0; k<10; k++)
	{
		for(j=0; j<10; j++)
		{
			for(i=0; i<10; i++)
			{
				cec[i][j][k].real = 1;
				cec[i][j][k].imag = 1;
			}
		}
	}
	for(i=0; i<10; i++)
	{
		lba[i] = 1;
	}
	for(i=0; i<10; i++)
	{
		l4a[i] = 1;
	}
	for(j=0; j<10; j++)
	{
		for(i=0; i<10; i++)
		{
			l4b[i][j] = 1;
		}
	}
	for(i=0; i<10; i++)
	{
		j = 1;
		il[i] = j;
		j++;
	}
	RSUM = 0;
	ID1 = 0;
	for(I1=2; I1<=8; I1++)
	{
		for(I2=1; I2<=10; I2++)
		{
			for(I3=1; I3<=10; I3++)
			{
				RB(I2,I1) = DB(I2,I1) + RB(I2,I1) + I3;
				if(RB(I2,I1) == 5)
				{
					if(IL(I2) > 2 && IL(I2) < 9)
					{
						DB(I2-1,I1) = 0.0;
					}
				}
LBL_13:
				;
			}
			RSUM = RSUM + RB(I2,I1);
			ID1 = ID1 + 10;
			if(ID1 > 1000)
			{
				RB(I2,I1) = 0.0;
			}
LBL_12:
			;
		}
LBL_11:
		;
	}
	printf(" **  ** LOOP1 ** \n");
	printf(" RB \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g ",RB(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" DB \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g ",DB(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" RSUM= %g ID1= %ld\n",RSUM,ID1);
	RSUM = 0.0;
	for(I1=1; I1<=9; I1++)
	{
		for(I2=1; I2<=9; I2++)
		{
			for(I3=1; I3<=9; I3++)
			{
				CEC(I1,I2,I3).real = CEB(I2,I3).real + CEA(I1).real;
				CEC(I1,I2,I3).imag = CEB(I2,I3).imag + CEA(I1).imag;
				if(RA(I3) > RD(I1,I1,I3,I2))
				{
					RA(I3) = RA(I3) + RB(I1,I2) * RB(I1+1,I2+1);
					DA(I1) = DA(I1) + RB(I1,I3) * RB(I1+1,I3+1);
				}
				else
				{
					RA(I3) = 0.0;
					DA(I1) = 0.0;
				}
				R1 = RA(I3) + DA(I1);
				RSUM = RSUM + R1;
LBL_23:
				;
			}
LBL_22:
			;
		}
LBL_21:
		;
	}
	printf(" ** ** LOOP2 **\n");
	printf(" RSUM= %g\n",RSUM);
	printf(" CEC \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" (%g,%g) ",CEC(i,j,k).real,CEC(i,j,k).imag);
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" RA \n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",RA(i));
	}
	printf("\n");
	printf(" DA \n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",DA(i));
	}
	printf("\n");
	ID3 = 0;
	RSUM = 0.0;
	for(I1=1; I1<=10; I1++)
	{
		RSUM = RSUM + RA(I1) * DA(I1);
		if(ID3 == 0) goto LBL_34;
		RSUM = RSUM - 1;
		goto LBL_34;
LBL_35:
		;
		ID3 = ID3 + 1;
		for(I2=1; I2<=10; I2++)
		{
			for(I3=1; I3<=10; I3++)
			{
				RC(I3,I2,I1) = RC(I3,I2,I1) + DC(I3,I2,I1);
LBL_33:
				;
			}
LBL_32:
			;
		}
		if(ID3 > 4) goto LBL_36;
		RSUM = RSUM + 1.5;
		goto LBL_36;
LBL_34:
		;
		L4A(I1) = 0 | LBA(I1);
		LBA(I1) = 0;
		goto LBL_35;
LBL_36:
		;
		if(L4A(I1) == LBA(I1) == 1)
		{
			printf(" ** * LOOP3 * IF STATEMENT **\n");
		}
LBL_31:
		;
	}
	printf(" **  ** LOOP3 ** \n");
	printf(" RSUM= %g\n",RSUM);
	printf(" RC \n");
	for(k=1; k<=10; k++)
	{
		for(j=1;j <=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",RC(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" L4A \n");
	for(i=1; i<=10; i++)
	{
		printf(" %lu ",L4A(i));
	}
	printf("\n");
	printf(" L4B \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %lu ",L4B(i,j));
		}
		printf("\n");
	}
	printf("\n");
	exit (0);
}
