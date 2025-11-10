#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB2(long int N,COMPLEX32 *CQVAL,long double QVAL);
int SUB1(double DARG,long double *QVAL);
#define DA10(i)   da10[i-1]
#define DA20(i)   da20[i-1]
#define DA30(i)   da30[i-1]
#define DB10(i,j) db10[i-1][j-1]
#define DB20(i,j) db20[i-1][j-1]
#define DB30(i,j) db30[i-1][j-1]
#define QA10(i)   qa10[i-1]
#define LA10(i)   la10[i-1]
#define LA20(i,j) la20[i-1][j-1]
#define CQ10(i)   cq10[i-1]
#define LB10(i)   lb10[i-1]
#define CD10(i,j) cd10[i-1][j-1]
double      da10[20],da20[20],da30[20],db10[20][20],db20[20][20],
db30[20][20];
long double qa10[20];
unsigned long int la10[20],la20[20][20];
COMPLEX32         cq10[20];
unsigned char     lb10[20];
COMPLEX16         cd10[20][20];
int main()
{
	long int    I,J,N,i,j;
	double      DVAL1,DVAL2,DSCLR,DVAL3,DX,DY,DARG1;
	long double QVAR1;
	for(i=0;i< 20;i++)
	{
		da10[i]=1.0;
		da20[i]=2.0;
		da30[i]=3.0;
	}
	for(j=0;j< 20;j++){
		for(i=0;i< 20;i++){
			db10[i][j]=2.0;
			db20[i][j]=3.0;
			db30[i][j]=4.0;
		}
	}
	for(i=0;i< 20;i++){
		qa10[i]=3.14;
		la10[i]=0;
	}
	for(j=0;j< 20;j++){
		for(i=0;i< 20;i++){
			la20[i][j]=0;
		}
	}
	for(i=0;i< 20;i++){
		cq10[i].qreal=2.0;
		cq10[i].qimag=4.0;
		lb10[i]=0;
	}
	for(j=0;j< 20;j++){
		for(i=0;i< 20;i++){
			cd10[i][j].dreal=3.0;
			cd10[i][j].dimag=5.0;
		}
	}
	for(I=2;I<=10;I++)
	{
		DA10(I)=DA20(I+10)+DA30(I*2);
		for(J=I;J<=19;J+=2)
		{
			DB10(I,J)=DB20(I,J)+DB30(I,J+1);
			DB20(I,J-1)=DB10(J,I+1)-DB30(I,J)*2.0;
			DVAL1=(DB10(J,I-1)>DB20(J,I)) ? DB10(J,I-1):DB20(J,I)-DB30(I,J);
			DVAL2=(DB10(J,I+1)<DB30(I,J)) ? DB10(J,I+1):DB30(I,J);
			DSCLR=(double)(int)(0.5+sqrt(DB10(I+1,J)))+DVAL2;
			QA10(J)=(long double)(DSCLR+DA30(J)*2.0 );
			QVAR1=(QA10(J)+2.0)/DVAL1;
			CQ10(J).qreal=(long double)(QVAR1);
			CQ10(J).qimag=0;
			;
			if ( CQ10(J).qreal > 0.0 ) LB10(J)=1;
			DVAL3=(double)(QVAR1);
			DB30(J,I)=(DVAL1>DVAL2)?DVAL1:DVAL2;
			DB30(J,I)=(DB30(J,I)>DSCLR)?DB30(J,I):DSCLR-DVAL3;
			if ( DB30(I,J)  ==  4.0 ){
				LA10(J)=1;
				DB10(I,I)=DB10(I,I)+DB20(I,J);
			}
LBL_20:
			;
		}
		DA20(I)=(DA10(I) > DA30(I)) ? DA10(I):DA30(I);
LBL_10:
		;
	}
	printf("  ****  *** NO.1 **** \n");
	for(i=1;i<=10;i++){
		printf(" %g \n",DA20(i));
	}
	for(j=11;j<=20;j++){
		for(i=1;i<=10;i++){
			printf(" %g \n",DB10(i,j));
		}
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" %g \n",DB20(i,j));
		}
	}
	for(j=1;j<=10;j++){
		for(i=11;i<=20;i++){
			printf(" %g \n",DB30(i,j));
		}
	}
	for(i=1;i<=20;i++){
		printf(" (%g,%g) ",(double)CQ10(i).qreal,(double)CQ10(i).qimag);
		printf(" %u  ",LB10(i));
		printf(" %lu \n",LA10(i));
	}
	DVAL1=0.0;
	for(I=1;I<=20;I++)
	{
		if (!LA10(I)){
			LA10(I)=(!LA10(I))?1:0;
			DX=DA10(I)+(double)(int)(0.5+log((DA20(I) < 255.0) ?
			    DA20(I):255.0));
			DY=DA10(I)+(double)(int)(0.5+sqrt(DA30(I)));
		}
		else{
			DX=DA10(I)+DA20(I)/2.0;
			DY=DA10(I)+DA30(I)/2.0;
		}
		for(J=1;J<=10;J++)
		{
			if ( DB10(I,J)  >   DA10(J)){
				DVAL1=DB10(I,J)-DB20(I,J);
			}
			else{
				DVAL1=DB10(I,J)-DB30(J,I);
			}
			DB30(I,J)=fabs(DB30(J,I)-DA20(I)-DA30(I));
			DARG1=DB30(I,J+10)-DVAL1;
			if ( LB10(J) || LB10(J+10) ) SUB1(DARG1,&QA10(J));
			N=J;
			SUB2(N,&CQ10(J),QA10(J));
			DVAL2=(double)(CQ10(J).qimag);
			DB10(I,J)=(((DB20(I,J)<DB30(J,I))?DB20(I,J):DB30(J,I))>DB20(J,1))?
			    ((DB20(I,J)<DB30(J,I))?DB20(I,J):DB30(J,I)):
			DB20(J,1)+
			    DVAL1*(DB20(J,J));
			DB20(I,20)=DB20(I,20)+DB30(I,J)-DVAL2;
LBL_40:
			;
		}
		CD10(I,I).dreal=(double)DX-(double)(DA20(I));
		CD10(I,I).dimag=(double)DY;
LBL_30:
		;
	}
	printf("  ****  *** NO.2 **** \n");
	for(j=1;j<=20;j++){
		for(i=1;i<=20;i++){
			printf(" %g %g \n",CD10(i,j).dreal,CD10(i,j).dimag);
		}
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=20;i++){
			printf(" DB10 - %g \n",DB10(i,j));
		}
	}
	for(i=1;i<=20;i++){
		printf(" DB20 - %g \n",DB20(i,20));
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=20;i++){
			printf(" DB30 - %g \n",DB30(i,j));
		}
	}
	exit (0);
}
#define DUMMY1(i) dummy1[i-1]
#define DUMMY2(i) dummy2[i-1]
int SUB1(double DARG,long double *QVAL)
{
	double dummy1[10],dummy2[10];
	double DVAL,DVAL1,DVAL2;
	long int I,J,i,j;
	DVAL=0.0;
	for(I=1;I<=10;I++)
	{
		DVAL=DVAL+1.0;
		DUMMY1(I)=DARG+DVAL;
		DUMMY2(I)=DVAL-DARG;
LBL_10:
		;
	}
	DVAL1=0.0;
	DVAL2=0.0;
	for(J=1;J<=10;J++)
	{
		DVAL1=DVAL1+DUMMY1(J);
LBL_20:
		;
		DVAL2=(DVAL2 > DUMMY2(J)) ? DVAL2:DUMMY2(J);
	}
	*QVAL=(long double)DVAL1/(long double)DVAL2;
	return 0;
}
#define QDIM(i) u1.qdim[i-1]
int SUB2(long int N,COMPLEX32 *CQVAL,long double QVAL)
{
	union { 
		long double qdim[2];
		COMPLEX32 CQVAL1 ; 
	} u1;
	u1.CQVAL1.qreal=CQVAL->qreal;
	u1.CQVAL1.qimag=CQVAL->qimag;
	if ( N < 5 ){
		QDIM(1)=QVAL;
	}
	else{
		QDIM(2)=QVAL;
	}
	CQVAL->qreal=u1.CQVAL1.qreal;
	CQVAL->qimag=u1.CQVAL1.qimag;
	printf("  *** SUB2 RESULT *** \n");
	printf("  ***  N  **   CQVAL   **   QVAL   *** \n");
	printf(" %ld ( %g %g ) %g \n",N,(double)CQVAL->qreal,(double)CQVAL->qimag,(double)QVAL);
	return 0;
}
