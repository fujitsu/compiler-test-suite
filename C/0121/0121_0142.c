#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB(COMPLEX8 cec[10][10][10], long int N, double dc[10][10][10]);
#define RA(i) ra[i-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i,j,k) rc[i-1][j-1][k-1]
#define DB(i,j) db[i-1][j-1]
#define DC(i,j,k) dc[i-1][j-1][k-1]
#define CEA(i) cea[i-1]
#define CEB(i,j) ceb[i-1][j-1]
#define CEC(i,j,k) cec[i-1][j-1][k-1]
#define L4C(i,j,k) l4c[i-1][j-1][k-1]
float ra[20],rb[20][20],rc[10][10][10];
double db[10][10],dc[10][10][10];
COMPLEX8 cea[20],ceb[10][10],cec[10][10][10];
unsigned long int l4c[10][10][10];
int main()
{
	long int J1=1;
	long int ID1,I1,I2,I3,i,j,k;
	short int m;
	float RSUM,DIF,RMIN=0.0;

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
	for(i=0; i<20; i++)
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
	RSUM = 0.0;
	ID1 = 10;
	for(I1=1; I1<=10; I1++)
	{
		ID1 = ID1 + 1;
		RA(I1*J1+10) = RA(ID1) + fabs(CEA(ID1).real);
		for(I2=1; I2<=10; I2++)
		{
			RB(I2*J1+10,I2*J1+10) = DB(I2,I1);
LBL_12:
			;
		}
		RSUM = RSUM + RA(I1*J1+10);
LBL_11:
		;
	}
	printf(" ****LOOP1**\n");
	printf(" RA \n");
	for(i=1; i<=20; i++)
	{
		printf(" %g ",RA(i));
	}
	printf("\n");
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
	for(I1=1;I1<=9;I1++)
	{
		if(I1 == 5 || I1 == 8)
		{
			RA(I1) = I1 / 2;
		}
		else
		{
			RA(I1) = I1 / (I1-5) + I1 / (I1-8);
		}
		for(I2=1; I2<=10; I2++)
		{
			for(I3=1; I3<=10; I3++)
			{
				SUB(cec,10,dc);
				RC(I2,I3,I1) = DC(I2,I3,I1) * 2;
				DC(I2,I3,I1) = RC(I2,I3,I1+1);
				if(L4C(I2,I3,I1) == 1)
				{
					if(I2 > I3)
					{
						L4C(I2,I3,I1) = 0;
					}
				}
LBL_23:
				;
			}
LBL_22:
			;
		}
		DIF = RMIN - RA(I1);
		if(DIF < 0) goto LBL_21;
		goto LBL_26;
LBL_26:
		;
		RMIN = RA(I1);
		j = I1;
LBL_21:
		;
	}
	printf(" ****LOOP2**\n");
	printf(" RMIN= %g\n",RMIN);
	printf(" j= %ld\n",j);
	printf(" L4C \n");
	m = 0;
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %lu ",L4C(i,j,k));
				m++;
				if(m == 25)
				{
					printf("\n");
					m = 0;
				}
			}
		}
	}
	printf("\n");
	printf(" RC \n");
	m = 0;
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",RC(i,j,k));
				m++;
				if(m == 25)
				{
					printf("\n");
					m = 0;
				}
			}
		}
	}
	printf("\n");
	printf(" DC \n");
	m = 0;
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",DC(i,j,k));
				m++;
				if(m == 25)
				{
					printf("\n");
					m = 0;
				}
			}
		}
	}
	printf("\n");
	for(I1=1; I1<=9; I1++)
	{
		for(I2=1; I2<=10; I2++)
		{
			for(I3=1; I3<=10; I3++)
			{
				RC(I1,I2,I3) = RC(I1+1,I2,I3);
				RB(I1,I2) = fabs(CEB(I1,I2).real);
LBL_33:
				;
			}
			DB(I2,I1) = RB(I1,I2);
LBL_32:
			;
		}
LBL_31:
		;
	}
	printf(" ****LOOP3**\n");
	printf(" RC \n");
	m = 0;
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",RC(i,j,k));
				m++;
				if(m == 25)
				{
					printf("\n");
					m = 0;
				}
			}
		}
	}
	printf("\n");
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
	exit (0);
}
#define CEC(i,j,k) cec[i-1][j-1][k-1]
#define DC(i,j,k) dc[i-1][j-1][k-1]
#define RC(i,j,k) rc[i-1][j-1][k-1]
#define IL(i) il[i-1]
int SUB(cec,N,dc)
double dc[10][10][10];
COMPLEX8 cec[10][10][10];
long int N;
{
	long int il[10];
	long int I3,I2,I1,i,j,k;
	short int m=0;

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
	for(i=0; i<10; i++)
	{
		m++;
		il[i] = m;
	}
	for(I1=1; I1<=N; I1++)
	{
		for(I2=N+1; I2<=0; I2++)
		{
			for(I3=1; I3<=N; I3++)
			{
				if(IL(I1) <= 8 && IL(I2) <= 8 && IL(I3) <= 8)
				{
					CEC(I3,I2,I1).real = (float)(RC(I3,I2,I1));
					CEC(I3,I2,I1).imag = (float)(RC(I3,I2,I1));
				}
				else
				{
					CEC(I3,I2,I1).real = 0.0;
					CEC(I3,I2,I1).imag = 0.0;
				}
LBL_11:
				;
				DC(I3,I2,I1) = fabs(CEC(I3,I2,I1).real);
			}
		}
	}
	return 0;
}
