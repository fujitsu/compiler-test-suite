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
#define QA(i) qa[i-1]
#define QB(i,j) qb[i-1][j-1]
#define CEB(i,j) ceb[i-1][j-1]
#define CEC(i,j,k) cec[i-1][j-1][k-1]
#define CDA(i) cda[i-1]
#define CQA(i) cqa[i-1]
#define LBA(i) lba[i-1]
#define LBB(i,j) lbb[i-1][j-1]
#define L4A(i) l4a[i-1]
#define L4B(i,j) l4b[i-1][j-1]
#define L4C(i,j,k) l4c[i-1][j-1][k-1]
#define IC(i,j,k) ic[i-1][j-1][k-1]
#define IL(i) il[i-1]
#define RE(i,j,k) re[i-1][j-1][k-1]
float ra[10],rb[10][10],rc[10][10][10],rd[10][10][10][10];
double da[10],db[10][10];
long double qa[10],qb[10][10];
COMPLEX8 ceb[10][10],cec[10][10][10];
COMPLEX16 cda[10];
COMPLEX32 cqa[10];
unsigned char lba[10],lbb[10][10];
unsigned long int l4a[10],l4b[10][10],l4c[10][10][10];
long int ic[10][10][10];
long int il[8];
float re[10][10][10];
int main()
{
	long int ID1,I1,I2,I3,ID2,ID0,I4,I6,I7,I5,i,j,k,l,WI;
	short int m;

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
	for(k=0; k<10; k++)
	{
		for(j=0; j<10; j++)
		{
			for(i=0; i<10; i++)
			{
				l4c[i][j][k]=1;
			}
		}
	}
	for(k=0; k<10; k++)
	{
		for(j=0; j<10; j++)
		{
			for(i=0; i<10; i++)
			{
				ic[i][j][k] = 1;
			}
		}
	}
	m = 2;
	for(i=0; i<8; i++)
	{
		il[i] = m;
		m++;
	}
	for(k=0; k<10; k++)
	{
		for(j=0; j<10; j++)
		{
			for(i=0; i<10; i++)
			{
				re[i][j][k] = 1.0;
			}
		}
	}
	ID1 = 0;
	for(I1=1; I1<=10; I1++)
	{
		for(I2=1; I2<=7; I2++)
		{
			for(I3=1; I3<=I2; I3++)
			{
				if (I3 == I2 || I2 == I1)
				{
					CEC(I1,I2,I3).real = I1 * RA(I3) + I3 * 1;
					CEC(I1,I2,I3).imag = I1 * RA(I3) + I3 * 1;
				}
LBL_13:
				;
			}
			ID1 = ID1 + 1;
			if(ID1 > 10) goto LBL_12;
			RB(I1,ID1) = RA(I1) + RA(ID1);
			DB(I1,I2) = DA(I1) + DA(I2);
			QB(I1,I2) = QA(I1) + QA(I2);
LBL_12:
			;
		}
LBL_11:
		;
	}
	printf(" ****** LOOP1 ** \n");
	printf(" RB , DB , QB \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g %g %g ",RB(i,j),DB(i,j),(double)QB(i,j));
			if(i == 5)
			{
				printf("\n");
			}
		}
	}
	printf("\n");
	printf(" CEC \n");
	m = 0;
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" (%g,%g) ",CEC(i,j,k).real,CEC(i,j,k).imag);
				m++;
				if(m == 8)
				{
					printf("\n");
					m = 0;
				}
			}
		}
	}
	printf("\n");
	ID1 = 0;
	for(I1=1; I1<=3; I1++)
	{
		ID2 = 0;
		for(I2=1; I2<=10; I2++)
		{
			if((L4B(I1,I2) || L4B(I1+1,I2)) == 1)
			{
				LBB(I1,I2) = 1;
				RA(I2) = I1 + I2;
			}
			else
			{
				LBB(I1,I2) = 0;
				RA(I2) = I1 * I2;
			}
			ID2 = ID2 + 1;
			if(ID2 > 10)
			{
				ID0 = ID2 - (I1-1) * 10;
			}
			else
			{
				ID0 = ID2;
			}
			CEB(I2,ID0).real = CEC(I2,ID0,I1).real;
			CEB(I2,ID0).imag = CEC(I2,ID0,I1).imag;
			for(I3=1; I3<=10; I3++)
			{
				for(I4=2; I4<=8; I4++)
				{
					if(IL(I4) <= 7)
					{
						RE(I4,I3,I2) = RA(I1) + RE(I4+1,I3,I2);
					}
LBL_24:
					;
				}
LBL_23:
				;
			}
LBL_22:
			;
		}
		printf(" ****LOOP2** I1= %ld\n",I1);
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
		printf(" RA \n");
		for(i=1; i<=10; i++)
		{
			printf(" %g ",RA(i));
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
		printf(" RE \n");
		m = 0;
		for(k=1; k<=10; k++)
		{
			for(j=1; j<=10; j++)
			{
				for(i=1; i<=10; i++)
				{
					printf(" %g ",RE(i,j,k));
					m++;
					if(m == 20)
					{
						printf("\n");
						m = 0;
					}
				}
			}
		}
		printf("\n");
		WI = I1;
		I1 = 1;
		for(I5=1; I5<=10; I5++)
		{
			for(I6=1; I6<=10; I6++)
			{
				DB(I6,I5) = DB(I1,I1);
				for(I7=I5; I7<=10; I7+=I1)
				{
					RD(I7,I6,I5,I1) = RE(I7,I6,I5) + RA(I7);
LBL_27:
					;
				}
LBL_26:
				;
			}
LBL_25:
			;
		}
		printf(" ****LOOP2-2**I1= %ld\n",I1);
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
		printf(" RD \n");
		for(l=1; l<=10; l++)
		{
			for(k=1; k<=10; k++)
			{
				for(j=1; j<=10; j++)
				{
					for(i=1; i<=10; i++)
					{
						printf(" %g ",RD(i,j,k,l));
					}
					printf("\n");
				}
			}
		}
		printf("\n");
		I1 = WI;
LBL_21:
		;
	}
	for(I1=2; I1<=8; I1++)
	{
		if(L4A(I1) == 1)
		{
			CQA(I1).qreal = RE(I1,I1,I1);
			CQA(I1).qimag = 0;
			CDA(I1).dreal = 0;
			CDA(I1).dimag = I1 * 1;
		}
		else if(LBA(I1) == 1)
		{
			CQA(I1).qreal = 0;
			CQA(I1).qimag = 0;
			CDA(I1).dreal = 0;
			CDA(I1).dimag = 0;
		}
		for(I2=1; I2<=10; I2++)
		{
			for(I3=10; I3>=2; I3-=1)
			{
				if (I3-4 < 0) goto LBL_34;
				if (I3-4 == 0) goto LBL_35;
				goto LBL_36;
LBL_34:
				;
				RC(I3,I2,I1) = CEC(I3,I2,I1).real + RB(I2,I1);
				L4C(I3,I2,I1)= 1 != L4A(I3);
				goto LBL_33;
LBL_35:
				;
				RC(I3,I2,I1) = 0.0;
				L4C(I3,I2,I1) = 1;
				goto LBL_33;
LBL_36:
				;
				RC(I3,I2,I1) = IC(I3,I2,I1);
				L4C(I3,I2,I1) = 0;
LBL_33:
				;
			}
			RA(I2) = RC(I3,I2,I1);
			RB(I2,I1) = CQA(I1).qreal;
LBL_32:
			;
		}
LBL_31:
		;
		if (I1 > 7) goto LBL_100;
	}
LBL_100:
	;
	printf("****LOOP3**\n");
	printf(" CQA \n");
	for(i=1;i<=10;i++)
	{
		printf(" (%g,%g) ",(double)CQA(i).qreal,(double)CQA(i).qimag);
	}
	printf("\n");
	printf(" CDA \n");
	for(i=1;i<=10;i++)
	{
		printf(" (%g,%g) ",CDA(i).dreal,CDA(i).dimag);
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
				if(m == 20)
				{
					printf("\n");
					m = 0;
				}
			}
		}
	}
	printf("\n");
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
	exit (0);
}
