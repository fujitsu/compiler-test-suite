#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i,j,k) r.ra[i-1][j-1][k-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i) rc[i-1]
#define RD(i,j,k) r.rd[i-1][j-1][k-1]
#define RE(i,j) re[i-1][j-1]
#define DA(i,j,k) da[i-1][j-1][k-1]
#define DB(i,j) db[i-1][j-1]
#define DC(i) dc[i-1]
#define QA(i,j,k) qa[i-1][j-1][k-1]
#define QB(i,j) qb[i-1][j-1]
#define QC(i) qc[i-1]
#define HA(i,j,k) ha[i-1][j-1][k-1]
#define HB(i,j) hb[i-1][j-1]
#define HC(i) hc[i-1]
#define IA(i,j,k) ia[i-1][j-1][k-1]
#define IB(i,j) ib[i-1][j-1]
#define IC(i) ic[i-1]
#define IL(i) il[i-1]
#define CEA(i,j,k) cea[i-1][j-1][k-1]
#define CEB(i,j) ceb[i-1][j-1]
#define CEC(i) cec[i-1]
#define CDA(i,j,k) cd.cda[i-1][j-1][k-1]
#define CDB(i,j) cdb[i-1][j-1]
#define CDC(i) cdc[i-1]
#define CDD(i,j,k) cd.cdd[i-1][j-1][k-1]
#define CQA(i,j,k) cqa[i-1][j-1][k-1]
#define CQB(i,j) cqb[i-1][j-1]
#define CQC(i) cqc[i-1]
#define LBA(i,j,k) lba[i-1][j-1][k-1]
#define LBB(i,j) lbb[i-1][j-1]
#define LBC(i) lbc[i-1]
#define L4A(i,j,k) l4a[i-1][j-1][k-1]
#define L4B(i,j) l4b[i-1][j-1]
#define L4C(i) l4c[i-1]
#define SA(i) sa[i-1]
#define SB(i) sb[i-1]
union{
	float ra[10][10][10];
	float rd[10][10][10];
} r;
union{
	COMPLEX16 cda[10][10][10];
	COMPLEX16 cdd[10][10][10];
} cd;

float       rb[10][10],rc[10],re[10][10];
double      da[10][10][10],db[10][10],dc[10];
long double qa[10][10][10],qb[10][10],qc[10];
short int   ha[10][10][10],hb[10][10],hc[10];
long int    ia[10][10][10],ib[10][10],ic[10],il[10];
COMPLEX8    cea[10][10][10],ceb[10][10],cec[10];
COMPLEX16   cdb[10][10],cdc[10];
COMPLEX32   cqa[10][10][10],cqb[10][10],cqc[10];
unsigned char     lba[10][10][10],lbb[10][10],lbc[10];
unsigned long int l4a[10][10][10],l4b[10][10],l4c[10];
char sa[10] = {
	"ABCDE"};
char sb[20] = {
	"ABCDEEF4"};
int main()
{
	float    DMIN=1000.0;
	long int J1=1;
	long int J2=2;
	long int J3=3;
	long int J4=4;
	long int ID1,I1,ID2,ID3,I2,I3,i,j,k,I,J;
	float    RMX,DIF,RMIN,RSUM;

	for(k=0 ; k<10 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				r.ra[i][j][k]=1.0;
			}
		}
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			rb[i][j]=2.0;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		rc[i]=3.0;
	}
	for(k=0 ; k<10 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				r.rd[i][j][k]=1.0;
			}
		}
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			re[i][j]=2.0;
		}
	}
	for(k=0 ; k<10 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				da[i][j][k]=1.0;
			}
		}
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			db[i][j]=2.0;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		dc[i]=3.0;
	}
	for(k=0 ; k<10 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				qa[i][j][k]=1.0;
			}
		}
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			qb[i][j]=2.0;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		qc[i]=3.0;
	}
	for(k=0 ; k<10 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				ha[i][j][k]=1;
			}
		}
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			hb[i][j]=2;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		hc[i]=3;
	}
	for(k=0 ; k<10 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				ia[i][j][k]=1;
			}
		}
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			ib[i][j]=2;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		ic[i]=3;
	}
	j = 1;
	for(i=0 ; i<10 ; i++)
	{
		il[i]= j;
		j = j+1;
	}
	for(k=0 ; k<10 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				cea[i][j][k].real=1.0;
				cea[i][j][k].imag=1.0;
			}
		}
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			ceb[i][j].real=2.0;
			ceb[i][j].imag=1.0;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		cec[i].real=1.0;
		cec[i].imag=2.0;
	}
	for(k=0 ; k<10 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				cd.cda[i][j][k].dreal=1.0;
				cd.cda[i][j][k].dimag=1.0;
			}
		}
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			cdb[i][j].dreal=2.0;
			cdb[i][j].dimag=1.0;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		cdc[i].dreal=1.0;
		cdc[i].dimag=2.0;
	}
	for(k=0 ; k<10 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				cqa[i][j][k].qreal=1.0;
				cqa[i][j][k].qimag=1.0;
			}
		}
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			cqb[i][j].qreal=2.0;
			cqb[i][j].qimag=1.0;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		cqc[i].qreal=1.0;
		cqc[i].qimag=2.0;
	}
	for(k=0 ; k<10 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				lba[i][j][k]=1;
			}
		}
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			lbb[i][j]=1;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		lbc[i]=1;
	}
	for(k=0 ; k<10 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				l4a[i][j][k]=1;
			}
		}
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			l4b[i][j]=1;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		l4c[i]=1;
	}

	RMX =0;
	ID1 =1;
	for(I1=8 ; I1>=2 ; I1-=1)
	{
		if (L4A(I1,I1,I1)  !=  L4B(ID1,ID1)  ||  LBA(I1,I1,I1)==1)
		{
			printf(" ***  **SFGC.2**\n");
			printf(" RD(ID1,ID1,ID1)= %g  \n",RD(ID1,ID1,ID1));
		}
		DIF = RMX-RC(I1);
		if (DIF >= 0)  goto LBL_12;
		RMX = RC(I1);
		RC(I1) = RC(I1) -1.0;
LBL_12:
		;
		ID2  =1;
		RMIN =1000.0;
		if (I1 >  8)  goto LBL_13 ;
		for(I2=2 ; I2<=8 ; I2++)
		{
			ID2 = ID2+J1 * J2-1;
			RB(ID1,ID2) = RB(ID2,ID1);
			CEB(ID1,ID2).real = CEB(ID2,ID1).real;
			CEB(ID1,ID2).imag = CEB(ID2,ID1).imag;
			DB(ID1,ID2)       =(double)(int)(0.5+(double)(RB(ID1,ID2))
			    - DB(ID1,ID2+IL(1)));
			CDB(ID1,ID2).dreal= fabs((double)(CEB(ID1,ID2).real)
			    - CDB(ID1,ID2+IL(1)).dreal);
			CDB(ID1,ID2).dimag= fabs((double)(CEB(ID1,ID2).imag)
			    - CDB(ID1,ID2+IL(1)).dimag);
			RMIN = (RMIN < RB(ID1,ID2-J1))  ?  RMIN : RB(ID1,ID2-J1);
			DMIN = ((double)(RMIN) < DMIN)  ?  (double)(RMIN) : DMIN ;
			DMIN = (DMIN < DB(ID1,ID2-1))  ?  DMIN : DB(ID1,ID2-1);
			ID3  = J2*J1-1;
			for(I3=8 ; I3>=2 ; I3-=1)
			{
				ID3 =ID3+1;
				if (ID3 > 7  ||  L4A(ID3,ID3,ID3))
				{
					if (I3 < 3  ||  LBA(ID3,ID3,ID3))
					{
						RA(ID1,ID2,ID3) =0.0;
						DA(ID1,ID2,ID3) =0.0;
					}
				}
				RA(ID1,ID2,ID3)  = RA(ID1,ID2,1);
				DA(ID1,ID3-1,ID3)= DA(ID1,ID3,ID2+J1) * RC(ID3);
				if (RA(ID1+IL(1),ID2,ID3) >  5.)
				{
					RSUM = RSUM+RA(ID1,ID2+IL(1),ID3) + (float)(DA(ID1,ID3,ID3));
				}
			}
			if (I1 == 1 &&  I2 == 10)
			{
				printf(" ***  ***SFGC.2**\n");
				printf(" RSUM= %g  I1= %ld  I2= %ld  I3= %ld  \n"
				    ,RSUM,I1,I2,I3);
			}
		}
		if (I1 == 5)
		{
			for(i=1 ; i<=10 ; i++)
			{
				printf(" RC= %g ",RC(i));
			}
		}
		printf(" ***  ***SFGC.2**\n");
		printf(" RMIN= %g  DMIN= %g  \n",RMIN,DMIN);
LBL_13:
		;
	}

	for(k=1 ; k<=10 ; k++)
	{
		for(j=1 ; j<=10 ; j++)
		{
			printf("\n");
			for(i=1 ; i<=10 ; i++)
			{
				printf("CEA=(%g,%g) ",CEA(i,j,k).real,CEA(i,j,k).imag);
			}
		}
	}
	printf("\n");

	for(j=1 ; j<=10 ; j++)
	{
		printf("\n");
		for(i=1 ; i<=10 ; i++)
		{
			printf("CEB=(%g,%g)",CEB(i,j).real,CEB(i,j).imag);
		}
	}
	printf("\n");

	for(j=1 ; j<=10 ; j++)
	{
		printf("\n");
		for(i=1 ; i<=10 ; i++)
		{
			printf("CDB=(%g,%g)",CDB(i,j).dreal,CDB(i,j).dimag);
		}
	}
	printf("\n");
	I = 1;
	J = 1;
	for(k=1 ; k<=10 ; k++)
	{
		for(j=1 ; j<=10 ; j++)
		{
			for(i=1 ; i<=10 ; i++)
			{
				printf(" RA= %g  ",RA(i,j,k));
				
			}
			
			printf("\n");
			
		}
	}
	printf("\n");

	I = 1;
	J = 1;
	for(k=1 ; k<=10 ; k++)
	{
		for(j=1 ; j<=10 ; j++)
		{
			for(i=1 ; i<=10 ; i++)
			{
				printf(" DA= %g  ",DA(i,j,k));
				
			}
			
			printf("\n");
			
		}
	}
	printf("\n");

	printf(" RMX= %g  \n",RMX);
	exit (0);
}
