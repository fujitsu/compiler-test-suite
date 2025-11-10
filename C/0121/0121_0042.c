#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i,j,k) rr.ra[i-1][j-1][k-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i) rc[i-1]
#define RD(i,j,k) rr.rd[i-1][j-1][k-1]
#define RE(i,j) re[i-1][j-1]
#define DA(i,j,k) dd.da[i-1][j-1][k-1]
#define DB(i,j) db[i-1][j-1]
#define DC(i) dc[i-1]
#define DD(i,j,k) dd.dd[i-1][j-1][k-1]
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
#define CEA(i,j,k) ce.cea[i-1][j-1][k-1]
#define CEB(i,j) ceb[i-1][j-1]
#define CEC(i) cec[i-1]
#define CED(i,j,k) ce.ced[i-1][j-1][k-1]
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
} rr;
union{
	double da[10][10][10];
	double dd[10][10][10];
} dd;
union{
	COMPLEX8 cea[10][10][10];
	COMPLEX8 ced[10][10][10];
} ce;
union{
	COMPLEX16 cda[10][10][10];
	COMPLEX16 cdd[10][10][10];
} cd;
float             rb[10][10],rc[10],re[10][10];
double            db[10][10],dc[10];
long double       qa[10][10][10],qb[10][10],qc[10];
short int         ha[10][10][10],hb[10][10],hc[10];
long int          ia[10][10][10],ib[10][10],ic[10],il[10];
COMPLEX8          ceb[10][10],cec[10];
COMPLEX16         cdb[10][10],cdc[10];
COMPLEX32         cqa[10][10][10],cqb[10][10],cqc[10];
unsigned char     lba[10][10][10],lbb[10][10],lbc[10];
unsigned long int l4a[10][10][10],l4b[10][10],l4c[10];
char   SA(10)={
	"ABCDE"};
char   SB(20)={
	"ABCDEEF4"};
int main()
{
	long int J1=1;
	long int J2=2;
	long int J3=3;
	long int J4=4;
	long int N=1;
	long int NN=2;
	long int i,j,k,I1,ID2,I2,ID3,J,I3,ID5;
	float    CSUM,RSUM,RMIN,RMX,DIF,RSM5;

	for(k=0 ; k<10 ; k++)
	{
		for(j=0 ; j<10 ; j++)
		{
			for(i=0 ; i<10 ; i++)
			{
				rr.ra[i][j][k]=1.0;
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
				rr.rd[i][j][k]=1.0;
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
				dd.da[i][j][k]=1.0;
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
				dd.dd[i][j][k]=1.0;
			}
		}
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
				ce.cea[i][j][k].real=1.0;
				ce.cea[i][j][k].imag=1.0;
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
	CSUM =(0,0);
	RSUM =0.0;
	for(I1=8 ; I1>=3 ; I1-=1)
	{
		if (N >= -2 &&  N <= 0)
		{
			RC(I1+N) = RC(I1);
			if (NN > N  &&  NN >= -2  &&  N <= 0)
			{
				CEC(I1+N).real = CEC(I1+NN).real;
				CEC(I1+N).imag = CEC(I1+NN).imag;
			}
		}
		DC(I1) = DC(1);
		RSUM   = RSUM;
		if ((CEC(I1).real == 1.0  && CEC(I1).imag == 1.0)
		    ||  fabs(CEC(I1).real) >= 1.5)
		{
			CSUM = CSUM+CEC(I1).real;
		}
		ID2 =1;
		for(I2=8 ; I2>=3 ; I2-=1)
		{
			RB(I2+N,I2+N-1)   = RB(I2,I2);
			CEB(I2+N,I2).real = CEB(I2+NN,I2+NN).real;
			CEB(I2+N,I2).imag = CEB(I2+NN,I2+NN).imag;
			if ((L4B(I1,I2) !=  L4B(I1+N,I2))  ||  (CEB(I2,I2).real != 1.0
			    && CEB(I2,I2).imag != 1.0) || RB(I1,I2)>=3.0||1^L4C(I2))
			{
				LBB(I2,I1) =1;
				CDB(I1,I2).dreal =1.0;
				CDB(I1,I2).dimag =1.0;
			}
			else
			{
				if (L4B(I1,I2)==1)
				{
					L4C(I2-IL(2)) = L4C(I2-IL(1));
					L4B(I1,I2)    = 0;
				}
				else
				{
					L4B(I1,I2)=1;
				}
			}
			ID3 =8;
			RMIN=0.;
			RMX =0.;
			J   =0;
			for(I3=2 ; I3<=8 ; I3++)
			{
				DIF = RMIN - RD(I1,I2,I3);
				RMX = (RMX > DD(I1,I2,ID3))  ?  RMX : DD(I1,I2,ID3);
				ID3 = ID3-1;
				if (DIF<=0)  goto LBL_31;
LBL_32:
				;
				RMIN = RD(I1,I2,I3);
				J    = I3;
LBL_31:
				;
				RA(I1-N,I2,I3-IL(1)) = DD(I1,I2,I3);
LBL_30:
				;
			}
			if (CDA(I1,I2,ID3).dreal == 1.0  &&  CDA(I1,I2,ID3).dimag == 1.0)
			{
				CDA(I1,I2,ID3).dreal = 1.0;
				CDA(I1,I2,ID3).dimag = 1.0;
				if (ID2 <= 3)   goto LBL_40   ;
			}
			CDB(I2,ID3).dreal = CDB(I2,ID3+1).dreal;
			CDB(I2,ID3).dimag = CDB(I2,ID3+1).dimag;
			CDD(I1,I2,ID3).dreal = CDD(I1,I2,ID3+1).dreal;
			CDD(I1,I2,ID3).dimag = CDD(I1,I2,ID3+1).dimag;
LBL_40:
			;
			printf(" ***  ** SFGC.2 **\n");
			printf(" RMIN= %g  J= %ld \n",RMIN,J);
			printf(" RMX= %g  \n",RMX);
			ID2=ID2+1;
LBL_20:
			;
		}
		printf("(CDB) \n");
		for(j=1 ; j<=10 ; j++)
		{
			printf("\n");
			for(i=1 ; i<=10 ; i++)
			{
				printf("(%g , %g) ",CDB(i,j).dreal,CDB(i,j).dimag);
			}
		}
		printf("\n");

		printf("(L4B) \n");
		for(j=1 ; j<=10 ; j++)
		{
			printf("\n");
			for(i=1 ; i<=10 ; i++)
			{
				printf("%lu ",L4B(i,j));
			}
		}
		printf("\n");


		ID5 =0;
		RSM5=0;
LBL_50:
		;
		ID5 =0;
		RSM5=RSM5+RC(I1);
		if (ID5 == 5)goto LBL_50    ;
LBL_10:
		;
	}
	printf(" RSM5= %g \n",RSM5);
	printf(" RSUM= %g  CSUM= %g  \n",RSUM,CSUM);
	exit (0);
}
