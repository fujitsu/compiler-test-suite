#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define IA(i)  ia[i-1]
#define RA(i)  ra[i-1]
#define RB(i)  rb[i-1]
#define RC(i)  rc[i-1]
#define QA(i)  qa[i-1]
#define CEA(i) cea[i-1]
#define CEB(i) ceb[i-1]
#define CQ(i)  cq[i-1]
#define LBA(i) lba[i-1]
#define LBB(i) lbb[i-1]
#define LBC(i) lbc[i-1]
#define SA(i)  sa[i-1]
#define SB(i)  sb[i-1]
#define SC(i)  sc[i-1]
long int    ia[20];
float       ra[20],rb[20],rc[20];
long double qa[20];
COMPLEX8    cea[20],ceb[20];
COMPLEX32   cq[20];
unsigned char lba[20],lbb[20],lbc[20];
int main()
{
	long int ID,I4,J1=1,J2=2,J3=3,J4=4;
	long int H3;
	float    RSUM,R1;
	double   D2;
	long int work1;
	char     *pwork;
	char     sa[31],sb[31],sc[31];
	long int I1,I2,I3,I6,I5,I7,i,j,I,J;
	for(i=0;i< 10;i++){
		ia[i]=1;
	}
	for(i=10;i< 20;i++){
		ia[i]=4;
	}
	for(i=0;i< 20;i++){
		ra[i]=1.;
		rb[i]=3.;
		rc[i]=2.;
		qa[i]=2.;
		cea[i].real=1.;
		cea[i].imag=0.;
		ceb[i].real=1.;
		ceb[i].imag=1.;
		cq[i].qreal=2.;
		cq[i].qimag=2.;
		lba[i]=1;
		lbb[i]=0;
		lbc[i]=1;
	}
	for(i=0;i< 30;i++){
		sc[i]=' ';
	}
	sa[30]='\0';
	sb[30]='\0';
	sc[30]='\0';
	ID=1;
	printf("** ID = %ld \n",ID);
	for(R1=0. ;R1<=10.;R1+=1.2)
	{
		ID=ID+J2*J1-1;
		printf("** ID = %ld \n",ID);
		if (IA(ID-1) == 4)
		{
			IA(ID)=0;
		}
		if (IA(ID) != 0)
		{
			IA(ID)=IA(ID-1)+1;
		}
		for(i=1;i<=30;i++){
			SA(i)=' ';
			SB(i)=' ';
		}
		SA(ID)='A';
		SB(ID)='B';
		SC(2*ID-1)=SA(ID);
		SC(2*ID)  =SB(ID);
		RA(ID)=RB(ID)+RC(ID);
		pwork=strchr(sc,'B');
		work1=pwork - sc;
		RA(ID)=RB(ID) + (float)work1;
LBL_10:
		;
	}
	printf(" ***  ***\n");
	for(i=1;i<=20;i++){
		printf(" IA= %ld \n",IA(i));
		printf(" RA= %g \n",RA(i));
	}
	for(D2=1.;D2<=10.;D2+=1)
	{
		LBA((int)(D2))=(LBB((int)(D2))==LBC((int)(D2)))?1:0;
		if (D2-2  < 0) goto LBL_1;
		if (D2-2 == 0) goto LBL_2;
		goto LBL_1;
LBL_2:
		;
		LBA((int)(D2))=0;
LBL_1:
		;
		QA((int)(D2))=RA((int)(D2));
		CQ((int)(D2)).qreal=RA((int)(D2))+RA((int)(D2));
LBL_20:
		;
	}
	printf(" ***  ***\n");
	for(i=1;i<=20;i++){
		printf(" LBA= %u \n",LBA(i));
	}
	RSUM=0.0;
	for(H3=1;H3<=10;H3+=1)
	{
		RA(H3)=CEA(H3).real;
		RB(H3)=CEB(H3).real;
LBL_30:
		;
		RSUM=RSUM+RA(H3);
	}
	printf("***  ***\n");
	printf("RSUM= %g \n",RSUM);
	for(I4=1;I4<=10;I4++)
	{
		for(I5=1;I5<=10;I5++)
		{
			for(I6=1;I6<=10;I6++)
			{
				RA(I6)=I6*I5+I4;
LBL_60:
				;
			}
			for(I7=1;I7<=10;I7++)
			{
				RB(I7)=I7*I4+I5;
LBL_70:
				;
			}
			printf(" ***  ***\n");
			printf(" RA= %g \n",RA(I5));
LBL_50:
			;
		}
		printf(" ***  ***\n");
		printf(" RB= %g \n",RB(I4));
LBL_40:
		;
	}
	exit (0);
}
