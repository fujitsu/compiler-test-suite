#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define A(i)   a[i-1]
#define B(i)   b[i-1]
#define C(i)   c[i-1]
#define D(i)   d[i-1]
#define QA(i)  qa[i-1]
#define QB(i)  qb[i-1]
#define QC(i)  qc[i-1]
#define QD(i)  qd[i-1]
#define LA(i)  la[i-1]
#define LB(i)  lb[i-1]
#define LC(i)  lc[i-1]
#define LD(i)  ld[i-1]
#define L1A(i) l1a[i-1]
#define L1B(i) l1b[i-1]
#define L1C(i) l1c[i-1]
#define L1D(i) l1d[i-1]
double        a[10],b[10],c[10],d[10]={
	0,0,0,0,0,1,0,2,1,2};
long double   qa[10],qb[10],qc[10],qd[10]={
	0,0,0,0,0,1,0,-1,1,-1};
unsigned long int la[10],lb[10],lc[10],ld[10];
unsigned char l1a[10],l1b[10],l1c[10],l1d[10];
int main()
{
	long int N=10;
	long int I,J,i,j;
	for(i=0;i< 10;i++){
		b[i]=1.0;
		c[i]=2.0;
		qb[i]=1.0;
		qc[i]=2.0;
		la[i]=(i<5)?1:0;
		lb[i]=(i<5)?1:0;
		lc[i]=(i<5)?1:0;
		ld[i]=(i<5)?1:0;
		l1a[i]=(i<5)?1:0;
		l1b[i]=(i<5)?1:0;
		l1c[i]=(i<5)?1:0;
		l1d[i]=(i<5)?1:0;
	}
	printf("  *****  *****\n");
	for(I=1;I<=N;I++)
	{
		if ( LA(I) ){
			A(I)=B(I)+C(I);
			QA(I)=QC(I);
		}
		if ( LB(I)){
			A(I)=B(I)*C(I);
			QA(I)=QB(I);
		}
		else{
			A(I)=B(I)/C(I);
			QA(I)=QD(I);
		}
		if (LC(I)){
		}
		else{
			if (LD(I)){
				A(I)=pow(B(I),C(I));
			}
		}
LBL_10:
		;
	}
	for(I=1;I<=N;I++)
	{
		if (LA(I))goto LBL_21         ;
		A(I)=sqrt(B(I)+D(I));
		QA(I)=QB(I);
LBL_21:
		;
		if (LB(I)) A(I)=B(I)*sin(D(I)) + QA(I)*QC(I);
LBL_20:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g %g \n",A(i),(double)QA(i));
	}
	for(I=1;I<=N;I++)
	{
		if (L1A(I)){
			A(I)=B(I)+C(I);
			D(I)=A(I)*C(I);
			if (L1B(I)){
			}
			else{
				A(I)=pow(B(I),D(I));
			}
		}
		else{
			A(I)=B(I)+C(I);
			if (L1C(I)){
			}
			else{
				if (L1A(I)){
					A(I)=B(I)*pow(C(I),D(I));
				}
			}
		}
LBL_30:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",A(i));
	}
	for(I=1;I<=N;I++)
	{
		if (L1A(I)){
			if ((B(I)*C(I)) >  1.2){
				A(I)=pow((double)I,B(I));
			}
			else{
				if (A(I) == (B(I)/C(I))){
					A(I)=pow(A(I),C(I))/D(I);
					QA(I)=QB(I)+QC(I);
				}
			}
		}
		else{
		}
		if (LA(I) || L1D(I) || (A(I) > 0)) A(I)=A(I)+sqrt(B(I));
		if (LB(I) || (!LA(I) && L1C(I)))goto LBL_40         ;
		A(I)=D(I)+sin(B(I));
		QA(I)=pow((double)QA(I),(double)I);
LBL_40:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g %g \n",A(i),(double)QA(i));
	}
	I=5;
	for(J=1;J<=N;J++)
	{
		if ( LA(I) ){
			A(J)=B(J)+C(J);
			QA(J)=QB(J);
		}
		if ( LB(I)){
			A(J)=pow(B(J),C(J));
			QA(J)=A(J);
		}
		else{
			A(J)=B(J)/C(J)+sqrt(A(J))+QB(J);
		}
		if (L1C(I)){
			A(J)=B(J)-C(J);
		}
		else{
			if (LD(I)){
				A(J)=pow(B(J),C(J));
				QA(J)=I;
			}
		}
LBL_50:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g %g \n",A(i),(double)QA(i));
	}
	for(J=1;J<=N;J++)
	{
		if (L1A(I))goto LBL_61         ;
		A(J)=B(J)+D(J);
LBL_61:
		;
		if (L1B(I)) A(J)=pow((B(J)*D(J)),(double)I) + QA(J);
		if (LC(I))goto LBL_60         ;
		A(J)=B(J)-D(J)+B(I)+pow(A(J),(double)I);
		QA(J)=QB(J);
LBL_60:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g %g \n",A(i),(double)QA(i));
	}
	exit (0);
}
