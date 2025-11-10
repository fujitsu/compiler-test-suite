#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int DVCHK();
int CVCT1();
#define RA(i) r.ra[i-1]
#define RB(i) rb[i-1]
#define RC(i) rc[i-1]
#define RD(i) r.rd[i-1]
#define DA(i) d.da[i-1]
#define DB(i) db[i-1]
#define DC(i) dc[i-1]
#define DD(i) d.dd[i-1]
#define QA(i) q.qa[i-1]
#define QB(i) qb[i-1]
#define QC(i) qc[i-1]
#define QD(i) q.qd[i-1]
#define HA(i) h.ha[i-1]
#define HB(i) hb[i-1]
#define HC(i) hc[i-1]
#define HD(i) h.hd[i-1]
#define IA(i) it.ia[i-1]
#define IB(i) ib[i-1]
#define IC(i) ic[i-1]
#define ID(i) it.id[i-1]
#define CEA(i) ce.cea[i-1]
#define CEB(i) ceb[i-1]
#define CEC(i) cec[i-1]
#define CED(i) ce.ced[i-1]
#define CDA(i) cd.cda[i-1]
#define CDB(i) cdb[i-1]
#define CDC(i) cdc[i-1]
#define CDD(i) cd.cdd[i-1]
#define CQA(i) cq.cqa[i-1]
#define CQB(i) cqb[i-1]
#define CQC(i) cqc[i-1]
#define CQD(i) cq.cqd[i-1]
#define LBA(i) lba[i-1]
#define LBB(i) lbb[i-1]
#define LBC(i) lbc[i-1]
#define LBD(i) lbd[i-1]
#define L4A(i) l.l4a[i-1]
#define L4B(i) l4b[i-1]
#define L4C(i) l4c[i-1]
#define L4D(i) l.l4d[i-1]
float  rb[20],rc[20];
union  {
	float ra[20];
	float rd[20];
} r;
double db[20],dc[20];
union  {
	double da[20];
	double dd[20];
} d;
long double qb[20],qc[20];
union  {
	long double qa[20];
	long double qd[20];
} q;
short int  hb[20],hc[20];
union     {
	short int ha[20];
	short int hd[20];
} h;
long int  ib[20],ic[20];
union     {
	long int ia[20];
	long int id[20]; 
} it;
COMPLEX8   ceb[20],cec[20];
union     {
	COMPLEX8 cea[20];
	COMPLEX8 ced[20];
} ce;
COMPLEX16  cdb[20],cdc[20];
union     {
	COMPLEX16 cda[20];
	COMPLEX16 cdd[20];
} cd;
COMPLEX32 cqb[20],cqc[20];
union     {
	COMPLEX32 cqa[20];
	COMPLEX32 cqd[20];
} cq;
unsigned char lba[20],lbb[20],lbc[20],lbd[20];
unsigned long int l4b[20],l4c[20];
union     {
	unsigned long int l4a[20];
	unsigned long int l4d[20];
} l;
int main()
{
	float       RMX=0,RMN=0,RSUM=0;
	double      DMX=0,DMN=0,DSUM=0;
	long double QMX=0,QMN=0,QSUM=0;
	short int   H1=1,H2=2,H3=3,HMX=0,HMN=0,HSUM=0;
	long int    J1=1,J2=2,J3=3,J4=4,IMX=0,IMN=0,ISUM=0;
	long int    RL=0,IT=0;
	COMPLEX8    CEMX={
		0,0	},
	CESUM={
		0,0	};
	COMPLEX16   CDMX={
		0,0	},
	CDSUM={
		0,0	};
	COMPLEX32   CQMX={
		0,0	},
	CQSUM={
		0,0	};
	char        sa[]="1234";
	char        sb[]="PROGRAM";
	char        sc[]="ABCDEFORTRANCODINGSHEET";
	long int ID,JD,I1,I2,I,J,i,j;
	float SW,RSU=0;
	for(i=0;i< 20;i++){
		r.ra[i]=1.0;
		rb[i]=2.0;
		rc[i]=3.0;
		d.da[i]=1.0;
		db[i]=2.0;
		dc[i]=3.0;
		q.qa[i]=1.0;
		qb[i]=2.0;
		qc[i]=3.0;
		h.ha[i]=1;
		hb[i]=2;
		hc[i]=3;
		it.ia[i]=1;
		ib[i]=2;
		ic[i]=3;
		ce.cea[i].real=1.;
		ce.cea[i].imag=0.;
		ceb[i].real=0.;
		ceb[i].imag=1.;
		cec[i].real=1.;
		cec[i].imag=1.;
		cd.cda[i].dreal=1.;
		cd.cda[i].dimag=0.;
		cdb[i].dreal=1.;
		cdb[i].dimag=0.;
		cdc[i].dreal=1.;
		cdc[i].dimag=1.;
		cq.cqa[i].qreal=1.;
		cq.cqa[i].qimag=0.;
		cqb[i].qreal=0.;
		cqb[i].qimag=1.;
		cqc[i].qreal=1.;
		cqc[i].qimag=1.;
		lba[i]=1;
		lbb[i]=0;
		lbc[i]=1;
		lbd[i]=0;
		l.l4a[i]=1;
		l4b[i]=0;
		l4c[i]=1;
	}
	for(I2=1;I2<=5;I2++)
	{
		ID=1;
		JD=1;
		RMX=0.;
		DMX=0.;
		QMX=0.;
		HMX=0.;
		IMX=0;
		CEMX.real=0.;
		CEMX.imag=0.;
		for(I1=1;I1<=10;I1++)
		{
			IA(1)=atoi(sa);
			SW=1.0;
			QA(I1)=QA(I1)*QB(I1);
			QA(I1)=QA(I1)/3.0;
			QB(I1)=fabs(QB(I1)+QC(I1));
			RB(I1)=fabs(CQA(I1).qreal+CQB(I1).qreal);
			RC(I1)=fmod(RA(I1),RB(I1));
			if (RC(I1) >  2.)
			{
				SW=0.0;
				CVCT1();
				RSUM=RSUM+RD(I1);
				RSU=RSU+RB(I1);
				if (RB(I1) >  100)goto LBL_10         ;
			}
			RA(I1)=(RA(I1+1)>=0)?RA(I1):-RA(I1);
			QA(I1)=(QA(I1+1)>=0)?QA(I1):-QA(I1);
			IA(I1)=(IA(I1+1)>=0)?IA(I1):-IA(I1);
			QA(I1)=QA(I1)+(long double)DA(I1)*(long double)DB(I1);
			RMX=(RA(I1)>RMX) ? RA(I1):RMX;
			DMX=(DA(I1)>DMX) ? DA(I1):DMX;
			QMX=(QA(I1)>QMX) ? QA(I1):QMX;
			HMX=(HA(I1)>HMX) ? HA(I1):HMX;
			IMX=(IA(I1)>IMX) ? IA(I1):IMX;
			CEMX.real=((CEA(I1).real>CEMX.real)?CEA(I1).real:CEMX.real)*
			    ((CEA(I1).imag>CEMX.imag)?CEA(I1).imag:CEMX.imag);
			CEMX.imag=((CEA(I1).real>CEMX.real)?CEA(I1).real:CEMX.real)*
			    ((CEA(I1).imag>CEMX.imag)?CEA(I1).imag:CEMX.imag);
			IT=DVCHK();
			if (IT == 1)
			{
				printf(" *****VINF.2**\n");
				goto LBL_10;
			}
			ID=ID+IA(1);
			if (IA(1) >  2)
			{
				IA(1)=1;
				goto LBL_10;
			}
			JD=JD+IB(1);
			if (JD >  10)goto LBL_10         ;
			RD(JD)=RD(JD)+1;
			CED(JD).real=CED(JD).real+1;
			CED(JD).imag=CED(JD).imag;
LBL_10:
			;
		}
		printf(" ***  **VINF.2**\n");
		printf(" RMX= %g ,DMX= %g ,QMX= %g ,HMX= %hd ,IMX= %ld \n",
		    RMX,DMX,(double)QMX,HMX,IMX);
		printf(" CEMX= %g %g \n",CEMX.real,CEMX.imag);
		printf(" RSUM= %g ,RSU= %g \n",RSUM,RSU);
		printf(" SW= %g \n",SW);
		for(i=1;i<=20;i++){
			printf(" RA= %g ,RB= %g ,RC= %g \n",RA(i),RB(i),RC(i));
		}
	}
	exit (0);
}
int CVCT1()
{
	unsigned long int i,j,I,J;
	for(I=1;I<=12;I++)
	{
		CED(I).real=CED(I).real+1.0;
		CED(I).imag=CED(I).imag;
		CDD(I).dreal=CDD(I).dreal+1.0;
		CDD(I).dimag=CDD(I).dimag;
		RD(I)=((RD(I)+1.)>=0.0)?(int)(RD(I)+1.+0.5):(int)(RD(I)+1.-0.5);
		CQD(I).qreal=CQD(I).qreal+1.0;
		CQD(I).qimag=CQD(I).qimag;
		DD(I)=((DD(I)+1.5)>=0.0)?(int)(DD(I)+1.5+0.5):(int)(DD(I)+1.5-0.5);
		QD(I)=((QD(I)-1.3)>=0.0)?(int)(QD(I)-1.3+0.5):(int)(QD(I)-1.3-0.5);
		HD(I)=(HD(I)>=0.0)?(int)(HD(I)+0.5):(int)(HD(I)-0.5);
		ID(I)=(RD(I)>=0.0)?(int)(RD(I)+0.5):(int)(RD(I)-0.5)+
		    (int)(DD(I)+(QD(I)>=0.0)?(int)(QD(I)+0.5):(int)(QD(I)-0.5));
		L4D(I)=1;
LBL_10:
		;
	}
	return 0;
}
int  DVCHK()
{
	return 2;
}
