#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i) ra[i-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i,j,k) rc[i-1][j-1][k-1]
#define DA(i) da[i-1]
#define DB(i,j) db[i-1][j-1]
#define CEB(i,j) ceb[i-1][j-1]
#define CEC(i,j,k) cec[i-1][j-1][k-1]
#define CDB(i,j) cdb[i-1][j-1]
#define LBB(i,j) lbb[i-1][j-1]
#define L4A(i) l4a[i-1]
#define L4B(i,j) l4b[i-1][j-1]
float ra[10],rb[10][10],rc[10][10][10];
double da[10],db[10][10];
COMPLEX8 ceb[10][10],cec[10][10][10];
COMPLEX16 cdb[10][10];
unsigned char lbb[10][10];
unsigned long int l4a[10],l4b[10][10];
int main()
{
	long int ID1,I2,J2,J1,I1,ID2,ID3,ID4,I3,i,j,k;
	short int m;
	float RMX,RSUM;

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
	for(j=0; j<10; j++)
	{
		for(i=0; i<10; i++)
		{
			cdb[i][j].dreal = 1;
			cdb[i][j].dimag = 1;
		}
	}
	for(j=0; j<10; j++)
	{
		for(i=0; i<10; i++)
		{
			lbb[i][j] = 1;
		}
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
	ID1 = 0;
	RMX = 0.1;
	for(I1=1; I1<=10; I1++)
	{
		for(I2=1; I2<=10; I2++)
		{
			ID1 = ID1 + 1;
			RB(I2,I1) = RA(I2) * RA(I1);
			if(RB(I2,I1)-RMX <= 0) goto LBL_13;
LBL_14:
			;
			RMX = RB(I2,I1);
			J2 = I2;
			J1 = I1;
LBL_13:
			;
			for(I3=1; I3<=10; I3++)
			{
				DB(I2,I1) = RB(I2,I1) * 2.0 + I3;
LBL_15:
				;
			}
			CEB(I1,I2).real = (float)(RA(I1));
			CEB(I1,I2).imag = (float)(RA(I2));
			if(fabs(CEB(I1,I2).real) > 2.0)
			{
				CEB(I1,I2).real = 0.0;
				CEB(I1,I2).imag = 0.0;
				CDB(I1,I2).dreal = CEB(I1-1,I2-1).real;
				CDB(I1,I2).dimag = CEB(I1-1,I2-1).imag;
			}
			else
			{
				CDB(I1,I2).dreal = 0.0;
				CDB(I1,I2).dimag = 0.0;
			}
LBL_12:
			;
		}
LBL_11:
		;
	}
	printf(" ****LOOP1**\n");
	printf(" RB , DB , CEB ,CDB \n");
	m = 0;
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g,%g,(%g,%g),(%g,%g) ",RB(i,j),DB(i,j),
			    CEB(i,j).real,CEB(i,j).imag,
			    CDB(i,j).dreal,CDB(i,j).dimag);
			m++;
			if(m == 4)
			{
				printf("\n");
				m = 0;
			}
		}
	}
	printf("\n");
	printf(" RMX= %g J2= %ld J1= %ld\n",RMX,J2,J1);
	ID2 = 0;
	ID3 = 0;
	RSUM = 0.0;
	for(I1=1; I1<=10; I1++)
	{
		for(I2=1; I2<=10; I2++)
		{
			ID2 = ID2 + 1;
			RSUM = RSUM + ID2 + RB(I1,I2);
			RC(I1,I2,I2) = RC(I1,I2,I2) + RB(I1,I2);
			RB(I1,I2) = 0.0;
			if(RC(I1,I2,I2) != 1)
			{
				goto LBL_23;
			}
			else
			{
				L4B(I1,I2) = 0;
			}
			L4B(I1,I2) = 1;
LBL_23:
			;
			LBB(I1,I2) = L4B(I1,I2) != LBB(I1,I2);
LBL_22:
			;
		}
		ID3 = ID3 + 1;
		RA(ID3) = RB(I1,I1);
		if(ID3 == 5)
		{
			L4A(ID3) = L4B(I1,I1) != LBB(I1,I1);
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
	printf(" RSUM= %g\n",RSUM);
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
	printf(" L4A \n");
	for(i=1; i<=10; i++)
	{
		printf(" %lu ",L4A(i));
	}
	printf("\n");
	ID4 = 0;
	for(I1=1; I1<=10; I1++)
	{
		ID4 = ID4 + 1;
		if(ID4 >= 11 && ID4 <= 0) goto LBL_34;
		RA(I1) = ID1 + I1;
		DA(ID4) = RA(I1) * 1.5;
LBL_34:
		;
		for(I2=1; I2<=I1; I2++)
		{
			CEB(I2,I1).real = (float)(RA(I1));
			CEB(I2,I1).imag = (float)(RA(I2));
			for(I3=1; I3<=10; I3++)
			{
				CEC(I3,I2,I1).real = RA(I1) * CEB(I2,I1).real
				    + RC(I3,I2,I1);
				CEC(I3,I2,I1).imag = RA(I1) * CEB(I2,I1).imag
				    + RC(I3,I2,I1);
LBL_33:
				;
			}
LBL_32:
			;
		}
LBL_31:
		;
	}
	printf(" ****LOOP3**\n");
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
	exit (0);
}
