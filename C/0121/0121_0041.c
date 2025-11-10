#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int CVCT(long int I1, long int I2, long int I3);
#define RA(i,j,k) ra[i-1][j-1][k-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i) rc[i-1]
#define RD(i,j,k) rd[i-1][j-1][k-1]
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
float           ra[10][10][10],rb[10][10],rc[10],rd[10][10][10],re[10][10];
double            da[10][10][10],db[10][10],dc[10];
long double       qa[10][10][10],qb[10][10],qc[10];
short int         ha[10][10][10],hb[10][10],hc[10];
long int          ia[10][10][10],ib[10][10],ic[10],il[10];
COMPLEX8          cea[10][10][10],ceb[10][10],cec[10];
COMPLEX16         cda[10][10][10],cdb[10][10],cdc[10],cdd[10][10][10];
COMPLEX32         cqa[10][10][10],cqb[10][10],cqc[10];
unsigned char     lba[10][10][10],lbb[10][10],lbc[10];
unsigned long int l4a[10][10][10],l4b[10][10],l4c[10];
char     SA[10]={
	"ABCDE"};
char     SB[20]={
	"ABCDEEF4"};
int main()
{
	long int J1=1;
	long int J2=2;
	long int J3=3;
	long int J4=4;
	float    RMX=0x7FFFFFFF;
	long int JN=0;
	long int JM=0;
	float    RSUM=1;
	long int i,j,k,I,ID1,I1,ID2,I2,ID3,I3;
	float    CSUM1,RSUM3,RDIF;

	for(k=0 ; k<10 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				ra[i][j][k]=1.0;
				rd[i][j][k]=1.0;
				da[i][j][k]=1.0;
				qa[i][j][k]=1.0;
				ha[i][j][k]=1;
				ia[i][j][k]=1;
				cea[i][j][k].real=1.0;
				cea[i][j][k].imag=1.0;
				cda[i][j][k].dreal=1.0;
				cda[i][j][k].dimag=1.0;
				cqa[i][j][k].qreal=1.0;
				cqa[i][j][k].qimag=1.0;
				lba[i][j][k]=1;
				l4a[i][j][k]=1;
			}
		}
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			rb[i][j]=2.0;
			re[i][j]=2.0;
			db[i][j]=2.0;
			qb[i][j]=2.0;
			hb[i][j]=2;
			ib[i][j]=2;
			ceb[i][j].real=2.0;
			ceb[i][j].imag=1.0;
			cdb[i][j].dreal=2.0;
			cdb[i][j].dimag=1.0;
			cqb[i][j].qreal=2.0;
			cqb[i][j].qimag=1.0;
			lbb[i][j]=1;
			l4b[i][j]=1;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		rc[i]=3.0;
		dc[i]=3.0;
		qc[i]=3.0;
		hc[i]=3;
		ic[i]=3;
		cec[i].real=1.0;
		cec[i].imag=2.0;
		cdc[i].dreal=1.0;
		cdc[i].dimag=2.0;
		cqc[i].qreal=1.0;
		cqc[i].qimag=2.0;
		lbc[i]=1;
		l4c[i]=1;
	}
	j = 1;
	for(i=0 ; i<10 ; i++)
	{
		il[i]= j;
		j = j+1;
	}

	ID1  =10;
	CSUM1=0.;
	for(I1=2 ; I1<=9 ; I1++)
	{
		ID1 = ID1-J2*2+J3;
		if (ID1 == I1)   goto LBL_15  ;
		if (fabs(ID1-I1) == 1)
		{
			if (ID1 >  I1)
			{
				RC(I1)=RC(ID1);
			}
			else
			{
				RC(ID1)=RC(I1);
			}
		}
LBL_15:
		;
		CEC(I1+1).real = CEC(I1+J1).real;
		CEC(I1+1).imag = -CEC(I1+J1).imag;
		ID2  = 1;
		CSUM1= CSUM1+CEC(I1).real;
		for(I2=9 ; I2>=2 ; I2-=1)
		{
			RB(ID2,ID2+IL(1)) = RB(ID2+IL(1),ID2+1) * 1.5;
			if ( IC(I2)<= 2  &&  IC(I2)>= 0)
			{
				if (ID2 >= I1  &&  ID1 >= I1  &&  I1 >= I2)
				{
					CEB(ID1,I2).real = CEC(I1+1).real * CEB(ID1,ID2).real
					    - CEC(I1+1).imag * CEB(ID1,ID2).imag;
					CEB(ID1,I2).imag = CEC(I1+1).real * CEB(ID1,ID2).imag
					    + CEC(I1+1).imag * CEB(ID1,ID2).real;
					if (ID1 >= ID2)
					{
						CDB(ID1,I2).dreal = CDB(ID2,ID2+IL(1)).dreal ;
						CDB(ID1,I2).dimag = -CDB(ID2,ID2+IL(1)).dimag;
					}
				}
			}
			ID3  =0;
			RSUM3=0.0;
			for(I3=9 ; I3>=2 ; I3-=1)
			{
				ID3 = ID3+1;
				CVCT(I1,I2,I3);
				RSUM = RSUM+RA(ID1,ID2,ID3);
LBL_30:
				;
			}
			ID2 = ID2+1;
			RDIF= RMX-RSUM;
			if (RDIF<= 0)  goto LBL_20;
LBL_32:
			;
			RMX= RSUM;
			JM = I2;
			JN = ID2;
LBL_20:
			;
		}
		printf(" ***  **SFGC.2**\n");
		printf(" RMX= %g  JM= %ld  JN= %ld \n",RMX,JM,JN);
LBL_10:
		;
	}

	printf(" CSUM1= %g  \n",CSUM1);
	I=0;
	printf("(RA)  \n");
	for(k=1 ; k<=10 ; k++)
	{
		for(j=1 ; j<=10 ; j++)
		{
			for(i=1 ; i<=10 ; i++)
			{
				printf("%g ",RA(i,j,k));
				I++;
				if(I==10)
				{
					printf("\n");
					I=0;
				}
			}
		}
	}
	printf("\n");

	I=0;
	printf("(RB)  \n");
	for(j=1 ; j<=10 ; j++)
	{
		for(i=1 ; i<=10 ; i++)
		{
			printf("%g ",RB(i,j));
			I++;
			if(I==10)
			{
				printf("\n");
				I=0;
			}
		}
	}
	printf("\n");

	printf("(RC)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",RC(i));
	}
	printf("\n");

	printf("(CEA)  \n");
	for(k=1 ; k<=10 ; k++)
	{
		for(j=1 ; j<=10 ; j++)
		{
			printf("\n");
			for(i=1 ; i<=10 ; i++)
			{
				printf("(%g , %g)",CEA(i,j,k).real,CEA(i,j,k).imag);
				if(i==5)
				{
					printf("\n");
				}
			}
		}
	}
	printf("\n");

	printf("(CEB)  \n");
	for(j=1 ; j<=10 ; j++)
	{
		printf("\n");
		for(i=1 ; i<=10 ; i++)
		{
			printf("(%g , %g)",CEB(i,j).real,CEB(i,j).imag);
			if(i==5)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	printf("(CEC)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf("(%g , %g)",CEC(i).real,CEC(i).imag);
		if(i==5)
		{
			printf("\n");
		}
	}
	printf("\n");

	exit (0);
}
#define RA(i,j,k) ra[i-1][j-1][k-1]
#define DA(i,j,k) da[i-1][j-1][k-1]
#define CEA(i,j,k) cea[i-1][j-1][k-1]
int CVCT(I1,I2,I3)
long int  I1,I2,I3;
{
	long int  J1;
	float     ra[10][10][10];
	double    da[10][10][10];
	COMPLEX8  cea[10][10][10];
	for(J1=1 ; J1<=10 ; J1++)
	{
		CEA(I1,I2,J1).real = RA(I1,I1,J1) * 1.0;
		CEA(I1,I2,J1).imag = 0;
		DA(I1,I1,J1)       = 0.0;
LBL_10:
		;
	}
	return 0;
}
