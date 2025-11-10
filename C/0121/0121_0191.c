#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define I10(i) i10[i-1]
#define I11(i) i11[i-1]
#define I12(i) i12[i-1]
#define I13(i) i13[i-1]
#define I14(i) i14[i-1]
#define I15(i) i15[i-1]
#define I16(i) i16[i-1]
#define I17(i) i17[i-1]
#define I18(i) i18[i-1]
#define R10(i) r10[i-1]
#define R11(i) r11[i-1]
#define R12(i) r12[i-1]
#define R13(i) r13[i-1]
#define R14(i) r14[i-1]
#define R15(i) r15[i-1]
#define R16(i) r16[i-1]
#define R17(i) r17[i-1]
#define R18(i) r18[i-1]
#define D10(i) d10[i-1]
#define D11(i) d11[i-1]
#define D12(i) d12[i-1]
#define D13(i) d13[i-1]
#define D14(i) d14[i-1]
#define D15(i) d15[i-1]
#define D16(i) d16[i-1]
#define D17(i) d17[i-1]
#define D18(i) d18[i-1]
#define L10(i) l10[i-1]
#define I20(i) i20[i-1]
#define I21(i) i21[i-1]
#define L20(i) l20[i-1]
#define I30(i) i30[i-1]
#define R30(i) r30[i-1]
#define D30(i) d30[i-1]
#define D31(i) d31[i-1]
#define D33(i) d33[i-1]
#define D34(i) d34[i-1]
long int i10[10],i11[10],i12[10],i13[10],i14[10],i15[10],i16[10],i17[10],
i18[10];
float    r10[10],r11[10],r12[10],r13[10],r14[10],
r15[10]={
	1.2,2.1,1.2,3.2,2.3,1.5,2.8,1.1,0,0},
r16[10],r17[10],r18[10];
double   d10[10]={
	1.4,1.5,2.6,2.5,3.4,3.6,3.5,4.5,5.4,5.5},
d11[10],d12[10],d13[10],d14[10],
d15[10]={
	1,2,4,4,4,5,5,5,2,1},
d16[10],d17[10],
d18[10];
unsigned long int l10[10]={
	1,1,0,0,1,1,0,0,1,1};
long int i20[10]={
	1,2,10,3,11,5,77,76,75,74},
i21[10];
unsigned long int l20[10];
long int i30[10];
float    r30[10];
double   d30[10],d31[10],d33[10]={
	8,9,10,1,2,3,4,5,6,7},
d34[10];
int main()
{
	long int N=10,i,j,I;
	long int J=5;
	double DV1=1.,DV2=2.,DV3=2,DV4=4.,DV5=5.,DV6=-6,DV7=7;
	long int IV6=6;
	long int IV7=-7;
	float RV6=6.5;
	float RV7=7.5;
	long int IV30=4,IX30=0,IX31=0,IX32=0,IX33=0;
	double DV30=5,DV31=0,DV32=0;
	float RV3=3.;
	float RV5=5.;
	long int IV1=0,IV2=0,IV3=0,IV4=0,IV5=0;
	float RV1=1,RV2=2,RV4=4,RV30=5;
	for(i=0;i< 10;i++){
		i10[i]=(i<5)?i+1:10-i;
		i12[i]=0;
		i13[i]=2.;
		i14[i]=(int)((i+1)/2)*2;
		i15[i]=2.;
		i16[i]=1.;
		i17[i]=(i+1)*(fmod(i,2))?-1:1;
		i18[i]=0;
		r10[i]=(i<5)?i+1:5-i*1.1;
		r11[i]=(i<5)?i+1:5-i*1.1;
		r12[i]=0.;
		r13[i]=1.5;
		r14[i]=3.5;
		r16[i]=0.;
		r17[i]=(i<5)?1.5:2.5;
		r18[i]=0.;
		d11[i]=0.;
		d12[i]=2.8;
		d13[i]=3.1;
		d14[i]=0.;
		d16[i]=1.;
		d17[i]=2.7;
		d18[i]=1.1;
		i21[i]=(i+1)*(fmod(i,2))?1:-1;
		l20[i]=(fmod(i,2))?1:0;
		i30[i]=(i<5)?10-i:i+1;
		r30[i]=i+1;
		d30[i]=(i<5)?5-i:i-5;
		d34[i]=0.;
	}
	printf(" *****  ***** TEST OF MACRO OPERATION\n");
	printf(" ***** LOOP1 ***** SUM\n");
	for(I=1;I<=N;I++)
	{
		IV1=IV1+I10(I)*I11(I);
		RV1=RV1+R10(I)*R11(I);
		DV1=DV1+D10(I)*D11(I);
		I12(J)=I12(J)+I10(I)*I11(I)*I;
		R12(J)=R12(J)+R10(I)*R11(I)*I;
		D12(J)=D12(J)+D10(I)*D11(I)*I;
		IV2=IV2+I13(J);
		RV2=RV2+R13(J);
		DV2=DV2+D13(J);
		I14(J)=I14(J)+IV3;
		R14(J)=R14(J)+RV3;
		D14(J)=D14(J)+DV3;
		if ( L10(I) ){
			IV4=IV4-I15(I);
			RV4=RV4-R15(I);
			DV4=DV4-D15(I);
			IV5=IV5-IV6;
			RV5=RV5-RV6;
			DV5=DV5-DV6;
			I16(J)=I16(J)-I17(I);
			R16(J)=R16(J)-R17(I);
			D16(J)=D16(J)-D17(I);
			I18(J)=I18(J)-IV7;
			R18(J)=R18(J)-RV7;
			D18(J)=D18(J)-DV7;
		}
LBL_10:
		;
	}
	printf(" IV1 = %ld , DV1 =  %g \n",IV1,DV1);
	printf(" %g ",RV1);
LBL_10000:
	;
	printf(" I12 = %ld , D12 =  %g \n",I12(J),D12(J));
	printf(" %g \n",R12(J));
LBL_10001:
	;
	printf(" IV2 = %ld , RV2 = %g , DV2 =  %g \n",IV2,RV2,DV2);
	printf(" I14 = %ld , R14 = %g , D14 =  %g \n",I14(J),R14(J),D14(J));
	printf(" IV4 = %ld , RV4 = %g , DV4 =  %g \n",IV4,RV4,DV4);
	printf(" IV5 = %ld , RV5 = %g , DV5 =  %g \n",IV5,RV5,DV5);
	printf(" I16 = %ld , R16 = %g , D16 =  %g \n",I16(J),R16(J),D16(J));
	printf(" I18 = %ld , R18 = %g , D18 =  %g \n",I18(J),R18(J),D18(J));
	printf(" ***** LOOP2 ***** MAX/MIN\n");
	for(I=1;I<=N;I++)
	{
		IV1=(IV1 > I20(I)) ? IV1:I20(I);
		RV1=R10(I);
		RV2=(RV1 > RV2) ? RV1:RV2;
		DV1=(D10(I) > DV1) ? D10(I):DV1;
		if (L20(I)){
			IV2=(IV2 < fabs(I21(I))) ? IV2:fabs(I21(I));
			RV3=(RV3 < RV1) ? RV3:RV1;
			DV2=((double)(I) < DV2) ? (double)(I):DV2;
		}
LBL_20:
		;
	}
	printf(" IV1 = %ld , RV2 = %g , DV1 = %g \n",IV1,RV2,DV1);
	printf(" IV2 = %ld , RV3 = %g , DV2 = %g \n",IV2,RV3,DV2);
	printf(" ***** LOOP3 ***** MAX/MIN   2 BLOCKS\n");
	for(I=1;I<=N;I++)
	{
		if (IV30  <=  I30(I))goto LBL_31         ;
		IV30=I30(I);
		IX30=I;
LBL_31:
		;
		if (RV30  <=  R30(I))goto LBL_32         ;
		IX31=I;
		RV30=R30(I);
LBL_32:
		;
		if ( DV30  >=  D30(I) )goto LBL_33         ;
		DV30=D30(I);
		IX32=I;
LBL_33:
		;
		DV32=DV31-D33(I);
		if ( DV32 <  0)goto LBL_34;
		if ( DV32 == 0)goto LBL_30;
		goto LBL_30;
LBL_34:
		;
		DV31=D33(I);
		IX33=I;
LBL_30:
		;
	}
	printf(" IV30 = %ld , IX30 =  %ld \n",IV30,IX30);
	printf(" RV30 = %g , IX31 =  %ld \n",RV30,IX31);
	printf(" DV30 = %g , IX32 =  %ld \n",DV30,IX32);
	printf(" DV31 = %g , IX33 =  %ld \n",DV31,IX33);
	for(i=1;i<=10;i++){
		printf(" D31 = %g ",D31(i));
		printf(" D34 = %g \n",D34(i));
	}
	exit (0);
}
