#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i) r2.ra[i-1]
#define RS r2.rs
#define RX r2.rx
#define RY r2.ry
#define DS r2.ds
#define DT r2.dt
#define DY r2.dy
#define DX r2.dx
#define RB(i) rr2.rb[i-1]
#define RT rr2.rt
#define RW rr2.rw
#define QA(i) qq.qa[i-1]
#define QX qq.qx
#define CQR1 qq.cqr1
#define CQR2 qq.cqr2
#define CER1 cr.cer1
#define CER2 cr.cer2
#define DA(i) c2d.da[i-1]
#define CDR1 c2d.cdr1
#define CDR2 c2d.cdr2
union{
	double da[10];
	COMPLEX16 cdr1;
	COMPLEX16 cdr2;
} c2d;
union{
	float rx;
	float ry;
	float dy;
	float ds;
	float dt;
	float rs;
	float dx;
	float ra[10];
} r2;
union{
	float rt;
	float rw;
	float rb[10];
} rr2;
union{
	long double qx;
	COMPLEX32 cqr1;
	COMPLEX32 cqr2;
	long double qa[10];
}qq;
union{
	COMPLEX8 cer1;
	COMPLEX8 cer2;
} cr;
int EQREP1();
int EQREP2();
int EQREP3();
int main()
{

	EQREP1();
	EQREP2();
	EQREP3();
	exit (0);
}

#define RC(i) rc[i-1]
#define RD(i) rd[i-1]
#define RZ r1.rz
#define RU r1.ru
#define RL r3.rl
#define RKK r3.rkk
union{
	float rz;
	float ru;
} r1;
union{
	float rl;
	float rkk;
} r3;
float rc[10],rd[10];
int EQREP1()
{
	long int i,I;


	RKK=1.0;
	for(i=0 ; i<5 ; i++)
	{
		r2.ra[i]   = 1.0;
		r2.ra[i+5] = 0.0;
		rr2.rb[i]   = 1.0;
		rr2.rb[i+5] = 0.0;
	}

	printf("***EQREP1*****\n");
	for(I=1 ; I<=10 ; I++)
	{
		RB(I)=I;
		RC(I)=I;
		RD(I)=I;
	}

	for(I=1 ; I<=10 ; I++)
	{
		RZ    = RC(I);
		RC(I) = RC(I)+RU;
		RX    = RC(I)+RD(I);
		RD(I) = RKK;
		RL    = RD(I);
		RS    = RB(I);
		RC(I) = RW+RS+RT;
	}

	printf("(RA) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",RA(i));
	}
	printf("\n");

	printf("(RB) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",RB(i));
	}
	printf("\n");

	return 0;
}

#define RK(i,j) rk[i-1][j-1]
#define DB(i) db[i-1]
float rk[10][10];
double da[10],db[10];
int EQREP2()
{
	long int J,I,i,j;
	long double QY;

	for(i=0 ; i<5 ; i++)
	{
		r2.ra[i]=1.0;
		r2.ra[i+5]=2.0;
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			rk[i][j]=1.0;
		}
	}
	for(i=0 ; i<5 ; i++)
	{
		da[i]=2.0;
		da[i+5]=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		db[i]=1.0;
		if(i<5) db[i+5]=-1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		qq.qa[i]=3.0;
	}

	printf(" ***EQREP2*****\n");
	for(I=1 ; I<=10 ; I++)
	{
		QY    = (long double)(I);
		RB(I) = RY+DY;
		QX    = RB(I)+DB(I);
		RX    = RB(I)-DB(I);
		QA(4) = RB(I)+DB(I);
		for(J=1 ; J<=10 ; J++)
		{
			RK(J,I)=I+J;
		}
		DB(I)=DY+RY;
		RS=RK(I,I);
		DT=DB(I)+I;
	}

	printf("(QA) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",RA(i));
	}
	printf("\n");

	printf("(DA) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",DA(i));
	}
	printf("\n");

	printf("(RB) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",RB(i));
	}
	printf("\n");

	printf("(DB) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",DB(i));
	}
	printf("\n");

	printf("(RK) \n");
	for(j=1 ; j<=10 ; j++)
	{
		printf("\n");
		for(i=1 ; i<=10 ; i++)
		{
			printf(" %g ",RK(i,j));
		}
	}
	printf("\n");

	return 0;
}

#define IA(i) l.ia[i-1]
#define IB(i) la.ib[i-1]
#define IC(i) ic[i-1]
#define ID(i,j) id[i-1][j-1]
#define L4A(i) ai.l4a[i-1]
#define L4B(i) l4b[i-1]
#define RR1(i) rr1[i-1]
#define DB(i) db[i-1]
#define QB(i) qb[i-1]
#define CEA(i) crc.cea[i-1]
#define RCE1 crc.rce1
#define RCE2 crc.rce2
#define CEB(i) ceb[i-1]
#define CER(i) cer[i-1]
#define CDA(i) rcr.cda[i-1]
#define RCD1 rcr.rcd1
#define RCD2 rcr.rcd2
#define CDB(i) cdb[i-1]
#define CQA(i) qr.cqa[i-1]
#define RCQ1 qr.rcq1
#define RCQ2 qr.rcq2
#define CQB(i) cqb[i-1]
#define LA l.la
#define LY l.ly
#define LB l.lb
#define LX l.lx
#define IX ai.ix
#define IY ai.iy
#define IZ ai.iz
#define IS ai.is
#define IT ai.it
#define LC la.lc
union{
	COMPLEX32 cqa[10];
	long double rcq1;
	long double rcq2;
} qr;
union{
	COMPLEX8 cea[10];
	float rce1;
	float rce2;
} crc;
union{
	COMPLEX16 cda[10];
	double rcd1;
	double rcd2;
} rcr;
union{
	long int ib[10];
	long int lc;
} la;
union{
	long int ia[10];
	long int la;
	long int ly;
	long int lb;
	long int lx;
} l;
union{
	unsigned long int l4a[10];
	long int ix;
	long int iy;
	long int is;
	long int it;
	long int iz;
} ai;
long int ic[10],id[10][10];
unsigned long int l4b[10];
float rr1[10];
double db[10];
long double qb[10];
COMPLEX8 ceb[10],cer[10];
COMPLEX16 cdb[10];
COMPLEX32 cqb[10];
int EQREP3()
{
	long int    i,j,I,J;
	float       RCE3;

	RCE3=CQA(2).qreal;
	LY = 0;
	for(i=0 ; i<10 ; i++)
	{
		l.ia[i]=6;
	}
	for(i=0 ; i<10 ; i++)
	{
		la.ib[i]=0;
	}
	for(i=0 ; i<10 ; i++)
	{
		ic[i]=5;
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			id[i][j]=1;
		}
	}
	for(i=0 ; i<5 ; i++)
	{
		ai.l4a[i]=0;
		ai.l4a[i+5]=1;
	}
	for(i=0 ; i<2 ; i++)
	{
		l4b[i]=1;
		l4b[i+8]=0;
	}
	for(i=2 ; i<5 ; i++)
	{
		l4b[i]=0;
		l4b[i+3]=1;
	}
	for(i=0 ; i<10 ; i++)
	{
		r2.ra[i]=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		rr2.rb[i]=2.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		c2d.da[i]=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		db[i]=-1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		qq.qa[i]=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		qb[i]=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		crc.cea[i].real=1.0;
		crc.cea[i].imag=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		ceb[i].real=1.0;
		ceb[i].imag=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		rcr.cda[i].dreal=1.0;
		rcr.cda[i].dimag=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		cdb[i].dreal=1.0;
		cdb[i].dimag=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		qr.cqa[i].qreal=1.0;
		qr.cqa[i].qimag=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		cqb[i].qreal=1.0;
		cqb[i].qimag=1.0;
	}
	CER1.real = RA(1);
	CER1.imag = RA(2);
	CER2.real = RA(3);
	CER2.imag = RA(4);

	printf("***EQREP3*****\n");
	printf(" ***LOOP1***\n");
	for(I=1 ; I<=10 ; I++)
	{
		LA    = 1^L4A(I);
		LX    = LB||LC&&LX;
		IB(I) = IC(I)+IC(1);
		for(J=1 ; J<=10 ; J++)
		{
			ID(I,J) = 1+I+IC(I);
			ID(I,J) = ID(I,J)*ID(I,J);
		}
		IC(I) = IC(I)*LY;
	}

	printf("(IA)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %ld ",IA(i));
	}
	printf("\n");

	printf("(IB)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %ld ",IB(i));
	}
	printf("\n");

	printf("(IC)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %ld ",IC(i));
	}
	printf("\n");

	printf(" ***LOOP2***\n");
	for(I=1 ; I<=10 ; I++)
	{
		IX=IA(I)+IB(I);
		if (I == 5)
		{
			L4A(I)=L4B(I)&&L4B(I+1);
		}
		IS=IX+IY;
		IZ=IS-IX;
	}

	printf("(L4A)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %lu ",L4A(i));
	}
	printf("\n");

	printf("(L4B)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %lu ",L4B(i));
	}
	printf("\n");

	printf(" ***LOOP3***\n");
	for(I=1 ; I<=10 ; I++)
	{
		RCE1 = RCE3+IA(I);
		RCD1 = RCE1+IA(I);
		RCQ1 = RCD1+IA(I);
		CER1.real  = (float)I;
		CER1.imag  = (float)I;
		CDR1.dreal = CER1.real + IA(I);
		CDR1.dimag = CER1.imag + 0;
		CQR1.qreal = CDR1.dreal + IA(I);
		CQR1.qimag = CDR1.dimag + 0;
		for(J=1 ; J<=10 ; J++)
		{
			ID(I,J) = ID(I,J)+IA(I)+IB(J);
		}
		RR1(I) = RCD2+RCE2+RCQ2;
		CER(I).real = CER2.real + CDR2.dreal + CQR2.qreal;
		CER(I).imag = CER2.imag + CDR2.dimag + CQR2.qimag;
	}

	printf("(RA)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",RA(i));
	}
	printf("\n");

	printf("(RB)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",RB(i));
	}
	printf("\n");

	printf("(DA)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",DA(i));
	}
	printf("\n");

	printf("(DB)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",DB(i));
	}
	printf("\n");

	printf("(QA)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",(double)QA(i));
	}
	printf("\n");

	printf("(QB)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",(double)QB(i));
	}
	printf("\n");

	printf("(CEA)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf("(%g, %g)",CEA(i).real,CEA(i).imag);
	}
	printf("\n");

	printf("(CDA)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf("(%g, %g)",CDA(i).dreal,CDA(i).dimag);
	}
	printf("\n");

	printf("(CQA)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf("( %g , %g )",(double)CQA(i).qreal,(double)CQA(i).qimag);
	}
	printf("\n");

	printf("(CEB)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf("( %g , %g )",CEB(i).real,CEB(i).imag);
	}
	printf("\n");

	printf("(CDB)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf("(%g, %g)",CDB(i).dreal,CDB(i).dimag);
	}
	printf("\n");

	printf("(CQB)  \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf("(%g, %g)",(double)CQB(i).qreal,(double)CQB(i).qimag);
	}
	printf("\n");

	return 0;
}
