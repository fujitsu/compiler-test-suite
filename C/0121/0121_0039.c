#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int FCVCT(long int I1, long int I2, long int ID1, long int ID2);
#define RA(i,j,k) ra[i-1][j-1][k-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i) rc[i-1]
#define RD(i,j,k) rd[i-1][j-1][k-1]
#define RE(i,j,k) re[i-1][j-1][k-1]
#define DA(i,j,k) da[i-1][j-1][k-1]
#define DB(i,j) db[i-1][j-1]
#define DC(i) dc[i-1]
#define DD(i) dd[i-1]
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
#define CDA(i,j,k) cda[i-1][j-1][k-1]
#define CDB(i,j) cdb[i-1][j-1]
#define CDC(i) cdc[i-1]
#define CDD(i,j,k) cdd[i-1][j-1][k-1]
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
#define SW(i) sw[i-1]
float       ra[10][10][10],rb[10][10],rc[10],rd[10][10][10],re[10][10][10];
double      da[10][10][10],db[10][10],dc[10],dd[10];
long double qa[10][10][10],qb[10][10],qc[10];
short int   ha[10][10][10],hb[10][10],hc[10];
long int    ia[10][10][10],ib[10][10],ic[10],il[10];
COMPLEX8    cea[10][10][10],ceb[10][10],cec[10];
COMPLEX16   cda[10][10][10],cdb[10][10],cdc[10],cdd[10][10][10];
COMPLEX32   cqa[10][10][10],cqb[10][10],cqc[10];
unsigned char lba[10][10][10],lbb[10][10],lbc[10];
unsigned long int l4a[10][10][10],l4b[10][10],l4c[10];
char sa[10],sb[20];
int main()
{
	long int J1=1;
	long int J2=2;
	long int J3=3;
	long int J4=4;
	long int ID3=3;
	long int i,j,k,I,J,ID1,I1,ID2,I2,K1,K2,K3,K4;
	float RSUM,DSUM;

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

	for(k=0 ; k<10 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				ra[i][j][k]=1.0;
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
				rd[i][j][k]=1.0;
			}
		}
	}
	for(k=0 ; k<10 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				re[i][j][k]=2.0;
			}
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
	for(i=0 ; i<10 ; i++)
	{
		dd[i]=1.;
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
				cda[i][j][k].dreal=1.0;
				cda[i][j][k].dimag=1.0;
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

	RSUM =0.0;
	DSUM =0.0;
	ID1  =1;
	for(I1=9 ; I1>=2 ; I1-=1)
	{
		ID2 =2;
		SA(1)='A';
		SA(2)='A';
		SA(3)='L';
		SA(4)='S';
		SA(5)='E';
		for(I2=9 ; I2<=2 ; I2+=J1*J2-3)
		{
			RA(ID2,ID2+J1,I2) = DA(ID2,ID2+J1,I2) + RB(ID2,ID2+J1);
			RE(ID2,ID2,I2)    = RA(ID2-J1,ID2+J1*J2-1,I2);
			CEA(ID1,ID2,ID3+J2-J1).real = RA(ID2,ID2+J1,I2)
			    * CEA(ID1,ID2,ID3+J3*J1-2).real;
			CEA(ID1,ID2,ID3+J2-J1).imag = 0 ;
			if (L4A(ID1,ID2,I2) !=  L4B(ID1,ID2)==1)
			{
				RSUM  = RSUM + RE(ID2,ID2,I2) + RA(ID2+IL(1)-1,ID2+J1,I2);
				LBA(ID1,ID2,I2) = 1;
			}
			else
			{
				LBA(ID1,ID2,I2) = 0;
				SA(1)='T';
				SA(2)='R';
				SA(3)='U';
				SA(4)='E';
				SA(5)=' ';
			}
			ID2 = ID2+1;
LBL_20:
			;
		}
		DSUM = DSUM + ((RC(I1)>(float)(DC(I1))) ? (RC(I1)-(float)(DC(I1))):0);
		K1 =ID1;
		K2 =I2;
		K3 =ID1;
		K4 =ID2;
		FCVCT(K1,K2,K3,K4);
		RC(I1) = RC(I1+IL(1));
		DD(I1) = sin(DA(I1,ID1,ID2)) + DB(I1,ID1) + DC(I1)
		    + (double)(RA(ID2,ID2,I2) + RB(I1,ID1) + RC(I1));
		if (I1>3  &&  I1<7)
		{
			CEC(I1+IL(1)).real    = CEC(I1+IL(2)).real;
			CEC(I1+IL(1)).imag    = CEC(I1+IL(2)).imag;
			CDC(I1+2*IL(1)).dreal = CEC(I1+IL(1)).real + CDC(I1+IL(1)+1).dreal;
			CDC(I1+2*IL(1)).dimag = CEC(I1+IL(1)).imag + CDC(I1+IL(1)+1).dimag;
			CQC(I1+IL(1)-1).qreal = CEC(I1+IL(1)).real + CDC(I1+IL(3)-1).dreal;
			CQC(I1+IL(1)-1).qimag = CEC(I1+IL(1)).imag + CDC(I1+IL(3)-1).dimag;
		}
LBL_10:
		;
	}

	printf(" ***  ***SFGC.2***\n");
	printf(" RSUM= %g  DSUM= %g  \n",RSUM,DSUM);
	memset(sa,0x00,10);
	SA(1)='A';
	SA(2)='B';
	SA(3)='C';
	SA(4)='D';
	SA(5)='E';

	SB(1)='A';
	SB(2)='B';
	SB(3)='C';
	SB(4)='D';
	SB(5)='E';
	SB(6)='D';
	SB(7)='S';
	SB(8)='4';
	printf(" SA= ");
	for(i=1 ; i<=strlen(sa) ; i++)
	{
		printf("%c",SA(i));
	}

	I = 1;
	J = 1;
	for(k=1 ; k<=10 ; k++)
	{
		for(j=1 ; j<=10 ; j++)
		{
			printf(" RA= %g %g %g",RA(1,j,k),RA(2,j,k),RA(3,j,k));
			printf("     %g %g \n",RA(4,j,k),RA(5,j,k));
			printf(" RA= %g %g %g",RA(6,j,k),RA(7,j,k),RA(8,j,k));
			printf("     %g %g \n",RA(9,j,k),RA(10,j,k));
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
				printf(" RE= %g  ",RE(i,j,k));
				
			}
			
			printf("\n");
			
		}
	}
	printf("\n");

	for(i=1 ; i<=10 ; i++)
	{
		printf(" RC= %g  ",RC(i));
	}
	printf("\n");

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
			printf(" CEB=(%g,%g) ",CEB(i,j).real,CEB(i,j).imag);
		}
	}
	printf("\n");

	for(i=1 ; i<=10 ; i++)
	{
		printf(" CEC=(%g,%g) ",CEC(i).real,CEC(i).imag);
	}
	printf("\n");

	exit (0);
}

#define RA(i,j,k) ra[i-1][j-1][k-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i) rc[i-1]
#define RE(i,j,k) re[i-1][j-1][k-1]
#define CEA(i,j,k) cea[i-1][j-1][k-1]
#define CEB(i,j) ceb[i-1][j-1]
#define CEC(i) cec[i-1]
#define LBA(i,j,k) lba[i-1][j-1][k-1]
#define IL(i) il[i-1]
float ra[10][10][10],rb[10][10],rc[10],re[10][10][10];
COMPLEX8 cea[10][10][10],ceb[10][10],cec[10];
unsigned char lba[10][10][10];
long int il[10];
char sa[10],sb[20],sw[10];
int FCVCT(I1,I2,ID1,ID2)
long int I1,I2,ID1,ID2;
{
	long int ID3,J1,i,j,k,I,J;
	int flg;

	SA(1)='A';
	SA(2)='B';
	SA(3)='C';
	SA(4)='D';
	SA(5)='E';

	SW(1)='A';
	SW(2)='A';
	SW(3)='L';
	SW(4)='S';
	SW(5)='E';

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
	ID3 =0;
	for(J1=1 ; J1<=10 ; J1++)
	{
		ID3 = ID3+1;
		RB(J1,ID3) = RC(I1) + RA(ID2,ID2,I1) + RE(ID2,ID2,I2);

		flg = strcmp(sa,sw);
		if (flg == 0)
		{
			printf(" ******SFGC.2***\n");
			I = 1;
			J = 1;
			for(k=1 ; k<=10 ; k++)
			{
				for(j=1 ; j<=10 ; j++)
				{
					for(i=1 ; i<=10 ; i++)
					{
						printf(" LBA= %u ",LBA(i,j,k));
						
					}
					
					printf("\n");
					
				}
			}
			printf("\n");

		}
		CEA(ID1,ID2,ID3).real = CEC(J1).real;
		CEA(ID1,ID2,ID3).real = CEC(J1).real;
LBL_10:
		;
	}
	return 0;
}
