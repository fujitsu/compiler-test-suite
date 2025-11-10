#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i) ra[i-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i,j,k) rc[i-1][j-1][k-1]
#define DA(i) da[i-1]
#define DB(i,j) db[i-1][j-1]
#define DC(i,j,k) dc[i-1][j-1][k-1]
#define QA(i) qa[i-1]
#define QB(i,j) qb[i-1][j-1]
#define QC(i,j,k) qc[i-1][j-1][k-1]
#define CEA(i) cea[i-1]
#define CEB(i,j) ceb[i-1][j-1]
#define CEC(i,j,k) cec[i-1][j-1][k-1]
#define CDA(i) cda[i-1]
#define CDB(i,j) cdb[i-1][j-1]
#define CDC(i,j,k) cdc[i-1][j-1][k-1]
#define LBB(i) lbb[i-1]
#define L4A(i) l4a[i-1]
#define L4B(i,j) l4b[i-1][j-1]
float ra[10],rb[10][10],rc[10][10][10];
double da[10],db[10][10],dc[10][10][10];
long double qa[10],qb[10][10],qc[10][10][10];
COMPLEX8 cea[10],ceb[10][10],cec[10][10][10];
COMPLEX16 cda[10],cdb[10][10],cdc[10][10][10];
unsigned char lbb[10];
unsigned long int l4a[10],l4b[10][10];
int main()
{
	char SB[20] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	float RSUM=0;
	float RSM1=0;
	long int ID1,I1,I2,I3,i,j,k;
	short int m;

	for(i=0; i<11; i++)
	{
		SB[i] = 'B';
	}
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
		qa[i] = 1;
	}
	for(j=0; j<10; j++)
	{
		for(i=0; i<10; i++)
		{
			qb[i][j] = 1;
		}
	}
	for(k=0; k<10; k++)
	{
		for(j=0; j<10; j++)
		{
			for(i=0; i<10; i++)
			{
				qc[i][j][k] = 1;
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
		cda[i].dreal = 1;
		cda[i].dimag = 1;
	}
	for(j=0; j<10; j++)
	{
		for(i=0; i<10; i++)
		{
			cdb[i][j].dreal = 1;
			cdb[i][j].dimag = 1;
		}
	}
	for(k=0; k<10; k++)
	{
		for(j=0; j<10; j++)
		{
			for(i=0; i<10; i++)
			{
				cdc[i][j][k].dreal = 1;
				cdc[i][j][k].dimag = 1;
			}
		}
	}
	for(i=0; i<10; i++)
	{
		lbb[i] = 1;
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
	ID1=0;
	for(I1=10; I1>=1; I1-=1)
	{
		ID1 = ID1 + 1;
		RSUM = RSUM + RA(ID1);
		if((ID1 > 7 || L4A(ID1) || I1) == 3) goto LBL_15;
		QA(ID1) = RA(ID1) - QA(I1);
LBL_16:
		;
		DA(ID1) = 0.0;
		CEA(ID1).real = 0.0;
		CEA(ID1).imag = 0.0;
		CDA(ID1).dreal = 0.0;
		CDA(ID1).dimag = 0.0;
		goto LBL_17;
LBL_15:
		;
		if(LBB(ID1) != LBB(I1) == 1) goto LBL_16;
LBL_17:
		;
		for(I2=1; I2<=10; I2++)
		{
			for(I3=1; I3<=10; I3++)
			{
				RC(I2,I3,I1) = RC(I2,I3,I1) + RB(I2,I3);
				DC(I2,I3,I1) = RC(I2,I3,I1);
LBL_13:
				;
			}
			CEB(I2,I1).real = (float)(RA(I2)) * CEB(I2,I1).real;
			CEB(I2,I1).imag = (float)(RA(I1)) * CEB(I2,I1).imag;
			if((CEB(I2,I1).imag) >= 3 || (CEB(I2,I1).real) >= 4)
			{
				RB(I2,I1) = fabs(CEB(I2,I1).real) - 3;
			}
			else
			{
				RB(I2,I1) = fabs(CEB(I2,I1).real);
			}
LBL_12:
			;
		}
		RSM1 = RSM1 + RA(I1);
LBL_11:
		;
	}
	printf(" **** LOOP1 **\n");
	printf(" RSUM= %g RSM1= %g\n",RSUM,RSM1);
	printf(" QA , DA , CEA , CDA \n");
	m = 0;
	for(i=1; i<=10; i++)
	{
		printf(" %g %g (%g,%g) (%g,%g) ",(double)QA(i),DA(i),
		    CEA(i).real,CEA(i).imag,CDA(i).dreal,CDA(i).dimag);
		m++;
		if(m == 4)
		{
			printf("\n");
			m = 0;
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
	for(I1=-10; I1<=-1; I1++)
	{
		if(RA(abs(I1)) != 0)
		{
			QA(abs(I1)) = QA(-I1) + 1;
			DA(abs(I1)) = DA(-I1) + 1;
			CEA(abs(I1)).real = CEA(-I1).real + 1;
			CEA(abs(I1)).imag = CEA(-I1).imag + 1;
			CDA(abs(I1)).dreal = CDA(-I1).dreal + 1;
			CDA(abs(I1)).dimag = CDA(-I1).dimag + 1;
		}
		else
		{
			strcat(SB,"A");
		}
		for(I2=1; I2<=10; I2++)
		{
			if(RB(abs(I1),I2) >= 1)
			{
				if(L4B(abs(I1),I2) == 1)
				{
					CEB(abs(I1),I2).real = (float)(RB(-I1,I2));
					CEB(abs(I1),I2).imag = (float)(I2);
				}
			}
			for(I3=1; I3<=3; I3++)
			{
				if(RC(abs(I1),I2,I3) >= 1)
				{
					QC(abs(I1),I2,I3) = QB(I2,-I1) + QA(I3);
					DC(abs(I1),I2,I3) = DB(I2,-I1) + DA(I3);
					CEC(abs(I1),I2,I3).real = CEB(I2,-I1).real
					    + CEA(I3).real;
					CEC(abs(I1),I2,I3).imag = CEB(I2,-I1).imag
					    + CEA(I3).imag;
					CDC(abs(I1),I2,I3).dreal = CDB(I2,-I1).dreal
					    + CDA(I3).dreal;
					CDC(abs(I1),I2,I3).dimag = CDB(I2,-I1).dimag
					    + CDA(I3).dimag;
					RSUM = RSUM + DC(abs(I1),I2,I3);
				}
				else
				{
					RSUM = RSUM + CEC(abs(I1),I2,I3).real;
				}
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
	printf(" QA , DA , CEA , CDA \n");
	m = 0;
	for(i=1; i<=10; i++)
	{
		printf(" %g %g (%g,%g) (%g,%g) ",(double)QA(i),DA(i),
		    CEA(i).real,CEA(i).imag,CDA(i).dreal,CDA(i).dimag);
		m++;
		if(m == 4)
		{
			printf("\n");
			m = 0;
		}
	}
	printf("\n");
	printf(" %s\n",SB);
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
	printf(" QC , DC , CEC , CDC \n");
	m = 0;
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10;i++)
			{
				printf(" %g  %g (%g,%g) (%g,%g) ",(double)QC(i,j,k),DC(i,j,k),
				    CEC(i,j,k).real,CEC(i,j,k).imag,
				    CDC(i,j,k).dreal,CDC(i,j,k).dimag);
				m++;
				if(m == 4)
				{
					printf("\n");
					m = 0;
				}
			}
		}
	}
	printf("\n");
	printf(" RSUM= %g\n",RSUM);
	exit (0);
}
