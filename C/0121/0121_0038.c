#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int FGVCT( int I3, int ID3);
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
#define CDA(i,j,k) r.cda[i-1][j-1][k-1]
#define CDB(i,j) cdb[i-1][j-1]
#define CDC(i) cdc[i-1]
#define CDD(i,j,k) r.cdd[i-1][j-1][k-1]
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
float rb[10][10],rc[10],re[10][10];
double da[10][10][10],db[10][10],dc[10];
long double qa[10][10][10],qb[10][10],qc[10];
short int ha[10][10][10],hb[10][10],hc[10];
long int ia[10][10][10],ib[10][10],ic[10],il[10];
COMPLEX8 cea[10][10][10],ceb[10][10],cec[10];
COMPLEX16 cdb[10][10],cdc[10];
COMPLEX32 cqa[10][10][10],cqb[10][10],cqc[10];
unsigned char lba[10][10][10],lbb[10][10],lbc[10];
unsigned long int l4a[10][10][10],l4b[10][10],l4c[10];
char sa[10],sb[20];
int main()
{
	long int J1=1;
	long int J2=2;
	long int J3=3;
	long int J4=4;
	long int i,j,k,I,J,ID1,I1,ID2,I2,I3,JMN,ID3;
	float    RMIN=1000.;
	float    RSUM=0.0;
	float    RMN=1000.;
	float    DIF,DSUM;

	for(k=0 ; k<5 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				r.ra[i][j][k]=1.0;
				r.ra[i][j][k+5]=2.5;
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
	for(k=0 ; k<5 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				da[i][j][k]=1.0;
				da[i][j][k]=2.5;
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
	k=1;
	for(i=0 ; i<10 ; i++)
	{
		il[i]=k;
		k=k+1;
	}
	k=0;
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

	SA(1)='A';
	SA(2)='A';
	SA(3)='C';
	SA(4)='D';
	SA(5)='M';

	SB(1)='A';
	SB(2)='A';
	SB(3)='C';
	SB(4)='D';
	SB(5)='M';
	SB(6)='D';
	SB(7)='S';
	SB(8)='4';

	ID1 = 1;
	for(I1=2 ; I1<=8 ; I1++)
	{
		RC(I1) = RC(I1+IL(1));
		DIF    = RMIN - RC(I1-IL(1));
		if (DIF <= 0)  goto LBL_11;
LBL_12:
		;
		RMIN = RC(I1-IL(1));
LBL_11:
		;
		CDB(ID1,I1).dreal = CDB(ID1,IL(1)).dreal + CDC(I1).dreal;
		CDB(ID1,I1).dimag = CDB(ID1,IL(1)).dimag + CDC(I1).dimag;
		RSUM              = RSUM + fabs(CDC(I1+IL(1)).dreal);
		CDC(I1).dreal = 1.0;
		CDC(I1).dimag = 1.0;
		ID2 = 2;
		DSUM= 0.0;
		for(I2=2 ; I2<=8 ; I2+=2)
		{
			if (L4C(I2+IL(1))==1)   goto LBL_25 ;
			RB(ID2,ID2) = RB(ID2+IL(1),ID2) * RC(I1);
			DSUM       = DSUM + RB(ID1,ID2);
			DB(I1,ID2) = RB(ID2,ID2);
			QB(I2,ID2) = DB(I1-IL(1),ID2-IL(1));
LBL_26:
			;
			DIF = RMN - DB(I1,ID2-IL(1));
			if (DIF <= 0)  goto LBL_21;
LBL_22:
			;
			RMN = DB(I1,ID2-IL(1));
			JMN = ID2 - IL(1);
LBL_21:
			;
			ID3 = 1;
			for(I3=2 ; I3<=8 ; I3++)
			{
				RE(I2,I3) = RE(I2,I3) + RA(ID1,ID2,I3);
				FGVCT(I3,ID3);
				DA(ID1,ID2,ID3) = RD(ID1,ID2,ID3);
				if (L4A(ID1,ID2,ID3+IL(1)) != L4A(ID1,ID2,ID3)==1)
				{
					LBA(ID1,ID2+IL(1),ID3) = L4A(ID1,ID2,ID3);
				}
				ID3 = ID3+1;
LBL_30:
				;
			}
			ID2 = ID2+1;
			goto LBL_20;
LBL_25:
			;
			goto LBL_26;
LBL_20:
			;
		}
		printf(" ***  **SFGC.2**\n");
		printf(" DSUM =  %g  RMN =  %g  JMN =  %ld \n",DSUM,RMN,JMN);
		ID1 = ID1+1;
LBL_10:
		;
	}

	printf(" ***  **SFGC.2**\n");
	printf(" RMIN =  %g  I1 =  %ld  \n",RMIN,I1);
	printf(" RSUM =  %g  \n",RSUM);

	I = 1;
	J = 1;
	for(k=1 ; k<=10 ; k++)
	{
		for(j=1 ; j<=10 ; j++)
		{
			for(i=1 ; i<=10 ; i++)
			{
				printf(" DA =  %g ",DA(i,j,k));
				
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
				printf(" LBA =  %u ",LBA(i,j,k));
				
			}
			
			printf("\n");
			
		}
	}
	printf("\n");

	exit (0);
}

#define RA(i,j,k) r.ra[i-1][j-1][k-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i) rc[i-1]
#define CEA(i,j,k) cea[i-1][j-1][k-1]
#define CEB(i,j) ceb[i-1][j-1]
#define CEC(i) cec[i-1]
#define IL(i) il[i-1]
float ra[10][10][10],rb[10][10],rc[10];
COMPLEX8 cea[10][10][10],ceb[10][10],cec[10];
int FGVCT( int I3, int ID3)
{
	long int il[10];
	long int I1;

	for(I1=2 ; I1<=I3 ; I1++)
	{
		RA(I1,I1,I1)  = ID3;
		CEA(I1,I1,I1).real = ID3;
		CEA(I1,I1,I1).imag = 0;
LBL_10:
		;
	}
	return 0;
}
