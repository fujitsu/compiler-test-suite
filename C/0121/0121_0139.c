#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i) ra[i-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i,j,k) rc[i-1][j-1][k-1]
#define DB(i,j) db[i-1][j-1]
#define DC(i,j,k) dc[i-1][j-1][k-1]
#define CEB(i,j) ceb[i-1][j-1]
#define LBB(i,j) lbb[i-1][j-1]
#define L4B(i,j) l4b[i-1][j-1]
#define L4C(i,j,k) l4c[i-1][j-1][k-1]
float ra[10],rb[10][10],rc[10][10][10];
double db[10][10],dc[10][10][10];
COMPLEX8 ceb[10][10];
unsigned char lbb[10][10];
unsigned long int l4b[10][10],l4c[10][10][10];
int SUB(float ra[10], float rb[10][10], float rc[10][10][10], long int N);
int main()
{
	long int J1=1;
	float RSUM=0;
	long int I3,I2,I1,i,j,k;
	float RS1,RS2;

	for(i=0; i<10; i++)
	{
		ra[i]=1;
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
	for(j=0; j<10; j++)
	{
		for(i=0; i<10; i++)
		{
			ceb[i][j].real = 1;
			ceb[i][j].imag = 1;
		}
	}
	for(j=0; j<10; j++)
	{
		for(i=0; i<10; i++)
		{
			lbb[i][j] = 1;
		}
	}
	for(j=0; j<10; j++)
	{
		for(i=0; i<10; i++)
		{
			l4b[i][j] = 1;
		}
	}
	for(k=0; k<10; k++)
	{
		for(j=0; j<10; j++)
		{
			for(i=0; i<10; i++)
			{
				l4c[i][j][k] = 1;
			}
		}
	}
	for(I1=1; I1<=10; I1++)
	{
		for(I2=1; I2<=10; I2++)
		{
			for(I3=1; I3<=10; I3++)
			{
				RC(I3,I2,I1) = RC(I3,I2,I1) + DC(I3,I2,I1);
				if(L4C(I3,I2,I1) == 1) goto LBL_13;
				if(I3 > 2 && I3 < 8)
				{
					DC(I3*J1-1,I2,I1) = RC(I3,I2,I1) + 1;
				}
				else
				{
					DC(I3*J1-1,I2,I1) = 0;
				}
LBL_13:
				;
			}
			RB(I2,I1) = CEB(I2,I1).real;
			RS1 = RB(I2,I1) * 2;
			RS2 = RB(I2,I1) * 4 - 10;
			if(RS1 > RS2)
			{
				CEB(I2,I1).real = (float)(RS1);
				CEB(I2,I1).imag = (float)(RS2);
				DB(I2,I1) = RS1 + RS2;
			}
			else
			{
				CEB(I2,I1).real = 0.0;
				CEB(I2,I1).imag = 0.0;
				DB(I2,I1) = 0.0;
			}
LBL_12:
			;
		}
LBL_11:
		;
	}
	printf(" **  ** LOOP1 **\n");
	printf(" RC \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",RC(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" DC \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",DC(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
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
	printf(" CEB \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" (%g,%g) ",CEB(i,j).real,CEB(i,j).imag);
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
	printf(" RSUM= %g\n",RSUM);
	for(I1=1; I1<=10; I1++)
	{
		for(I2=1; I2<=10; I2++)
		{
			RB(I1,I2) = I1 + I2;
			CEB(I1,I2).real = (float)(RB(I1,I2));
			CEB(I1,I2).imag = (float)(RA(I2));
			RA(I2) = I2;
			L4B(I1,I2) = 1;
			LBB(I1,I2) = I1 > I2;
			for(I3=1;I3<=7;I3++)
			{
				RC(I2,I1,I3) = I1 + I2 + I3;
				DC(I2,I1,I3) = RC(I2,I1,10);
LBL_23:
				;
			}
LBL_22:
			;
		}
LBL_21:
		;
	}
	printf(" **** LOOP2 **\n");
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
	printf(" CEB \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" (%g,%g) ",CEB(i,j).real,CEB(i,j).imag);
		}
		printf("\n");
	}
	printf("\n");
	printf(" RA \n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",RA(i));
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
	printf(" LBB \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %u ",LBB(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" RC \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",RC(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" DC \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",DC(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	for(I1=1; I1<=10; I1++)
	{
		if(I1 > 7) goto LBL_33;
		for(I2=1; I2<=10; I2++)
		{
			RB(I2,I1) = RB(I2,I1) * CEB(I2,I1).real;
LBL_32:
			;
		}
LBL_33:
		;
		SUB(ra,rb,rc,10);
LBL_31:
		;
	}
	printf(" **  ** LOOP3 **\n");
	printf(" RA \n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",RA(i));
	}
	printf("\n");
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
	printf(" RC \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",RC(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	exit (0);
}
int SUB(ra,rb,rc,N)
float ra[10],rb[10][10],rc[10][10][10];
long int N;
{
	float RSUM=0.0;
	long int I3,I2,I1,i,j,k;

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
	for(I1=1; I1<=N; I1++)
	{
		for(I2=1; I2<=N; I2++)
		{
			for(I3=1; I3<=N; I3++)
			{
				RB(I3,I2) = DB(I3,I2) + 1;
				RC(I3,I2,I3) = DC(I3,I2,I1) + 2;
LBL_13:
				;
			}
LBL_12:
			;
		}
		RA(I1) = RB(I1,I1);
		RSUM = RSUM + RA(I1);
LBL_11:
		;
	}
	printf(" **** SUB **\n");
	printf(" RA \n");
	for(i=1; i<=N; i++)
	{
		printf(" %f ",RA(i));
	}
	printf("\n");
	printf(" RB \n");
	for(j=1; j<=N; j++)
	{
		for(i=1; i<=N; i++)
		{
			printf(" %f ",RB(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" RC \n");
	for(k=1; k<=N; k++)
	{
		for(j=1; j<=N; j++)
		{
			for(i=1; i<=N; i++)
			{
				printf(" %f ",RC(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" RSUM= %g\n",RSUM);
	return 0;
}
