#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L1(i)  l1[i-1]
#define I1(i)  i1[i-1]
#define R1(i)   r1[i-1]
#define R2(i)   r2[i-1]
#define RD1(i)  rd1[i-1]
#define RD2(i)  rd2[i-1]
#define L11(i)  l11[i-1]
#define L12(i)  l12[i-1]
#define R11(i)  r11[i-1]
#define RD11(i) rd11[i-1]
#define RD12(i) rd12[i-1]
#define RD13(i) rd13[i-1]
#define L31(i)  l31[i-1]
#define L32(i)  l32[i-1]
#define L33(i)  l33[i-1]
#define L34(i)  l34[i-1]
#define L35(i)  l35[i-1]
#define L36(i)  l36[i-1]
#define L37(i)  l37[i-1]
#define RD21(i) rd21[i-1]
unsigned long int l1[10];
long int          i1[10];
float             r1[10],r2[10];
double            rd1[10],rd2[10];
unsigned long int l11[10],l12[10];
float             r11[10];
double            rd11[10],rd12[10],rd13[10]={
	1,2,3,1,2,3,1,2,3,1};
unsigned long int l31[10],l32[10],l33[10],l34[10],l35[10],l36[10],l37[10];
double            rd21[10];
int main()
{
	long int N=10,i,j,I,J;
	float S21=0.;
	for(i=0;i< 10;i++){
		l1[i]=(i<5)?1:0;
		i1[i]=0;
		r1[i]=0.;
		r2[i]=1.;
		rd1[i]=0.;
		rd2[i]=4.;
		l11[i]=(i<5)?1:0;
		l12[i]=0;
		r11[i]=(i<5)?1:0;
		rd11[i]=(1<5)?1:0;
		l31[i]=1;
		l32[i]=1;
		l33[i]=1;
		l34[i]=1;
		l35[i]=1;
		l36[i]=1;
		l37[i]=1;
		rd21[i]=0.;
	}
	printf("  *****  *****                        \n");
	printf("  NO.1  DO-BRANCH \n");
	for(I=1;I<=N;I++)
	{
		if ( L1(I) ==1){
			I1(I)=I;
			R1(I)=R2(I)+(float)(I);
			RD1(I)=sqrt(RD2(I));
		}
		else{
			goto LBL_11;
		}
LBL_10:
		;
	}
LBL_11:
	;
	printf(" %ld \n",I);
	for(i=1;i<=10;i++){
		printf(" %ld %g %g \n",I1(i),R1(i),RD1(i));
	}
	printf("  NO.2   CONTAINS DO LOOP  \n");
	for(I=1;I<=N;I++)
	{
		if ( L11(I)  ||   L12(I))goto LBL_21         ;
		R11(I)=(float)(I);
		RD11(I)=sqrt((double)(I));
		goto LBL_22;
LBL_21:
		;
		for(J=1;J<=N;J++)
		{
			RD12(J)=sin(RD13(J));
LBL_25:
			;
		}
		goto LBL_20;
LBL_22:
		;
		S21=S21-R11(I);
LBL_20:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g %g %g \n",R11(i),RD11(i),RD12(i));
	}
	printf(" %g \n",S21);
	printf("  NO.3  NESTED ARITHMETIC-IF \n");
	for(I=1;I<=N;I++)
	{
		if ( L31(I) ){
			if ( L32(I) ){
				if ( L33(I) ){
					if ( L34(I) ){
						if ( L35(I) ){
							if ( L36(I) ){
								if ( L37(I) ){

	RD21(I)=sqrt((double)(I));

								}
							}
						}
					}
				}
			}
		}
LBL_30:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",RD21(i));
	}
	exit (0);
}
