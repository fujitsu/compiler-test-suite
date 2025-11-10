#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L1(i)   l1[i-1]
#define L2(i)   l2[i-1]
#define L3(i)   l3[i-1]
#define I1(i)   i1[i-1]
#define R1(i)   r1[i-1]
#define R2(i)   r2[i-1]
#define R3(i)   r3[i-1]
#define RD1(i)  rd1[i-1]
#define RD2(i)  rd2[i-1]
#define C1(i)   c1[i-1]
#define C2(i)   c2[i-1]
#define C3(i)   c3[i-1]
#define L11(i)  l11[i-1]
#define L12(i)  l12[i-1]
#define I11(i)  i11[i-1]
#define R11(i)  r11[i-1]
#define RD11(i) rd11[i-1]
#define RD12(i) rd12[i-1]
#define RD13(i) rd13[i-1]
#define C11(i)  c11[i-1]
#define CD11(i) cd11[i-1]
#define CD12(i) cd12[i-1]
#define L21(i)  l21[i-1]
#define I21(i)  i21[i-1]
#define I22(i)  i22[i-1]
#define R21(i)  r21[i-1]
#define R22(i)  r22[i-1]
#define RD21(i) rd21[i-1]
#define RD22(i) rd22[i-1]
#define CD21(i) cd21[i-1]
#define CD22(i) cd22[i-1]
unsigned  long int l1[10],l2[10],l3[10]={
	0,0,1,1,1,1,1,1,1,1};
long int  i1[10];
float     r1[10],r2[10],r3[10];
double    rd1[10],rd2[10];
COMPLEX8  c1[10],c2[10],c3[10];
unsigned  long int l11[10],l12[10];
long int  i11[10];
float     r11[10];
double    rd11[10]={
	0,0,0,0,0,2,2,2,2,2},
rd12[10],rd13[10]={
	1,2,3,1,2,3,1,2,3,1};
COMPLEX8  c11[10];
COMPLEX16 cd11[10],cd12[10];
unsigned  long int l21[10];
long int  i21[10],i22[10];
float     r21[10],r22[10]={
	2,2,2,5,5,5,8,8,8,10};
double    rd21[10],rd22[10];
COMPLEX16 cd21[10],cd22[10];
int main()
{
	long int  N=10,i,j;
	long int  J=5;
	float     S2=0.,S21=0.;
	COMPLEX16 CS11={
		1,1	};
	unsigned  long int LS21=1,LS22=0;
	float     S3=0;
	long      int I;
	for(i=0;i< 10;i++){
		l1[i]=(i<5)?1:0;
		l2[i]=0;
		i1[i]=0;
		r1[i]=0.;
		r2[i]=0.;
		r3[i]=1.;
		rd1[i]=0.;
		rd2[i]=4.;
		c1[i].real=0.;
		c1[i].imag=0.;
		c2[i].real=2.;
		c2[i].imag=2.;
		c3[i].real=1.;
		c3[i].imag=1.;
		l11[i]=i+1;
		l12[i]=(i<5)?1:0;
		i11[i]=(i<5)?0:1;
		c11[i].real=0;
		c11[i].imag=0;
		cd11[i].dreal=0;
		cd11[i].dimag=0;
		cd12[i].dreal=2;
		cd12[i].dimag=2;
		l21[i]=0;
		i21[i]=0;
		i22[i]=i+1;
		r21[i]=i+1;
		rd21[i]=0.;
		cd21[i].dreal=0;
		cd21[i].dimag=0;
		cd22[i].dreal=1;
		cd22[i].dimag=1;
	}
	printf("  *****  *****                        \n");
	printf("  NO.1  NESTED IF \n");
	for(I=1;I<=N;I++)
	{
		if ( L1(I) ){
			I1(I)=I;
			R1(J)=R1(J)+(float)(I);
			RD1(I)=sqrt(RD2(I));
			L2(I)=(!L3(I))?1:0;
			if ( L2(I) ){
				I1(I)=-I;
				R2(J)=R2(J)-(float)(I);
				C1(I).real=(C2(I).real*C3(I).real+C2(I).imag*C3(I).imag)/
				    (C3(I).real*C3(I).real+C3(I).imag*C3(I).imag);
				C1(I).imag=(C2(I).imag*C3(I).real-C2(I).real*C3(I).imag)/
				    (C3(I).real*C3(I).real+C3(I).imag*C3(I).imag);
			}
			else{
				I1(I)=I*I;
				R3(J)=R3(J)*(float)(I);
				C1(I).real=C2(I).real*C3(I).real-C2(I).imag*C3(I).imag;
				C1(I).imag=C2(I).imag*C3(I).real+C2(I).real*C3(I).imag;
			}
		}
		else{
			I1(I)=I*2;
		}
LBL_10:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %ld %g %g %lu %g %g %g %g \n",I1(i),R1(i),RD1(i),L2(i),R2(i),
		    C1(i).real,C1(i).imag,R3(i));
	}
	printf("  NO.2   NESTED LOGICAL IF \n");
	for(I=1;I<=N;I++)
	{
		if ( L11(I) || L12(I) )goto LBL_21         ;
		R11(I)=(float)(I);
		RD11(I)=sqrt((double)(I));
		if ( RD11(I)  ==  2. )goto LBL_22         ;
		S2=S2+R11(I);
LBL_22:
		;
		C11(I11(I)).real=R11(I);
		C11(I11(I)).imag=0;
		if ( I >   5)goto LBL_23         ;
		R11(I)=-I;
LBL_23:
		;
		goto LBL_20;
LBL_21:
		;
		CD11(I).dreal=(CD12(I).dreal*CS11.dreal+CD12(I).dimag*CS11.dimag)/
		    (CS11.dreal*CS11.dreal+CS11.dimag*CS11.dimag);
		CD11(I).dimag=(CD12(I).dimag*CS11.dreal-CD12(I).dreal*CS11.dimag)/
		    (CS11.dreal*CS11.dreal+CS11.dimag*CS11.dimag);
		if ( I >   3)goto LBL_24         ;
		RD12(I)=pow(RD11(I),RD13(I));
LBL_24:
		;
		L12(I)=(RD12(I)==(double)(I))?1:0;
		S21=S21-R11(I);
LBL_20:
		;
	}
	printf(" %g %g \n",S2,S21);
	for(i=1;i<=10;i++){
		printf(" %g %g %g %g %g %g %g %lu \n",
		    R11(i),RD11(i),C11(i).real,C11(i).imag,
		    CD12(i).dreal,CD12(i).dimag,RD12(i),L12(i));
	}
	printf("  NO.3  NESTED ARITHMETIC-IF \n");
	for(I=1;I<=N;I++)
	{
		if ((R21(I) - R22(I)) < 0 )goto LBL_31;
		if ((R21(I) - R22(I)) ==0 )goto LBL_32;
		goto LBL_33;
LBL_33:
		;
		I21(I)=I;
		RD22(I)=sqrt((double)(I));
		if (( RD22(I) - 3.0 ) < 0 ) goto LBL_34;
		if (( RD22(I) - 3.0 ) ==0 ) goto LBL_35;
		goto LBL_36;
LBL_34:
		;
		RD21(I)=sqrt(RD22(I));
		goto LBL_30;
LBL_35:
		;
		CD21(I).dreal=CD22(I).dreal+2.;
		CD21(I).dimag=CD22(I).dimag+1.;
		goto LBL_30;
LBL_36:
		;
		L21(I22(I))=(LS21 || LS22)?1:0;
		goto LBL_30;
LBL_31:
		;
		I21(I)=-I;
		if (( I21(I) + 4 ) < 0 ) goto LBL_37;
		if (( I21(I) + 4 ) ==0 ) goto LBL_38;
		goto LBL_38;
LBL_37:
		;
		RD21(I)=sqrt((double)(I));
		goto LBL_30;
LBL_38:
		;
		goto LBL_30;
LBL_32:
		;
		S3=S3+(float)(I)*R22(I);
		goto LBL_30;
LBL_30:
		;
	}
	printf(" %g \n",S3);
	for(i=1;i<=10;i++){
		printf(" %ld %g %g %g %g %g %lu \n",I21(i),R21(i),RD21(i),RD22(i),
		    CD21(i).dreal,CD21(i).dimag,L21(i));
	}
	exit (0);
}
