#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i) ra[i-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i,j,k) rc[i-1][j-1][k-1]
#define RD(i,j,k,l) rd[i-1][j-1][k-1][l-1]
#define DB(i,j) db[i-1][j-1]
#define DC(i,j,k) dc[i-1][j-1][k-1]
#define QD(i,j,k,l) qd[i-1][j-1][k-1][l-1]
#define CEB(i,j) ceb[i-1][j-1]
#define CEC(i,j,k) cec[i-1][j-1][k-1]
#define CQD(i,j,k,l) cqd[i-1][j-1][k-1][l-1]
#define LBC(i,j,k) lbc[i-1][j-1][k-1]
#define L4B(i,j) l4b[i-1][j-1]
#define L4C(i,j,k) l4c[i-1][j-1][k-1]
#define IL(i) il[i-1]
float ra[10],rb[10][10],rc[10][10][10],rd[10][10][10][10];
double db[10][10],dc[10][10][10];
long double qd[10][10][10][10];
COMPLEX8 ceb[10][10],cec[10][10][10];
COMPLEX32 cqd[10][10][10][10];
unsigned char lbc[10][10][10];
unsigned long int l4b[10][10],l4c[10][10][10];
long int il[10];
int main()
{
	float RSUM=0;
	long int I2,I1,I3,I4,ID1,i,j,k,l;
	short int m;
	float RS1,DIF;

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
	for(l=0; l<10; l++)
	{
		for(k=0; k<10; k++)
		{
			for(j=0; j<10; j++)
			{
				for(i=0; i<10; i++)
				{
					qd[i][j][k][l] = 1;
				}
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
	for(l=0; l<10; l++)
	{
		for(k=0; k<10; k++)
		{
			for(j=0; j<10; j++)
			{
				for(i=0; i<10; i++)
				{
					cqd[i][j][k][l].qreal = 1;
					cqd[i][j][k][l].qimag = 1;
				}
			}
		}
	}
	for(k=0; k<10; k++)
	{
		for(j=0; j<10; j++)
		{
			for(i=0; i<10; i++)
			{
				lbc[i][j][k] = 1;
			}
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
	m = 1;
	for(i=0; i<10; i++)
	{
		il[i] = m;
		m++;
	}
	for(I1=1; I1<=10; I1++)
	{
		for(I2=1; I2<=10; I2++)
		{
			RB(I2,I1) = RB(I1,I2) + CEB(I1,I2).real;
			if(IL(I2) > 2 && IL(I2) <= 8)
			{
				DB(I1,I2) = RA(I2-1) + RA(I2-2);
				DB(I1,I2) = DB(I1,I2) + 1.0;
			}
			for(I3=1;I3<=10;I3++)
			{
				DC(I3,I2,I1) = RC(I3,I1,I1);
				CEC(I3,I2,I1).real = (float)(RC(I1,I1,I1));
				CEC(I3,I2,I1).imag = (float)(RC(I2,I2,I3));
				RS1 = fabs(CEC(I3,I2,I1).real);
				DIF = RB(1,1) - RS1;
				if(DIF < 0) goto LBL_15;
				goto LBL_16;
LBL_16:
				;
				RA(1) = RS1;
LBL_15:
				;
				for(I4=1; I4<=I3; I4++)
				{
					if(IL(I3) > IL(I2))
					{
						QD(I4,I3,I2,I1) = RB(1,1);
						CQD(I4,I3,I2,I1).qreal = RB(1,1);
						CQD(I4,I3,I2,I1).qimag = 0;
					}
					RC(I3,I2,I1) = RB(I2,I4);
LBL_14:
					;
				}
LBL_13:
				;
			}
LBL_12:
			;
		}
LBL_11:
		;
	}
	printf(" **  ** LOOP1 **\n");
	printf(" ### QD ###\n");
	for(l=1; l<=10; l++)
	{
		for(k=1; k<=10; k++)
		{
			for(j=1; j<=10; j++)
			{
				for(i=1; i<=10; i++)
				{
					printf(" %g ",(double)QD(i,j,k,l));
				}
				printf("\n");
			}
		}
	}
	printf("\n");
	printf(" ### CQD ###\n");
	for(l=1; l<=10; l++)
	{
		for(k=1; k<=10; k++)
		{
			for(j=1; j<=10; j++)
			{
				for(i=1; i<=10; i++)
				{
					printf(" (%g,%g) ",(double)CQD(i,j,k,l).qreal,
					    (double)CQD(i,j,k,l).qimag);
				}
				printf("\n");
			}
		}
	}
	printf("\n");
	printf(" ### RC ###\n");
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
	printf(" ### RA ###\n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",RA(i));
	}
	printf("\n");
	printf(" ### DC ###\n");
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
	printf(" ### CEC ###\n");
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
	printf(" ### DB ###\n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g ",DB(i,j));
		}
		printf("\n");
	}
	printf("\n");
	ID1 = 0;
	for(I1=1; I1<=10; I1++)
	{
		for(I2=1; I2<=7; I2++)
		{
			RB(I1,I2) = RB(I1,I2) * DB(I2,I1);
			if((RB(I1,I2) > 5.0) || (RB(I1,I2) < -5.0))
			{
				RB(I1,I2) = 0.0;
				L4B(I1,I2) = 0;
			}
			else
			{
				L4B(I1,I2) = 1;
			}
			L4B(I1,I2) = L4C(I1,I2,I2) != L4B(I1,I2);
			RB(I1,I2) = RB(I1,I2) * 1.5;
			L4C(I1,I2,I2) = 1 ^ L4B(I1,I2);
			LBC(I1,I2,I2) = 1 ^ L4B(I1,I2);
			for(I3=1; I3<=10; I3++)
			{
				for(I4=10; I4>=1; I4-=1)
				{
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) * 2 + RB(I1,I2);
LBL_24:
					;
				}
LBL_23:
				;
			}
			RA(I1) = RB(I1,I2);
			ID1 = ID1 + 1;
			if(ID1 == 50)
			{
				printf(" ** LOOP2 *\n");
				printf(" ID1= %ld\n",ID1);
			}
LBL_22:
			;
		}
LBL_21:
		;
	}
	printf(" **** LOOP2 **\n");
	printf(" RSUM= %g\n",RSUM);
	printf(" ### RD ###\n");
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
	printf(" ### L4B ###\n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %lu ",L4B(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" ### L4C ###\n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %lu ",L4C(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" ### LBC ###\n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %u ",LBC(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	exit (0);
}
