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
	float RMX=0.;
	long int i,j,k,I,J,ID1,I1,ID2,I2,ID3,ID4,I3;
	float SW,RSUM;

	for(k=0;k<10 ;k++)
	{
		for(j=0;j<10 ;j++)
		{
			for(i=0;i<10;i++)
			{
				r.ra[i][j][k]=1.0;
			}
		}
	}
	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			rb[i][j]=2.0;
		}
	}
	for(i=0;i<10;i++)
	{
		rc[i]=3.0;
	}
	for(k=0;k<10 ;k++)
	{
		for(j=0;j<10 ;j++)
		{
			for(i=0;i<10;i++)
			{
				r.rd[i][j][k]=1.0;
			}
		}
	}
	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			re[i][j]=2.0;
		}
	}
	for(k=0;k<10 ;k++)
	{
		for(j=0;j<10 ;j++)
		{
			for(i=0;i<10;i++)
			{
				da[i][j][k]=1.0;
			}
		}
	}
	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			db[i][j]=2.0;
		}
	}
	for(i=0;i<10;i++)
	{
		dc[i]=3.0;
	}
	for(k=0;k<10 ;k++)
	{
		for(j=0;j<10 ;j++)
		{
			for(i=0;i<10;i++)
			{
				qa[i][j][k]=1.0;
			}
		}
	}
	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			qb[i][j]=2.0;
		}
	}
	for(i=0;i<10;i++)
	{
		qc[i]=3.0;
	}
	for(k=0;k<10 ;k++)
	{
		for(j=0;j<10 ;j++)
		{
			for(i=0;i<10;i++)
			{
				ha[i][j][k]=1;
			}
		}
	}
	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			hb[i][j]=2;
		}
	}
	for(i=0;i<10;i++)
	{
		hc[i]=3;
	}
	for(k=0;k<10 ;k++)
	{
		for(j=0;j<10 ;j++)
		{
			for(i=0;i<10;i++)
			{
				ia[i][j][k]=1;
			}
		}
	}
	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			ib[i][j]=2;
		}
	}
	for(i=0;i< 10;i++)
	{
		ic[i]=3;
	}
	k =1;
	for(i=0;i<10;i++)
	{
		il[i]=k;
		k=k+1;
	}
	k =0;
	for(k=0;k<10 ;k++)
	{
		for(j=0;j<10 ;j++)
		{
			for(i=0;i<10;i++)
			{
				cea[i][j][k].real=1.0;
				cea[i][j][k].imag=1.0;
			}
		}
	}
	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			ceb[i][j].real=2.0;
			ceb[i][j].imag=1.0;
		}
	}
	for(i=0;i< 10;i++)
	{
		cec[i].real=1.0;
		cec[i].imag=2.0;
	}
	for(k=0;k<10 ;k++)
	{
		for(j=0;j<10 ;j++)
		{
			for(i=0;i<10;i++)
			{
				cd.cda[i][j][k].dreal=1.0;
				cd.cda[i][j][k].dimag=1.0;
			}
		}
	}
	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			cdb[i][j].dreal=2.0;
			cdb[i][j].dimag=1.0;
		}
	}
	for(i=0;i<10;i++)
	{
		cdc[i].dreal=1.0;
		cdc[i].dimag=2.0;
	}
	for(k=0;k<10 ;k++)
	{
		for(j=0;j<10 ;j++)
		{
			for(i=0;i<10;i++)
			{
				cqa[i][j][k].qreal=1.0;
				cqa[i][j][k].qimag=1.0;
			}
		}
	}
	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			cqb[i][j].qreal=2.0;
			cqb[i][j].qimag=1.0;
		}
	}
	for(i=0;i< 10;i++)
	{
		cqc[i].qreal=1.0;
		cqc[i].qimag=2.0;
	}
	for(k=0;k<10 ;k++)
	{
		for(j=0;j<10 ;j++)
		{
			for(i=0;i<10;i++)
			{
				lba[i][j][k]=1;
			}
		}
	}
	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			lbb[i][j]=1;
		}
	}
	for(i=0;i<10;i++)
	{
		lbc[i]=1;
	}
	for(k=0;k<10 ;k++)
	{
		for(j=0;j<10 ;j++)
		{
			for(i=0;i<10;i++)
			{
				l4a[i][j][k]=1;
			}
		}
	}
	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			l4b[i][j]=1;
		}
	}
	for(i=0;i<10;i++)
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

	RSUM=1.0;
	ID1=2;
	for(I1=1;I1<=J1*J2+6;I1++)
	{
		RC(I1)=RC(I1+J1)+RC(I1);
		DB(I1,I1)=RC(I1)+CEB(J1,I1).real;
		if (I1 >  2)
		{
			if (RC(I1-J2) >  100.)
			{
				RC(I1-J2)=0.0;
			}
		}
		SW=1.0;
		ID2=2;
		for(I2=10;I2>=3;I2-=1)
		{
			if (I2 >  J2*J3+1)goto LBL_20         ;
			RB(I2,I1)=I1+I2;
			if (I1 != I2)
			{
				DB(I2,I1)=1.0;
			}
			ID3=2;
			ID4=10;
			for(I3=1;I3<=8;I3++)
			{
				RA(ID3,ID3,I3)=CEB(I3,I3).real;
				QA(ID3,ID4,I3)=QA(I1,I2,I3)*QB(I1,I2)+QC(I3);
				if (SW == 1.)
				{
					L4A(ID3,ID2,I3)=1;
				}
				else
				{
					L4A(ID3,ID2-1,I3)=0;
				}
				if (L4A(ID3-1,ID2-1,I3)==1)
				{
					L4A(I3,ID1,ID2)=LBA(I3+1,ID1,ID2);
					goto LBL_35;
				}
				CDA(I3,ID3,ID2).dreal=RA(ID3,ID3,I3)*1.0
				    +QA(ID3,ID4,I3)*1.0;
				CDA(I3,ID3,ID2).dimag=0.0;
LBL_35:
				;
				ID3=ID3+1;
				ID4=ID4-1;
			}
			ID2=ID2+1;
			if (L4A(I3,ID1,ID2)==1)
			{
				SW=0.0;
			}
			CDB(ID1,ID2).dreal=CDA(I2,ID1,ID2).dreal;
			CDB(ID1,ID2).dimag=CDA(I2,ID1,ID2).dimag;
			CDD(I2,ID1-1,ID2-J1).dreal=CDD(I2,ID1-1,ID2-J1).dreal+1.0;
			CDD(I2,ID1-1,ID2-J1).dimag=CDD(I2,ID1-1,ID2-J1).dimag+1.0;
LBL_20:
			;
		}
		RMX=(RMX > RC(I1))  ?  RMX : RC(I1);
		RMX=(RMX > DB(I1,I1))  ?  RMX : DB(I1,I1);
		if (LBA(I1,I1,I1)==1)
		{
			RSUM=RSUM+RC(I1)+fmod(DB(I1,I1),2.);
		}
		ID1=ID1+1;
	}

	printf("***  **SFGC.2**\n");
	I=1;
	J=1;
	for(k=1;k<=10 ;k++)
	{
		for(j=1;j<=10 ;j++)
		{
			for(i=1;i<=10;i++)
			{
				printf(" RA = %g  ",RA(i,j,k));
			
			}
			
			printf("\n");
			
		}
	}
	printf("\n");

	I=1;
	J=1;
	for(j=1;j<=10 ;j++)
	{
		for(i=1;i<=10;i++)
		{
			printf(" RB= %g  ",RB(i,j));
			
		}
		
		printf("\n");
		
	}
	printf("\n");

	for(i=1;i<=10;i++)
	{
		printf(" RC = %g  ",RC(i));
	}
	printf("\n");

	I=1;
	J=1;
	for(k=1;k<=10 ;k++)
	{
		for(j=1;j<=10 ;j++)
		{
			for(i=1;i<=10;i++)
			{
				printf(" DA = %g  ",DA(i,j,k));
				
			}
			
			printf("\n");
			
		}
	}
	printf("\n");

	I=1;
	J=1;
	for(k=1;k<=10 ;k++)
	{
		for(j=1;j<=10 ;j++)
		{
			for(i=1;i<=10;i++)
			{
				printf(" QA = %g ",(double)QA(i,j,k));
				
			}
			
			printf("\n");
			
		}
	}
	printf("\n");

	for(k=1;k<=10 ;k++)
	{
		for(j=1;j<=10 ;j++)
		{
			printf("\n");
			for(i=1;i<=10;i++)
			{
				printf("CEA =(%g,%g) ",CEA(i,j,k).real,CEA(i,j,k).imag);
			}
		}
	}
	printf("\n");

	for(k=1;k<=10 ;k++)
	{
		for(j=1;j<=10 ;j++)
		{
			printf("\n");
			for(i=1;i<=10;i++)
			{
				printf("CDA =(%g,%g) ",CDA(i,j,k).dreal,CDA(i,j,k).dimag);
			}
		}
	}
	printf("\n");

	for(j=1;j<=10 ;j++)
	{
		printf("\n");
		for(i=1;i<=10;i++)
		{
			printf("CDB =(%g,%g) ",CDB(i,j).dreal,CDB(i,j).dimag);
		}
	}
	printf("\n");

	printf("RSUM= %g   RMX= %g   \n",RSUM,RMX);
	I=1;
	J=1;
	for(k=1;k<=10 ;k++)
	{
		for(j=1;j<=10;j++)
		{
			for(i=1;i<=10;i++)
			{
				printf("LBA= %u  ",LBA(i,j,k));
				
			}
			
			printf("\n");
			
		}
	}
	printf("\n");

	I=1;
	J=1;
	for(k=1;k<=10 ;k++)
	{
		for(j=1;j<=10;j++)
		{
			for(i=1;i<=10;i++)
			{
				printf("L4A= %lu  ",L4A(i,j,k));
				
			}
			
			printf("\n");
			
		}
	}
	printf("\n");

	exit (0);
}
