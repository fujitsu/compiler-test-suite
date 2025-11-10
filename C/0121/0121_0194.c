#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define R10(i) r10[i-1]
#define I10(i) i10[i-1]
#define I11(i) i11[i-1]
#define D10(i) d10[i-1]
#define D11(i) d11[i-1]
#define I20(i) i20[i-1]
#define R20(i) r20[i-1]
#define D20(i) d20[i-1]
#define C20(i) c20[i-1]
#define I40(i) i40[i-1]
#define I41(i) i41[i-1]
#define L40(i) l40[i-1]
#define L41(i) l41[i-1]
#define R40(i) r40[i-1]
#define L42(i) l42[i-1]
#define L43(i) l43[i-1]
#define C40(i) c40[i-1]
#define D50(i) d50[i-1]
#define D51(i) d51[i-1]
#define D52(i) d52[i-1]
#define D53(i) d53[i-1]
#define C51(i) c51[i-1]
#define C52(i) c52[i-1]
#define C53(i) c53[i-1]
#define C54(i) c54[i-1]
#define C55(i) c55[i-1]
#define C56(i) c56[i-1]
#define R60(i) r60[i-1]
#define R61(i) r61[i-1]
#define R62(i) r62[i-1]
#define R63(i) r63[i-1]
#define CD60(i) cd60[i-1]
#define CD61(i) cd61[i-1]
#define CD62(i) cd62[i-1]
#define CD63(i) cd63[i-1]
float     r10[10]={
	1,5,4,1,5,7,1,5,7,5};
long int  i10[10],i11[10]={
	-1,-1,-1,-1,-1,1,1,1,1,1};
double    d10[10]={
	7,7,7,7,7,9,9,9,9,9},
d11[10]={
	5.,5.,5.,5.,5.,5.,5.,5.,5.,5.};
long int  i20[10]={
	0,0,0,0,0,0,0,0,0,0};
float     r20[10]={
	0,0,0,0,0,0,0,0,0,0};
double    d20[10]={
	0,0,0,0,0,0,0,0,0,0};
COMPLEX8  c20[10]={
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
long int  i40[10]={
	1,2,3,1,2,3,1,2,3,1};
long int  i41[10]={
	3,2,1,3,2,1,3,2,1,3};
unsigned  long int l40[10]={
	10*0},
l41[10]={
	10*1};
float     r40[10]={
	1,2,3,1,2,3,1,2,3,1};
unsigned  long int l42[10]={
	10*0},
l43[10]={
	10*0};
COMPLEX8  c40[10]={
	-1,1,0,0,2,2,-3,3,0,4,5,-5,6,6,-1,1,0,0,2,2};
double    d50[10]={
	0,1,-1,0,1,-1,0,1,-1,1},
d51[10]={
	1,-1,2,0,-3,4,5,6,7,8},
d52[10]={
	1,-2,3,-4,5,-6,7,-8,9,-10,},
d53[10]={
	1,2,-4,4,5,-7,-7,8,-10,10};
COMPLEX8  c51[10],c52[10],c53[10],c54[10],c55[10],c56[10];
float     r60[10]={
	3,6,0,12,0,18,21,0,27,30},
r61[10]={
	3,-3,3,-3,3,-3,3,-3,3,-3},
r62[10]={
	1,0,2,1,0,2,1,0,2,1},
r63[10]={
	1,2,3,3,2,1,1,2,3,3};
COMPLEX16 cd60[10],cd61[10],cd62[10],cd63[10];
int main()
{
	long int N=10,i,j,I,J,WK1,WK2;
	unsigned long int LW=0;
	long int X=-5;
	long int IV2=0,IV3=-1,IV4=1,M=10;
	float S=5;
	unsigned long int LV1=1;
	float RV40=2;
	COMPLEX8 CV54,CV55;
	float RV60=3;
	for(i=0;i< 10;i++){
		d11[i]=5.0;
		i20[i]=0;
		r20[i]=0;
		d20[i]=0;
		c20[i].real=0;
		c20[i].imag=0;
		l40[i]=0;
		l41[i]=1;
		l42[i]=0;
		l43[i]=0;
		c52[i].real=0;
		c52[i].imag=0;
		c53[i].real=0;
		c53[i].imag=0;
		c54[i].real=0;
		c54[i].imag=0;
		c55[i].real=1;
		c55[i].imag=1;
		c56[i].real=1;
		c56[i].imag=1;
		cd60[i].dreal=1;
		cd60[i].dimag=1;
		cd61[i].dreal=1;
		cd61[i].dimag=2;
		cd62[i].dreal=2;
		cd62[i].dimag=1;
		cd63[i].dreal=2;
		cd63[i].dimag=2;
	}
	printf(" *****  ***** ARITHMETIC IF\n");
	printf(" ----- LOOP 1 ----- N1 = N2 = N3 \n");
	for(I=1;I<=N;I++)
	{
		if ((R10(I) - 5.0) < 0 )goto LBL_11;
		if ((R10(I) - 5.0)== 0 )goto LBL_11;
		goto LBL_11;
LBL_11:
		;
		R10(I)=(R10(I)>I10(I))?R10(I):I10(I);
		R10(I)=(R10(I)>((D10(I)<I11(I))?D10(I):I11(I)))?
		    R10(I):((D10(I)<I11(I))?D10(I):I11(I));
		if ( LW )goto LBL_13         ;
		if ((X + D11(I)) < 0)goto LBL_12;
		if ((X + D11(I))== 0)goto LBL_12;
		goto LBL_12;
LBL_13:
		;
		I10(I)=I10(I)+R10(I);
LBL_12:
		;
		I10(I)=I;
LBL_10:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g ",R10(i));
		printf(" %ld \n",I10(i));
	}
	printf(" ----- LOOP 2 ----- N1 ^= N2 ^= N3\n");
	for(I=1;I<=M;I++)
	{
		if (S < 0)goto LBL_21;
		if (S== 0)goto LBL_22;
		goto LBL_23;
LBL_21:
		;
		I20(I)=I;
LBL_22:
		;
		I20(I)=I20(I)+I;
LBL_23:
		;
		I20(I)=I20(I)+I;
		if (IV2 < 0)goto LBL_24;
		if (IV2== 0)goto LBL_25;
		goto LBL_26;
LBL_25:
		;
		R20(I)=(float)(I);
LBL_24:
		;
		R20(I)=R20(I)-(float)(I)+1;
LBL_26:
		;
		R20(I)=R20(I)+(float)(I);
		if (IV3  < 0 )goto LBL_27;
		if (IV3 == 0 )goto LBL_28;
		goto LBL_29;
LBL_29:
		;
		D20(I)=(double)(I);
		goto LBL_30;
LBL_28:
		;
		D20(I)=D20(I)+(double)(I);
		goto LBL_30;
LBL_27:
		;
		D20(I)=D20(I)-(double)(I);
LBL_30:
		;
		if ( LW )goto LBL_34         ;
		if ( IV4  < 0)goto LBL_31;
		if ( IV4 == 0)goto LBL_32;
		goto LBL_33;
LBL_34:
		;
		C20(I).real=(float)(I);
		C20(I).imag=0;
		goto LBL_32;
LBL_33:
		;
		C20(I).real=C20(I).real+(float)(I);
		C20(I).imag=C20(I).imag;
		goto LBL_35;
LBL_32:
		;
		C20(I).real=C20(I).real+(float)(I);
		C20(I).imag=C20(I).imag;
		goto LBL_31;
LBL_31:
		;
		C20(I).real=C20(I).real-(float)(I);
		C20(I).imag=C20(I).imag;
LBL_35:
		;
LBL_20:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %ld ",I20(i));
		printf(" %g ",R20(i));
		printf(" %g ",D20(i));
		printf(" %g %g \n",C20(i).real,C20(i).imag);
	}
	printf(" ----- LOOP 3 ----- N1 = N2 ^= N3\n");
	for(I=1;I<=N;I++)
	{
		if ((I40(I) - I41(I)) < 0)goto LBL_41;
		if ((I40(I) - I41(I)) ==0)goto LBL_41;
		goto LBL_42;
LBL_41:
		;
		L40(I)=(L41(I) && LV1)?1:0;
		goto LBL_43;
LBL_42:
		;
		L40(I)=(L41(I) || L40(I))?1:0;
LBL_43:
		;
		if ((R40(I) - RV40) < 0)goto LBL_44;
		if ((R40(I) - RV40) ==0)goto LBL_44;
		goto LBL_45;
LBL_45:
		;
		L41(I)=(!L40(I));
LBL_44:
		;
		L42(I)=(L41(I) == L40(I))?1:0;
		if ( LW ==1)goto LBL_48         ;
		if ( C40(I).real < 0)goto LBL_46;
		if ( C40(I).real ==0)goto LBL_46;
		goto LBL_47;
LBL_48:
		;
		L43(I)=(L41(I) && L42(I))?1:0;
		goto LBL_40;
LBL_46:
		;
		L43(I)=(L41(I) != L42(I))?1:0;
		goto LBL_40;
LBL_47:
		;
		L43(I)=(!L40(I) || !L41(I))?1:0;
LBL_40:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %lu ",L40(i));
		printf(" %lu ",L41(i));
		printf(" %lu ",L42(i));
		printf(" %lu \n",L43(i));
	}
	printf(" ----- LOOP 4 ----- N1 ^= N2 & N1 = N3\n");
	for(I=1;I<=N;I++)
	{
		if ( (D50(I)*D51(I)) < 0)goto LBL_51;
		if ( (D50(I)*D51(I)) ==0)goto LBL_52;
		goto LBL_52;
LBL_51:
		;
		C52(I).real=C51(I).real+1.0;
		C52(I).imag=C51(I).imag+2.0;
		goto LBL_53;
LBL_52:
		;
		C52(I).real=C52(I).real+2.0;
		C52(I).imag=C52(I).imag+1.0;
LBL_53:
		;
		if (( D50(I)-D51(I)) < 0)goto LBL_54;
		if (( D50(I)-D51(I)) ==0)goto LBL_55;
		goto LBL_55;
LBL_55:
		;
		C53(I).real=(2.0*C52(I).real+2.0*C52(I).imag)/18.0;
		C53(I).imag=(2.0*C52(I).imag-2.0*C52(I).real)/18.0;
		goto LBL_56;
LBL_54:
		;
		C53(I).real=4.0*C53(I).real-4.0*C53(I).imag;
		C53(I).imag=4.0*C53(I).real+4.0*C53(I).imag;
LBL_56:
		;
		CV54.real=C53(I).real;
		CV54.imag=C53(I).imag;
		CV55.real=C52(I).real;
		CV55.imag=C52(I).imag;
		if ( LW ==1)goto LBL_59         ;
		if (( D52(I)+D53(I)) < 0)goto LBL_57;
		if (( D52(I)+D53(I)) ==0)goto LBL_50;
		goto LBL_50;
LBL_59:
		;
		CV54.real=C53(I).real;
		CV54.imag=C53(I).imag;
		C54(I).real=CV54.real+C52(I).real;
		C54(I).imag=CV54.imag+C52(I).imag;
		goto LBL_50;
LBL_57:
		;
		CV55.real=C52(I).real;
		CV55.imag=C52(I).imag;
		C55(I).real=CV55.real*C54(I).real-CV55.imag*C54(I).imag;
		C55(I).imag=CV55.real*C54(I).imag+CV55.imag*C54(I).real;
		goto LBL_50;
LBL_50:
		;
		C56(I).real=CV54.real+CV55.real+C56(I).real;
		C56(I).imag=CV54.imag+CV55.imag+C56(I).imag;
	}
	for(i=1;i<=10;i++){
		printf(" %g %g ",C52(i).real,C52(i).imag);
		printf(" %g %g ",C53(i).real,C53(i).imag);
		printf(" %g %g ",C54(i).real,C54(i).imag);
		printf(" %g %g ",C55(i).real,C55(i).imag);
		printf(" %g %g \n",C56(i).real,C56(i).imag);
	}
	printf(" ----- LOOP 5 ----- N1 ^= N2 & N1 = N3\n");
	for(I=1;I<=M;I++)
	{
		if ( (R60(I)/ R61(I)) < 0)goto LBL_61;
		if ( (R60(I)/ R61(I)) ==0)goto LBL_62;
		goto LBL_61;
LBL_61:
		;
		CD60(I).dreal=(double)(I);
		CD60(I).dimag=0;
		goto LBL_63;
LBL_62:
		;
		CD60(I).dreal=CD60(I).dreal+(double)(I);
		CD60(I).dimag=CD60(I).dimag;
LBL_63:
		;
		if ( (R62(I)-1.0) < 0)goto LBL_64;
		if ( (R62(I)-1.0) ==0)goto LBL_65;
		goto LBL_64;
LBL_65:
		;
		CD62(I).dreal=CD60(I).dreal*CD61(I).dreal-CD60(I).dimag*CD61(I).dimag;
		CD62(I).dimag=CD60(I).dreal*CD61(I).dimag+CD60(I).dimag*CD61(I).dreal;
		goto LBL_66;
LBL_64:
		;
		CD62(I).dreal=(CD60(I).dreal+2.0*CD60(I).dimag)/4.0;
		CD62(I).dimag=(CD60(I).dimag-2.0*CD60(I).dreal)/4.0;
LBL_66:
		;
		if ( LW ==1)goto LBL_69         ;
		if ( (RV60 -  R63(I)) < 0)goto LBL_60;
		if ( (RV60 -  R63(I)) ==0)goto LBL_68;
		goto LBL_60;
LBL_69:
		;
		CD63(I).dreal=CD62(I).dreal+2.0;
		CD63(I).dimag=CD62(I).dimag+2.0;
		goto LBL_60;
LBL_68:
		;
		CD63(I).dreal=2.0-CD63(I).dreal;
		CD63(I).dimag=1.0-CD63(I).dimag;
		goto LBL_60;
LBL_60:
		;
		CD63(I).dreal=CD60(I).dreal+CD63(I).dreal+1.0;
		CD63(I).dimag=CD60(I).dimag+CD63(I).dimag+1.0;
	}
	for(i=1;i<=10;i++){
		printf(" %g %g \n",CD60(i).dreal,CD60(i).dimag);
		printf(" %g %g \n",CD62(i).dreal,CD62(i).dimag);
		printf(" %g %g ",CD63(i).dreal,CD63(i).dimag);
	}
        printf("\n");
	exit (0);
}
