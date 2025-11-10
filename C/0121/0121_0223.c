#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L10(i)   l10[i-1]
#define L11(i)   l11[i-1]
#define L12(i,j) l12[i-1][j-1]
#define L13(i,j) l13[i-1][j-1]
#define L14(i,j) l14[i-1][j-1]
#define L15(i)   l15[i-1]
#define L16(i)   l16[i-1]
#define I10(i)   i10[i-1]
#define I11(i)   i11[i-1]
#define I12(i)   i12[i-1]
#define R10(i,j) r10[i-1][j-1]
#define R11(i,j) r11[i-1][j-1]
#define D10(i)   d10[i-1]
#define D11(i)   d11[i-1]
#define Q10(i,j,k) q10[i-1][j-1][k-1]
#define C10(i,j)   c10[i-1][j-1]
#define LB20(i)  lb20[i-1]
#define I20(i)   i20[i-1]
#define I21(i)   i21[i-1]
#define R20(i)   r20[i-1]
#define R21(i)   r21[i-1]
#define D20(i)   d20[i-1]
#define D21(i,j) d21[i-1][j-1]
#define D22(i,j) d22[i-1][j-1]
#define D23(i)   d23[i-1]
#define C20(i)   c20[i-1]
#define C21(i)   c21[i-1]
#define CD20(i)  cd20[i-1]
#define CD21(i)  cd21[i-1]
#define Q20(i)  q20[i-1]
#define Q21(i,j,k) q21[i-1][j-1][k-1]
#define L20(i,j)   l20[i-1][j-1]
#define CQ20(i,j)  cq20[i-1][j-1]
unsigned long int l10[2]={
	1,0},
l11[2]={
	1,0},
l12[3][2]={
	0,0,0,0,0,0},
l13[3][2]={
	1,0,1,0,1,0},
l14[3][2]={
	0,0,0,0,0,0},
l15[2]={
	1,0},
l16[2]={
	1,0};
long int          i10[2]={
	1,2},
i11[10]={
	10,20,30,40,50,60,70,80,90,100},
i12[10]={
	2,2,2,2,2,2,2,2,2,2};
float             r10[2][3]={
	1,2,3,4,5,6},
r11[2][3]={
	1,2,3,4,5,6};
double            d10[2]={
	16,20},
d11[2]={
	0,0};
long double       q10[10][3][2]={
	0,0,0,0,0,0,0,0,0,0,
	                                  0,0,0,0,0,0,0,0,0,0,
	                                  0,0,0,0,0,0,0,0,0,0,
	                                  0,0,0,0,0,0,0,0,0,0,
	                                  0,0,0,0,0,0,0,0,0,0,
	                                  0,0,0,0,0,0,0,0,0,0};
COMPLEX8          c10[3][2]={
	1,1,1,0,0,0,1,1,-1,0};
unsigned          int lb20[10]={
	0,0,0,0,0,1,1,1,1,1};
long int          i20[3],i21[3];
float             r20[3],r21[3]={
	1,2,3};
double            d20[3],d21[10][3]={
	-3,3,4,-4,5,6,7,-18,-20,
	                                      5,6,7,8,-6,8,4,4,-16,0,0,7,
	                                      3,3,3,3,3,3,3,3,3},
d22[10][3]={
	1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,
	                               2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
d23[3];
COMPLEX8          c20[3],
c21[10]={
	1,1,1,1,0,1,0,1,1,0,1,0,-1,-1,-1,-1,-3,0,7,8};
COMPLEX16         cd20[3],cd21[3];
long double       q20[3],q21[10][3][3];
unsigned long int l20[5][5]={
	1,1,1,1,1,1,1,1,1,1,
	                              1,1,1,1,1,0,0,0,0,0,0,0,0,0,0};
COMPLEX32         cq20[10][3]={
	1,1,1,1,1,1,1,1,1,1,
	    -1,0,-1,0,-1,0,-1,0,-1,0,
	    -2,-3,-2,-3,-2,-3,-2,-3,-2,-3,
	    8,2,8,2,8,2,8,2,8,2,
	    7,2,7,2,7,2,7,2,7,2,
	    1,2,1,2,1,2,1,2,1,2};
int main()
{
	long int i,j,k,I,J,K;
	long int N2=2;
	long int N3=3;
	long int N10=10,IC=1;
	COMPLEX8 C10S={
		1,1	};
	long int I10S=0,I11S=0,I1,I12S=0,I2,I3,I4;
	float    R10S,R11S=10,D10S=0,R12S=0,D11S=0,D20S=0,
	D21S,D22S=0,D23S=0,R20S=0,R21S=0,R13S=2;
	for(i=0;i< 3;i++){
		i20[i]=0;
		i21[i]=0;
		r20[i]=0;
		d20[i]=0;
		c20[i].real=0;
		c20[i].imag=0;
	}
	for(i=0;i< 3;i++){
		cd20[i].dreal=0;
		cd20[i].dimag=0;
	}
	for(i=0;i< 3;i++){
		cd21[i].dreal=0;
		cd21[i].dimag=0;
	}
	for(i=0;i< 3;i++){
		q20[i]=0;
	}
	for(k=0;k< 3 ;k++){
		for(j=0;j< 3 ;j++){
			for(i=0;i< 10;i++){
				q21[i][j][k]=0;
			}
		}
	}
	printf(" *****  *****\n");
	printf(" ----- NO.1 -----\n");
	for(I1=1;I1<=N2;I1++)
	{
		if (L10(I1)){
			if (L11(IC)){
				I10S=I10S+I10(I1);
			}
			else{
				I11S=I11S-I10(I1);
			}
		}
		for(I2 =1;I2 <=N3;I2 ++)
		{
			R10S=R10(I1,I2);
			if ( R11S  <   R10S ){
				R11S=R10S;
				I12S=I2;
			}
			L12(I2,I1)=(!L13(I2,I1))?1:0;
			if (L12(I2,1)){
				for(I3=1;I3<=N10;I3++)
				{
					Q10(I3,I2,I1)=I11(I3)/I12(I3);
LBL_10:
					;
				}
				D10S=D10S+Q10(I3,I2,I1);
			}
			else{
				L14(I2,I1)=((C10(I2,I1).real==C10S.real) &&
				    (C10(I2,I1).real==C10S.real))?1:0;
			}
			R12S=R12S+R10S;
			R10S=R11(I1,I2)*R13S;
LBL_100:
			;
		}
		L10(I1)=(L15(I1) && L16(I1))?1:0;
		if ( L10(I1) ){
			D11S=D10(I1)/4.0;
		}
		else{
			D11S=D10(I1)*4.0;
		}
		D11(I1)=D11S+sqrt(D11S);
LBL_1000:
		;
	}
	printf(" I10S  =  %ld  ",I10S);
	printf(" I11S  =  %ld  ",I11S);
	printf(" R11S  =  %g \n",R11S);
	for(i=1;i<=10;i++){
		printf(" I12   =  %ld \n",I12(i));
	}
	for(j=1;j<=2;j++){
		for(i=1;i<=3;i++){
			printf(" L12   =  %ld \n",L12(i,j));
		}
	}
	for(k=1;k<=2;k++){
		for(j=1;j<=3;j++){
			for(i=1;i<=10;i++){
				printf(" Q10   =  %g \n",(double)Q10(i,j,k));
			}
		}
	}
	printf(" D10S  =  %g \n",D10S);
	for(j=1;j<=2;j++){
		for(i=1;i<=3;i++){
			printf(" L14   =  %lu \n",L14(i,j));
		}
	}
	printf(" R12S  =  %g   ",R12S);
	printf(" R10S  =  %g \n",R10S);
	for(i=1;i<=2;i++){
		printf(" L10   =  %lu  ",L10(i));
		printf(" D11   =  %g \n",D11(i));
	}
LBL_10000:
	;
	printf(" ----- NO.2 -----\n");
	for(I1=2;I1<=N3;I1++)
	{
		I20(I1)=I1;
		R20(I1)=I20(I1);
		D20(I1)=R20(I1);
		C20(I1).real=-D20(I1);
		C20(I1).imag=0;
		CD20(I1).dreal=C20(I1).real;
		CD20(I1).dimag=C20(I1).imag;
		Q20(I1)=CD20(I1).dreal;
		for(I2=1;I2<=N3;I2++)
		{
			for(I3=1;I3<=N10;I3++)
			{
				Q21(I3,I2,I1)=Q20(I1);
				D20S=D20S+D21(I3,I2);
				if ( D20S < 0 )goto LBL_21;
				if ( D20S ==0 )goto LBL_22;
				goto LBL_23;
LBL_21:
				;
				D21S=1.0;
				goto LBL_23;
LBL_22:
				;
				D21S=2.0;
				goto LBL_23;
LBL_23:
				;
				printf("  INNER MOST LOOP I3 = %ld , D21S =  %g \n",I3,D21S);
LBL_20:
				;
			}
			D22S=D22S+D21(5,I2)+D21S;
			if ( L20(I2,I1) ){
				R20S=R21(I2)*8;
			}
			else{
				R20S=R21(I2)/8;
			}
			R21S=R21S-R20S;
			for(I4=2;I4<=N10;I4++)
			{
				C21(I4).real=C21(I4-1).real+CQ20(I4,I2).qreal;
				C21(I4).imag=C21(I4-1).imag+CQ20(I4,I2).qimag;
				if ( LB20(I4) ) D23S = D21(I4,I2);
LBL_24:
				;
				D22(I4,I2)=D22(I4-1,I2)+D23S;
			}
LBL_200:
			;
		}
		CD21(I1).dreal=CD20(I1).dreal+Q20(I1);
		CD21(I1).dimag=CD20(I1).dimag;
		C20(I1-1).real=CD21(I1-1).dreal;
		C20(I1-1).imag=CD21(I1-1).dimag;
		D23(I1)=D20(I1)+C20(I1-1).real;
		R21(I1)=D23(I1)+R20(I1);
		I21(I1)=R21(I1)+I20(I1)+I1;
LBL_2000:
		;
	}
	for(i=1;i<=3;i++){
		printf("  I20  =  %ld   ",I20(i));
		printf("  R20  =  %g    ",R20(i));
		printf("  D20  =  %g  \n",D20(i));
		printf("  C20  =  %g %g ",C20(i).real,C20(i).imag);
		printf("  CD20 =  %g %g ",CD20(i).dreal,CD20(i).dimag);
		printf("  Q20  =  %g \n",(double)Q20(i));
	}
	for(k=1;k<=3;k++){
		for(j=1;j<=3;j++){
			for(i=1;i<=10;i++){
				printf("  Q21  =  %g \n",(double)Q21(i,j,k));
			}
		}
	}
	printf("  D20S =  %g ",D20S);
	printf("  D22S =  %g ",D22S);
	printf("  R21S =  %g \n",D21S);
	for(i=1;i<=10;i++){
		printf("  C21  =  %g %g \n",C21(i).real,C21(i).imag);
	}
	for(j=1;j<=3;j++){
		for(i=1;i<=10;i++){
			printf("  D22  =  %g \n",D22(i,j));
		}
	}
	for(i=1;i<=3;i++){
		printf("  CD21 =  %g %g \n",CD21(i).dreal,CD21(i).dimag);
	}
	for(j=1;j<=3;j++){
		for(i=1;i<=10;i++){
			printf("  D21  =  %g \n",D21(i,j));
		}
	}
	for(i=1;i<=3;i++){
		printf("  R21  =  %g    ",R21(i));
		printf("  I21  =  %ld \n",I21(i));
	}
	exit (0);
}
