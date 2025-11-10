#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L11(i)  l11[i-1]
#define L12(i)  l12[i-1]
#define I11(i)  i11[i-1]
#define I12(i)  i12[i-1]
#define I13(i)  i13[i-1]
#define I14(i)  i14[i-1]
#define I15(i)  i15[i-1]
#define I16(i)  i16[i-1]
#define I17(i)  i17[i-1]
#define I18(i)  i18[i-1]
#define I19(i)  i19[i-1]
#define I20(i)  i20[i-1]
#define I21(i)  i21[i-1]
#define I22(i)  i22[i-1]
#define I23(i)  i23[i-1]
#define R11(i)  r11[i-1]
#define RD11(i) rd11[i-1]
#define C11(i)  c11[i-1]
#define CD11(i) cd11[i-1]
#define I30(i)  i30[i-1]
#define I31(i)  i31[i-1]
#define I32(i)  i32[i-1]
#define I33(i)  i33[i-1]
#define I34(i)  i34[i-1]
#define I35(i)  i35[i-1]
#define I36(i)  i36[i-1]
#define I37(i)  i37[i-1]
#define R21(i)  r21[i-1]
#define R22(i)  r22[i-1]
#define RD21(i) rd21[i-1]
#define RD22(i) rd22[i-1]
#define L41(i)  l41[i-1]
#define L42(i)  l42[i-1]
#define I41(i)  i41[i-1]
#define I42(i)  i42[i-1]
#define I43(i)  i43[i-1]
#define I44(i)  i44[i-1]
#define I45(i)  i45[i-1]
#define I46(i)  i46[i-1]
#define I47(i)  i47[i-1]
#define I48(i)  i48[i-1]
#define I49(i)  i49[i-1]
#define I50(i)  i50[i-1]
#define I51(i)  i51[i-1]
#define I52(i)  i52[i-1]
#define I53(i)  i53[i-1]
#define L61(i)  l61[i-1]
#define I60(i)  i60[i-1]
#define I61(i)  i61[i-1]
#define I62(i)  i62[i-1]
#define I63(i)  i63[i-1]
#define I64(i)  i64[i-1]
#define I65(i)  i65[i-1]
#define I66(i)  i66[i-1]
#define I67(i)  i67[i-1]
unsigned long int l11[10],l12[10];
long int  i11[10],i12[10],i13[10],i14[10]={
	1,2,3,3,2,1,1,2,3,4},
i15[10],i16[10],i17[10],i18[10],
i19[10],i20[10],i21[10],i22[10],i23[10];
float     r11[10]={
	1,2,3,4,4,3,2,1,2,2};
double    rd11[10]={
	11,22,33,44,55,66,11,22,33,22};
COMPLEX8  c11[10]={
	1,1,1,1,1,1,2,2,2,2,2,2,3,3,3,3,3,3,3,3};
COMPLEX16 cd11[10]={
	2,2,2,2,3,3,3,3,3,3,5,5,5,5,5,5,5,5,5,5};
long int  i30[10],i31[10],i32[10],i33[10],i34[10],i35[10];
long int  i36[10],i37[10];
float     r21[10],r22[10];
double    rd21[10],rd22[10];
unsigned long int l41[10]={
	1,0,1,0,1,0,1,0,1,0},
l42[10];
long int  i41[10],i42[10],i43[10],i44[10],i45[10],i46[10],i47[10],i48[10],
i49[10],i50[10],i51[10],i52[10],i53[10];
unsigned long int l61[10]={
	1,0,1,0,1,0,1,0,1,0,};
long int  i60[10],i61[10],i62[10],i63[10],i64[10],i65[10];
long int  i66[10],i67[10];
int main()
{
	long int N=10,WK1,WK2;
	long int IV11=3;
	long int IV12=2;
	long int IV13=3;
	long int IV14=0;
	long int IV21=-5;
	long int IV22=-12.5;
	long int IV41=3;
	long int IV42=2;
	long int IV43=3;
	long int IV44=0;
	long int IV61=-5;
	long int IV62=-12.5;
	long int I,i,J,j;
	for(i=0;i< 10;i++){
		i23[i]=(i+1);
		i31[i]=(i+1);
		i33[i]=(i+1);
		i37[i]=-(i+1);
		r21[i]=(i+1);
		r22[i]=(i+1);
		rd21[i]=(i+1)*1.1;
		rd22[i]=(i+1)*1.1;
		i41[i]=0;
		i42[i]=0;
		i43[i]=0;
		i44[i]=0;
		i45[i]=0;
		i46[i]=0;
		i47[i]=0;
		i48[i]=0;
		i49[i]=0;
		i50[i]=0;
		i51[i]=0;
		i52[i]=0;
		i53[i]=0;
		i61[i]=(i+1);
		i63[i]=(i+1);
		i67[i]=-(i+1);
	}
	printf("  *****  *(1)*  INTEGER*4 NO MASK     \n");
	for(I=1;I<=N;I++)
	{
		I11(I)=1;
		I12(I)=IV11;
		I13(I)=I14(I);
		I15(I)=I;
		I16(I)=2+I12(I);
		I17(I)=I13(I)+3;
		I18(I)=I14(I)*I15(I);
		L11(I)=(I16(I)>=IV12)?1:0;
		L12(I)=(IV13==I17(I))?1:0;
		I19(I)=R11(I);
		I20(I)=RD11(I);
		I21(I)=C11(I).real;
		I22(I)=CD11(I).dreal;
LBL_10:
		;
		IV14=IV14+(I11(I)+I12(I)-I13(I)+I15(I)-I16(I)
		    +I17(I)+I18(I)-I19(I)+I20(I)-I21(I)
		    +I22(I)-I23(I));
	}
	for(i=1;i<=10;i++){
		printf(" %ld   ",I11(i));
		printf(" %ld   ",I12(i));
		printf(" %ld   ",I13(i));
		printf(" %ld   ",I15(i));
		printf(" %ld   ",I16(i));
		printf(" %ld \n",I17(i));
		printf(" %ld   ",I18(i));
		printf(" %lu   ",L11(i));
		printf(" %lu   ",L12(i));
		printf(" %ld   ",I19(i));
		printf(" %ld   ",I20(i));
		printf(" %ld   ",I21(i));
		printf(" %ld \n",I22(i));
	}
	printf(" %ld \n",IV14);
	printf("  *****  *(2)*  INTEGER*4 NO MASK     \n");
	for(I=1;I<=N;I++)
	{
		I30(I)=I;
		I32(I)=I31(I30(I));
		I34(I)=I33(I32(I));
		I35(I)=(int)(R21(I))+(int)(0.5+RD21(I));
		WK1=(I30(I)>I32(I))?I30(I):I32(I);
		WK1=(WK1   >I32(I))?WK1   :I34(I);
		WK2=(I34(I)<I32(I))?I34(I):I32(I);
		WK2=(WK2   <(I30(I)+I35(I)))?WK2:(I30(I)+I35(I));
		WK2=(WK2   <IV22)?WK2:IV22;
		I36(I)=I35(I)+(int)(R22(I))*(double)(int)(0.5+RD22(I))+
		    ((IV21>=0)?I33(I30(I)):-I33(I30(I)))+
		    fabs(I37(I))-
		    ((I30(I)>I35(I))?I30(I)-I35(I):0)+
		    WK1-WK2;
LBL_20:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %ld ",I30(i));
		printf(" %ld ",I32(i));
		printf(" %ld ",I34(i));
		printf(" %ld ",I35(i));
		printf(" %ld \n",I36(i));
	}
	printf("  *****  *(3)* INTEGER*4 MASK \n");
	for(I=1;I<=N;I++)
	{
		if ( L41(I) ){
			I41(I)=1;
			I42(I)=IV41;
			I43(I)=I44(I);
			I45(I)=I;
			I46(I)=2+I42(I);
			I47(I)=I43(I)+3;
			I48(I)=I44(I)*I45(I);
			L41(I)=(I46(I)>=IV42)?1:0;
			L42(I)=(IV43==I47(I))?1:0;
			I49(I)=R11(I);
			I50(I)=RD11(I);
			I51(I)=C11(I).real;
			I52(I)=CD11(I).dreal;
			IV44=IV44+(I41(I)+I42(I)-I43(I)+I45(I)-I46(I)+
			    I47(I)+I48(I)-I49(I)+I50(I)-
			    I51(I)+I52(I)-I53(I));
		}
LBL_30:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %ld   ",I41(i));
		printf(" %ld   ",I42(i));
		printf(" %ld   ",I43(i));
		printf(" %ld   ",I45(i));
		printf(" %ld   ",I46(i));
		printf(" %ld \n",I47(i));
		printf(" %ld   ",I48(i));
		printf(" %lu   ",L41(i));
		printf(" %lu   ",L42(i));
		printf(" %ld   ",I49(i));
		printf(" %ld   ",I50(i));
		printf(" %ld   ",I51(i));
		printf(" %ld \n",I52(i));
	}
	printf(" %ld \n",IV44);
	printf("  *****  *(4)* INTEGER*4 WITH MASK \n");
	for(I=1;I<=N;I++)
	{
		if (L61(I)){
			I60(I)=I;
			I62(I)=I61(I60(I));
			I64(I)=I63(I62(I));
			I65(I)=(int)(R21(I))+(int)(0.5+RD21(I));
			WK1=(I60(I)>I62(I))?I60(I):I62(I);
			WK1=(WK1   >I64(I))?WK1   :I64(I);
			WK2=(I64(I)<I62(I))?I64(I):I62(I);
			WK2=(WK2   <(I60(I)+I65(I)))?WK2:(I60(I)+I65(I));
			WK2=(WK2   <IV62)?WK2:IV22;
			I66(I)=I65(I)+(int)(R22(I))*(double)(int)(0.5+RD22(I))+
			    ((IV61>=0)?I63(I30(I)):-I63(I30(I)))+
			    fabs(I67(I))-
			    ((I60(I)>I65(I))?I60(I)-I65(I):0)+
			    WK1-WK2;
		}
LBL_40:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %ld ",I60(i));
		printf(" %ld ",I62(i));
		printf(" %ld ",I64(i));
		printf(" %ld ",I65(i));
		printf(" %ld \n",I66(i));
	}
	exit (0);
}
