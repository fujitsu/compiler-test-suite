#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i) c[i-1]
#define D(i) d[i-1]
#define E(i,j) e[i-1][j-1]
#define F(i,j) f[i-1][j-1]
#define G(i,j) g[i-1][j-1]
#define H(i,j) h[i-1][j-1]
#define X(i,j) x[i-1][j-1]
#define Y(i,j) y[i-1][j-1]
#define Z(i,j) z[i-1][j-1]
#define V(i,j) v[i-1][j-1]
#define S(i,j) s[i-1][j-1]
float a[100],b[100],c[100],d[100];
float e[10][10],f[10][10],g[10][10],h[10][10];
float x[50][2],y[2][50],z[25][4],v[4][25],s[5][20];
int main()
{
	unsigned long int LT00A;
	long int IX00A,IX00B,IX00C;
	long int IX00D,IX00E,IX00F;
	long int IX00G,IX00H,IX00I;
	long int IX00J,IX00K;
	long int N,I,J,i,j;
	for(j=0;j< 10;j++){
		for(i=0;i< 10;i++){
			e[i][j]=0;
			f[i][j]=9;
			g[i][j]=8;
			h[i][j]=1;
		}
	}
	for(j=0;j< 2 ;j++){
		for(i=0;i< 50;i++){
			x[i][j]=0.0;
		}
	}
	for(j=0;j< 50;j++){
		for(i=0;i< 2;i++){
			y[i][j]=10.0;
		}
	}
	for(j=0;j< 4 ;j++){
		for(i=0;i< 25;i++){
			z[i][j]=1;
		}
	}
	for(j=0;j< 25;j++){
		for(i=0;i< 4;i++){
			v[i][j]=1;
		}
	}
	for(j=0;j< 20;j++){
		for(i=0;i< 5;i++){
			s[i][j]=1;
		}
	}
	if (X(1,1) == 0.0)goto LBL_77777         ;
	for(I=1;I<=100;I++)
	{
		A(I)=1.0;
		B(I)=1.0;
		C(I)=1.0;
LBL_9991:
		;
		D(I)=2.0;
	}
	N=4;
	for(I=1;I<=10;I+=1)
	{
		LT00A=(I<=2)?1:0;
		if (!LT00A)goto LBL_4100         ;
		for(IX00A=1;IX00A<=50;IX00A+=1)
		{
			X(IX00A,I)=2.0;
LBL_4500:
			;
		}
LBL_4100:
		;
		LT00A=(I<=2)?1:0;
		if (!LT00A)goto LBL_4301         ;
		for(IX00A=1;IX00A<=50;IX00A+=1)
		{
			Y(I,IX00A)=2.0;
LBL_4600:
			;
		}
LBL_4200:
		;
		LT00A=(I<=3)?1:0;
		if (!LT00A)goto LBL_4300         ;
		goto LBL_4300;
LBL_4301:
		;
		for(IX00A=1;IX00A<=25;IX00A+=1)
		{
			Z(IX00A,I)=2.0;
LBL_4700:
			;
		}
		goto LBL_4301;
LBL_4300:
		;
		LT00A=(I<=2)?1:0;
		if (!LT00A)goto LBL_4400         ;
		for(IX00A=1;IX00A<=4;IX00A+=1)
		{
			V(IX00A,I)=2.0;
LBL_4800:
			;
		}
LBL_4400:
		;
LBL_180:
		;
		for(J=1;J<=25;J+=1)
		{
			goto LBL_2;
LBL_181:
			;
			for(IX00A=1;IX00A<=4;IX00A+=1)
			{
				Z(J,IX00A)=2.0;
LBL_4900:
				;
			}
			for(IX00A=1;IX00A<=4;IX00A+=1)
			{
				V(IX00A,J)=2.0;
LBL_4010:
				;
			}
			goto LBL_1;
LBL_2:
			;
			goto LBL_181;
LBL_1:
			;
		}
		for(IX00A=1;IX00A<=100;IX00A+=1)
		{
			A(IX00A)=2.0;
LBL_4110:
			;
		}
LBL_1256:
		;
		for(IX00C =1;IX00C <=20;IX00C ++)
		{
			for(IX00B =1;IX00B <=5;IX00B ++)
			{
				S(IX00B,IX00C)=2.0;
LBL_4210:
				;
			}
		}
		goto LBL_888;
		for(IX00A=1;IX00A<=100;IX00A+=1)
		{
			B(IX00A)=2.;
LBL_4310:
			;
		}
		goto LBL_1256;
		for(IX00A=1;IX00A<=100;IX00A+=1)
		{
			C(IX00A)=2.;
LBL_4410:
			;
		}
LBL_888:
		;
		for(IX00A=1;IX00A<=100;IX00A+=1)
		{
			D(IX00A)=2.;
LBL_4510:
			;
		}
		for(IX00A=1;IX00A<=10;IX00A+=1)
		{
			E(I,IX00A)=I;
LBL_4610:
			;
		}
		for(IX00A=1;IX00A<=10;IX00A+=1)
		{
			F(I,IX00A)=I;
LBL_4710:
			;
		}
		for(IX00A=1;IX00A<=10;IX00A+=1)
		{
			G(I,IX00A)=I;
LBL_4810:
			;
		}
		for(IX00A=1;IX00A<=10;IX00A+=1)
		{
			H(I,IX00A)=I;
LBL_4910:
			;
		}
		for(IX00A=1;IX00A<=10;IX00A+=1)
		{
			E(IX00A,I)=I;
LBL_4020:
			;
		}
		for(IX00A=1;IX00A<=10;IX00A+=1)
		{
			F(IX00A,I)=I;
LBL_4120:
			;
		}
		for(IX00A=1;IX00A<=10;IX00A+=1)
		{
			G(IX00A,I)=I;
LBL_4220:
			;
		}
		for(IX00A=1;IX00A<=10;IX00A+=1)
		{
			H(IX00A,I)=I;
LBL_4320:
			;
		}
		for(IX00A=2;IX00A<=10;IX00A+=2)
		{
			A(IX00A)=4.;
LBL_4420:
			;
		}
LBL_111:
		;
		IX00A=(10-1)/N+1;
		for(IX00B=1;IX00B<=10;IX00B+=N)
		{
			B(IX00B)=4.;
LBL_4520:
			;
		}
LBL_10:
		;
	}
LBL_1133:
	;
	for(I=1;I<=20;I+=1)
	{
		for(IX00C =1;IX00C <=25;IX00C ++)
		{
LBL_5567:
			;
			for(IX00B =1;IX00B <=4;IX00B ++)
			{
				IX00A=IX00C-1;
				IX00A=IX00A*4+IX00B;
				IX00E=IX00A;
				IX00D=(IX00E-1)/5;
LBL_1119:
				;
				IX00F=IX00E-IX00D*5;
				IX00G=IX00D+1;
LBL_432:
				;
				IX00I=IX00A;
				IX00H=(IX00I-1)/10;
				IX00J=IX00I-IX00H*10;
				IX00K=IX00H+1;
				H(IX00J,IX00K)=A(IX00A)+V(IX00B,IX00C)-S(IX00F,IX00G);
LBL_4620:
				;
			}
		}
		for(IX00C    =1;IX00C    <=10;IX00C    ++)
		{
			for(IX00B    =1;IX00B    <=10;IX00B    ++)
			{
				IX00A=IX00C-1;
				IX00A=IX00A*10+IX00B;
				IX00E=IX00A;
				IX00D=(IX00E-1)/50;
				IX00F=IX00E-IX00D*50;
				IX00G=IX00D+1;
				IX00I=IX00A;
				IX00H=(IX00I-1)/5;
				IX00J=IX00I-IX00H*5;
				IX00K=IX00H+1;
				B(IX00A)=E(IX00B,IX00C)+X(IX00F,IX00G)+S(IX00J,IX00K);
LBL_4720:
				;
			}
		}
		for(IX00C    =1;IX00C    <=10;IX00C    ++)
		{
			for(IX00B    =1;IX00B    <=10;IX00B    ++)
			{
				IX00A=IX00C-1;
				IX00A=IX00A*10+IX00B;
				IX00E=IX00A;
				IX00D=(IX00E-1)/5;
				IX00F=IX00E-IX00D*5;
				IX00G=IX00D+1;
				IX00I=IX00A;
				IX00H=(IX00I-1)/2;
				IX00J=IX00I-IX00H*2;
				IX00K=IX00H+1;
				Y(IX00J,IX00K)=C(IX00A)+F(IX00B,IX00C)+S(IX00F,IX00G);
LBL_4820:
				;
			}
		}
		for(IX00A=1;IX00A<=5;IX00A++)
		{
			IX00B=IX00A-1+6;
			A(IX00A)=B(IX00B)+2.0+S(IX00A,I);
LBL_4920:
			;
		}
LBL_20:
		;
	}
LBL_77777:
	;
	printf(" ***  ***\n");
	for(i=1;i<=100;i++){
		printf(" %g %g %g %g \n",A(i),B(i),C(i),D(i));
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" %g %g %g %g \n",E(i,j),F(i,j),G(i,j),H(i,j));
		}
	}
	for(j=1;j<= 4;j++){
		for(i=1;i<=25;i++){
			printf(" %g \n",Z(i,j));
		}
	}
	for(j=1;j<= 2;j++){
		for(i=1;i<=50;i++){
			printf(" %g \n",X(i,j));
		}
	}
	for(j=1;j<=25;j++){
		for(i=1;i<= 4;i++){
			printf(" %g \n",V(i,j));
		}
	}
	for(j=1;j<=50;j++){
		for(i=1;i<= 2;i++){
			printf(" %g \n",Y(i,j));
		}
	}
	for(j=1;j<=20;j++){
		for(i=1;i<= 5;i++){
			printf(" %g \n",S(i,j));
		}
	}
	exit (0);
}
