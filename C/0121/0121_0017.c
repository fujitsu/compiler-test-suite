#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define IA(i) ia[i-1]
#define IB(i) ib[i-1]
#define RA(i) ra[i-1]
#define RB(i) rb[i-1]
#define RC(i) rc[i-1]
#define DA(i) da[i-1]
#define QA(i) qa[i-1]
short  int ia[20];
long   int ib[20];
float  ra[20],rb[20],rc[20];
double da[20];
long   double qa[20];
int main()
{
	short int   HH=1,HI=2,HR=2,HD=2,HQ=2;
	long  int   IH=2,II=1,IR=2,ID=2,IQ=2;
	float       RH=2,RI=2,RR=1,RD=2,RQ=2;
	double      DH=2,DI=2,DR=2,DD=1,DQ=2;
	long double QH=2,QI=2,QR=2,QD=2,QQ=1;
	long int I,i;
	float CC,CDCD,CQCQ;
	for(i=0;i< 20;i++){
		ia[i]=1;
		ib[i]=1;
		ra[i]=1.;
		rb[i]=1.;
		rc[i]=1.;
		da[i]=1.;
		qa[i]=1.;
	}
	for(I=1;I<=10;I+=3)
	{
		HH=HH*2;
		II=II*HI;
		RR=RR*HR;
		DD=DD*HD;
		QQ=QQ*HQ;
		IA(HH)=1+RB(HH);
		RC(I)=RB(I)+3.;
		IB(II)=1+RB(II);
		RA((int)RR)=1.+RB((int)RR);
		DA((int)DD)=1.+RB((int)DD);
		QA((int)QQ)=1.+RB((int)QQ);
LBL_1:
		;
	}
	printf("  *** LOOP 1 ***  *** \n");
	printf(" ### IA ###\n");
	for(i=1;i<=20;i++){
		printf(" %hd \n",IA(i));
	}
	printf(" ### IB ###\n");
	for(i=1;i<=20;i++){
		printf(" %ld \n",IB(i));
	}
	printf(" ### RA ###\n");
	for(i=1;i<=20;i++){
		printf(" %g \n",RA(i));
	}
	printf(" ### DA ###\n");
	for(i=1;i<=20;i++){
		printf(" %g \n",DA(i));
	}
	printf(" ### QA ###\n");
	for(i=1;i<=20;i++){
		printf(" %g \n",(double)QA(i));
	}
LBL_10:
	;
	HH=1;
	II=1;
	RR=1;
	DD=1;
	QQ=1;
	for(I=1;I<=10;I+=3)
	{
		HH=HH*IH;
		RC(I)=RB(I)+3.;
		II=II*2;
		RR=RR*IR;
		DD=DD*ID;
		QQ=QQ*IQ;
		IA(HH)=1+RB(HH);
		IB(II)=1+RB(II);
		RA((int)RR)=1.+RB((int)RR);
		DA((int)DD)=1.+RB((int)DD);
		QA((int)QQ)=1.+RB((int)QQ);
LBL_2:
		;
	}
	printf("  *** LOOP 2 ***  *** \n");
	printf(" ### IA ###\n");
	for(i=1;i<=20;i++){
		printf(" %hd \n",IA(i));
	}
	printf(" ### IB ###\n");
	for(i=1;i<=20;i++){
		printf(" %ld \n",IB(i));
	}
	printf(" ### RA ###\n");
	for(i=1;i<=20;i++){
		printf(" %g \n",RA(i));
	}
	printf(" ### DA ###\n");
	for(i=1;i<=20;i++){
		printf(" %g \n",DA(i));
	}
	printf(" ### QA ###\n");
	for(i=1;i<=20;i++){
		printf(" %g \n",(double)QA(i));
	}
LBL_11:
	;
	HH=1;
	II=1;
	RR=1;
	DD=1;
	QQ=1;
	for(I=1;I<=10;I+=3)
	{
		HH=HH*RH;
		II=II*RI;
		RR=RR*2;
		RC(I)=RB(I)+3.;
		DD=DD*RD;
		QQ=QQ*RQ;
		IA(HH)=1+RB(HH);
		IB(II)=1+RB(II);
		RA((int)RR)=1.+RB((int)RR);
		DA((int)DD)=1.+RB((int)DD);
		QA((int)QQ)=1.+RB((int)QQ);
LBL_3:
		;
	}
	printf("  *** LOOP 3 ***  *** \n");
	printf(" ### IA ###\n");
	for(i=1;i<=20;i++){
		printf(" %hd \n",IA(i));
	}
	printf(" ### IB ###\n");
	for(i=1;i<=20;i++){
		printf(" %ld \n",IB(i));
	}
	printf(" ### RA ###\n");
	for(i=1;i<=20;i++){
		printf(" %g \n",RA(i));
	}
	printf(" ### DA ###\n");
	for(i=1;i<=20;i++){
		printf(" %g \n",DA(i));
	}
	printf(" ### QA ###\n");
	for(i=1;i<=20;i++){
		printf(" %g \n",(double)QA(i));
	}
	HH=1;
	II=1;
	RR=1;
	DD=1;
	QQ=1;
	for(I=1;I<=10;I+=3)
	{
		HH=HH*DH;
		II=II*DI;
		RR=RR*DR;
		RC(I)=RB(I)+3.;
		DD=DD*2;
		QQ=QQ*DQ;
		IA(HH)=1+RB(HH);
		IB(II)=1+RB(II);
		RA((int)RR)=1.+RB((int)RR);
		DA((int)DD)=1.+RB((int)DD);
		QA((int)QQ)=1.+RB((int)QQ);
LBL_4:
		;
	}
	printf("  *** LOOP 4 ***  *** \n");
	printf(" ### IA ###\n");
	for(i=1;i<=20;i++){
		printf(" %hd \n",IA(i));
	}
	printf(" ### IB ###\n");
	for(i=1;i<=20;i++){
		printf(" %ld \n",IB(i));
	}
	printf(" ### RA ###\n");
	for(i=1;i<=20;i++){
		printf(" %g \n",RA(i));
	}
	printf(" ### DA ###\n");
	for(i=1;i<=20;i++){
		printf(" %g \n",DA(i));
	}
	printf(" ### QA ###\n");
	for(i=1;i<=20;i++){
		printf(" %g \n",(double)QA(i));
	}
	HH=1;
	II=1;
	RR=1;
	DD=1;
	QQ=1;
	for(I=1;I<=10;I+=3)
	{
		HH=HH*QH;
		II=II*QI;
		RR=RR*QR;
		DD=DD*QD;
		RC(I)=RB(I)+3.;
		QQ=QQ*2;
		IA(HH)=1+RB(HH);
		IB(II)=1+RB(II);
		RA((int)RR)=1.+RB((int)RR);
		DA((int)DD)=1.+RB((int)DD);
		QA((int)QQ)=1.+RB((int)QQ);
LBL_5:
		;
	}
	printf("  *** LOOP 5 ***  *** \n");
	printf(" ### IA ###\n");
	for(i=1;i<=20;i++){
		printf(" %hd \n",IA(i));
	}
	printf(" ### IB ###\n");
	for(i=1;i<=20;i++){
		printf(" %ld \n",IB(i));
	}
	printf(" ### RA ###\n");
	for(i=1;i<=20;i++){
		printf(" %g \n",RA(i));
	}
	printf(" ### DA ###\n");
	for(i=1;i<=20;i++){
		printf(" %g \n",DA(i));
	}
	printf(" ### QA ###\n");
	for(i=1;i<=20;i++){
		printf(" %g \n",(double)QA(i));
	}
	exit (0);
}
