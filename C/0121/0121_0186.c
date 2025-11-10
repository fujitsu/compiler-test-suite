#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L1(i)   l1[i-1]
#define L2(i)   l2[i-1]
#define I1(i)   i1[i-1]
#define R1(i)   r1[i-1]
#define R2(i)   r2[i+1]
#define L21(i)  l21[i-1]
#define L23(i)  l23[i-1]
#define L24(i)  l24[i-1]
#define RD25(i) rd25[i-1]
#define RD26(i) rd26[i-1]
#define RD27(i) rd27[i-1]
#define R22(i)  r22[i-1]
#define RD21(i) rd21[i-1]
#define RD22(i) rd22[i-1]
#define RD23(i) rd23[i-1]
#define RD24(i) rd24[i-1]
#define C21(i)  c21[i-1]
#define C22(i)  c22[i-1]
#define CD21(i) cd21[i-1]
#define L31(i)  l31[i-1]
#define I31(i)  i31[i-1]
#define I32(i)  i32[i-1]
#define I33(i)  i33[i-1]
#define I34(i)  i34[i-1]
#define I35(i)  i35[i-1]
#define R31(i)  r31[i-1]
#define R32(i)  r32[i-1]
#define R33(i)  r33[i-1]
#define RD31(i) rd31[i-1]
#define RD32(i) rd32[i-1]
#define CD31(i) cd31[i-1]
unsigned long int l1[10],l2[10]={
	1,1,0,0,1,1,0,0,1,1};
long int          i1[10];
float             r1[10],r2[13]={
	0,2,1,2,3,4,5,6,7,8,9,10,11};
unsigned long int l21[10],l23[10]={
	1,1,1,0,0,0,0,1,0,1},
l24[10];
float             r22[10];
double            rd21[10],rd22[10],rd23[11],rd24[10],rd27[10],
rd25[10]={
	1,2,3,1,2,3,4,1,2,3},
rd26[10]={
	1,2,0,2,1,3,2,0,1,2};
COMPLEX8          c21[10],c22[10];
COMPLEX16         cd21[10];
unsigned long int l31[10];
long int          i31[10],i32[10],i33[10],i34[10],i35[10];
float             r31[10],r32[10],r33[13]={
	1,2,3,1,2,3,1,2,3,1,2,3,1};
double            rd31[10]={
	1,1,2,3,1,2,4,5,6,1},
rd32[10];
COMPLEX16         cd31[10];
int main()
{
	long int N=10,i,j,I,J;
	unsigned long int LV1=1,LV2=1;
	unsigned long int AND;
	unsigned long int LV21=1,LV22=0,LV23=1,LV24=1;
	float RV21=5.;
	COMPLEX16 CDV21={
		1,1	};
	double S ;
	unsigned long int LV31=1;
	long int IV32=4;
	float RV31=4,RV32,RV33=1.;
	COMPLEX8 CV31;
	long int IV31=5;
	long int L=5;
	long int M=5;
	long int K;
	float RDV31,RDV32;
	for(i=0;i< 10;i++){
		l1[i]=0;
		r1[i]=(i+1);
		l21[i]=0;
		rd27[i]=0.;
		r22[i]=(i+1);
		rd21[i]=(i+1);
		rd22[i]=(i+1);
		rd23[i]=(i+1);
		rd24[i]=(i+1)*1.1;
		c21[i].real=((i+1)<5)?1.:0;
		c21[i].imag=((i+1)<5)?1.:0;
		c22[i].real=1.;
		c22[i].imag=1.;
		cd21[i].dreal=2.;
		cd21[i].dimag=2.;
		l31[i]=13;
		i31[i]=1;
		i32[i]=0;
		i33[i]=(i+1);
		i34[i]=(i+1);
		i35[i]=(i+1);
		r31[i]=(i+1);
		r32[i]=((i+1)<5)?(i+1):10-(i+1);
		rd32[i]=(i+1);
	}
	printf("  *****  *****  ONE BLOCK WITH NO MASK\n");
	for(I=1;I<=N;I++)
	{
		L1(I)=((LV1 && LV2) || (!L2(I)))?1:0;
		I1(I)=(int)(sin(R1(I)));
		J=N-I;
		R2(J)=R2(J-1)+(float)(J);
LBL_10:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %lu %ld %g \n",L1(i),I1(i),R2(i));
	}
	S=0.;
	printf("  *****  *****  ONE BLOCK WITH MASK   \n");
	for(I=1;I<=N;I++)
	{
		L21(I)=(LV21 || (LV22 != LV23))?1:0;
		if ( L21(I) ){
			RD27(I)=pow(RD25(I),RD26(I));
			L21(I)=(!(!(!L23(I))));
		}
		if ( !L21(I) ){
			RD27(I)=RD24(I)/8.0+RD23(I);
		}
		else{
			L24(I)=((RD25(I) <  RD26(I)) || (R22(I) <= RV21  )            ||
			    (RD21(I) <  RD22(I))||
			    ((fabs(C21(I).real) != fabs(C22(I).real)) &&
			    (fabs(C21(I).imag) != fabs(C22(I).imag))) ||
			    ((fabs(CDV21.dreal)  > (double)(CD21(I).dreal)) &&
			    (fabs(CDV21.dimag)  > (double)(CD21(I).dimag))))?1:0;
			RD23(I)=RD24(I)/10.0+RD23(I+1);
		}
		J=I+1;
		if ( LV24  ||  L21(I) ) S = S + RD27(I==1);
LBL_20:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %lu ",L21(i));
		printf(" %g ",RD27(i));
		printf(" %lu \n",L24(i));
	}
	for(i=1;i<=11;i++){
		printf(" %g \n",RD23(i));
	}
	printf(" %g \n",S);
	printf("  *****  *****  PLURAL BLOCKS \n");
	for(I=2;I<=N;I++)
	{
		K=I+2;
		if ( LV31  &&  (R31(L)  >=  RV31) ){
			RV32=R32(I)+(float)(I);
			RDV31=RV32*RD31(I);
			CV31.real=(float)(RDV31)-CD31(I).dreal;
			CV31.imag=CD31(I).dimag;
			CD31(I).dreal=CV31.real*(float)((double)(RV31));
			CD31(I).dimag=CV31.imag*(float)((double)(RV31));
		}
		else{
			RDV32=fabs(CD31(I).dreal);
			RV32=RDV32;
			I31(I)=(int)(RV32);
			I32(I)=(I31(I)>IV31)?I31(I):IV31;
			I32(I)=(I32(I)>(I33(I)-I34(I)))?I32(I):I33(I)-I34(I);
		}
		R33(K)=R33(K+1);
		if ((RV33 < RD32(M)) || (I35(M) > IV32) || L31(N) || !LV31){
			R33(K-1)=(float)(I32(I-1));
		}
LBL_30:
		;
	}
	for(i=1;i<=10;i++){
		printf(" (%g,%g) ",CD31(i).dreal,CD31(i).dimag);
		printf(" %lu ",I31(i));
		printf(" %lu ",I32(i));
		printf(" %g \n",R33(i));
	}
	exit (0);
}
