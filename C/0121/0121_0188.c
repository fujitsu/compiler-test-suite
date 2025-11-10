#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define I11(i)  i11[i-1]
#define R11(i)  r11[i-1]
#define R12(i)  r12[i-1]
#define R13(i)  r13[i-1]
#define R14(i)  r14[i-1]
#define R15(i)  r15[i-1]
#define R16(i)  r16[i-1]
#define R17(i)  r17[i-1]
#define R18(i)  r18[i-1]
#define R19(i)  r19[i-1]
#define R20(i)  r20[i-1]
#define R21(i)  r21[i-1]
#define R22(i)  r22[i-1]
#define RD11(i) rd11[i-1]
#define C11(i)  c11[i-1]
#define CD11(i) cd11[i-1]
#define R30(i)  r30[i-1]
#define R31(i)  r31[i-1]
#define R32(i)  r32[i-1]
#define R33(i)  r33[i-1]
#define R34(i)  r34[i-1]
#define R35(i)  r35[i-1]
#define R36(i)  r36[i-1]
#define R37(i)  r37[i-1]
#define R38(i)  r38[i-1]
#define R39(i)  r39[i-1]
#define R40(i)  r40[i-1]
#define C30(i)  c30[i-1]
#define L41(i)  l41[i-1]
#define R41(i)  r41[i-1]
#define R42(i)  r42[i-1]
#define R43(i)  r43[i-1]
#define R45(i)  r45[i-1]
#define R46(i)  r46[i-1]
#define R47(i)  r47[i-1]
#define R48(i)  r48[i-1]
#define R49(i)  r49[i-1]
#define R50(i)  r50[i-1]
#define R51(i)  r51[i-1]
#define R52(i)  r52[i-1]
#define R60(i)  r60[i-1]
#define R61(i)  r61[i-1]
#define R62(i)  r62[i-1]
#define R63(i)  r63[i-1]
#define R65(i)  r65[i-1]
#define R67(i)  r67[i-1]
#define R68(i)  r68[i-1]
#define R69(i)  r69[i-1]
#define R70(i)  r70[i-1]
long int  i11[10]={
	1,2,1,2,1,2,1,2,1,2};
float     r11[10],r12[10],r13[10],r14[10],r15[10],r16[10],r17[10],r18[10],
r19[10],r20[10],r21[10],r22[10];
double    rd11[10];
COMPLEX8  c11[10]={
	1.,1.,1.,1.,2.,2.,2.,2.,2.,2.,
	    3.,3.,3.,3.,3.,3.,3.,3.,2.,1.};
COMPLEX16 cd11[10]={
	1.,2.,1.,2.,3.,4.,3.,4.,3.,4.,
	    2.,2.,2.,2.,2.,2.,2.,1.,2.,1.};
float     r30[10],r31[10],r32[10],r33[10],r34[10],r35[10],r36[10],r37[10],
r38[10],r39[10],r40[10];
COMPLEX8  c30[10];
unsigned long int l41[10];
float     r41[10],r42[10],r43[10],r45[10],r46[10],r47[10],r48[10],r49[10],
r50[10],r51[10]={
	0,1,0,1,0,1,0,1,0,1},
r52[10];
float     r60[10],r61[10],r62[10],r63[10],r65[10],r67[10],r68[10],r69[10],
r70[10];
int main()
{
	long int N=10;
	float RV11=1.5;
	float RV13=0.;
	float RV30=5;
	float RV31=2.5;
	float RV32=0.5;
	float RV33=12.5;
	float RV34=0.;
	long int I,J,i,j;
	for(i=0;i< 10;i++){
		r14[i]=(i+1);
		rd11[i]=10-(i+1);
		r32[i]=(i+1)*1.1;
		r34[i]=(i+1)*1.1;
		r36[i]=(i+1)+10.;
		r41[i]=0.;
		r42[i]=0.;
		r43[i]=0.;
		r45[i]=0.;
		r46[i]=0.;
		r47[i]=0.;
		r48[i]=0.;
		r49[i]=0.;
		r50[i]=0.;
		r51[i]=0.;
		r52[i]=0.;
		r60[i]=0.;
		r61[i]=0.;
		r62[i]=0.;
		r63[i]=0.;
		r65[i]=0.;
		r67[i]=0.;
		r68[i]=0.;
		r69[i]=0.;
		r70[i]=0.;
	}
	printf("  *****  *(1)*  DATA TYPE R*4 NO MASK \n");
	for(I=1;I<=N;I++)
	{
		R11(I)=1.;
		R12(I)=RV11;
		R13(I)=R14(I);
		R15(I)=I;
		R16(I)=2.+R12(I);
		R17(I)=R13(I)+3.;
		R18(I)=R14(I)*R15(I);
		R19(I)=I11(I);
		R20(I)=RD11(I);
		R21(I)=C11(I).real;
		R22(I)=CD11(I).dreal;
		RV13=RV13+(R11(I)+R12(I)-R13(I)
		    +R14(I)-R15(I)+R16(I)+R17(I)+R18(I)-R19(I)
		    +R20(I)-R21(I)+R22(I));
LBL_10:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",R11(i));
		printf(" %g ",R12(i));
		printf(" %g ",R13(i));
		printf(" %g ",R15(i));
		printf(" %g ",R16(i));
		printf(" %g ",R17(i));
		printf(" %g ",R18(i));
		printf(" %g ",R19(i));
		printf(" %g ",R20(i));
		printf(" %g ",R21(i));
		printf(" %g \n",R22(i));
	}
	printf(" %g \n",RV13);
	printf("  *****  *(2)*  DATA TYPE R*4 WITH NO MASK\n");
	for(I=1;I<=N;I++)
	{
		R30(I)=(float)(I);
		R33(I)=R31(I)+(float)(int)(0.5+R34(I));
		R35(I)=fabs(R33(I))-fmod(R36(I),RV30);
		R37(I)=(R35(I)>=0)?RV31:-RV31;
		R38(I)=(R37(I)>RV32)?R37(I)-RV32:0;
		R39(I)=(R30(I)>R31(I))?R30(I):R31(I);
		R39(I)=(R39(I)>R33(I))?R39(I):R33(I);
		R39(I)=(R39(I)>RV33)  ?R39(I):RV33;
		R40(I)=C30(I).imag;
		RV34=RV34+(R30(I)+R31(I)+R32(I)+R33(I)+
		    R35(I)+R37(I)+R38(I)+R39(I)+R40(I));
LBL_20:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",R30(i));
		printf(" %g ",R31(i));
		printf(" %g ",R33(i));
		printf(" %g ",R35(i));
		printf(" %g ",R37(i));
		printf(" %g ",R38(i));
		printf(" %g ",R39(i));
		printf(" %g \n",R40(i));
	}
	printf(" RV34 = %g \n",RV34);
LBL_10000:
	;
	RV13=0.;
	printf("  *****  *(3)* DATA TYPE R*4 WITH MASK\n");
	for(I=1;I<=N;I++)
	{
		if ( L41(I) )goto LBL_30         ;
		R41(I)=1.;
		R42(I)=RV11;
		R43(I)=R14(I);
		R45(I)=I;
		R46(I)=2.+R42(I);
		R47(I)=R43(I)+3.;
		R48(I)=R14(I)*R45(I);
		R49(I)=I11(I);
		R50(I)=RD11(I);
		R51(I)=C11(I).real;
		R52(I)=CD11(I).dreal;
		RV13=RV13+
		    (R41(I)+R42(I)-R43(I)+R14(I)-R45(I)+R46(I)
		    -R47(I)+R48(I)-R49(I)+R50(I)-R51(I)+R52(I));
LBL_30:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",R41(i));
		printf(" %g ",R42(i));
		printf(" %g ",R43(i));
		printf(" %g ",R45(i));
		printf(" %g ",R46(i));
		printf(" %g ",R47(i));
		printf(" %g ",R48(i));
		printf(" %g ",R49(i));
		printf(" %g ",R50(i));
		printf(" %g ",R51(i));
		printf(" %g \n",R52(i));
	}
	printf(" %g \n",RV13);
	RV34=0.;
	printf("  *****  *(4)*  DATA TYPE R*4 WITH  MASK\n");
	for(I=1;I<=N;I++)
	{
		if (L41(I)){
			R60(I)=(float)(I);
			R63(I)=R61(I)+(float)(int)(0.5+R34(I));
			R65(I)=fabs(R63(I))-fmod(R36(I),RV30);
			R67(I)=(R65(I)>=0)?RV31:-RV31;
			R68(I)=(R67(I)>RV32)?R67(I)-RV32:0;
			R69(I)=(R60(I)>R61(I))?R60(I):R61(I);
			R69(I)=(R69(I)>R63(I))?R69(I):R63(I);
			R69(I)=(R69(I)>RV33)?R69(I):RV33;
			R70(I)=C30(I).imag;
			RV34=RV34+(R60(I)+R61(I)+R62(I)+R63(I)+
			    R65(I)+R67(I)+R68(I)+R69(I)+R70(I));
		}
LBL_40:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",R60(i));
		printf(" %g ",R61(i));
		printf(" %g ",R63(i));
		printf(" %g ",R65(i));
		printf(" %g ",R67(i));
		printf(" %g ",R68(i));
		printf(" %g ",R69(i));
		printf(" %g \n",R70(i));
	}
	printf(" %g \n",RV34);
	exit (0);
}
