#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int GSV(float a[100],float b[100],float c[10][10],float d[10][10]);
int IMP(float a[100],float b[100],float c[10][10],float d[10][10]);
#define GVT1(i) gvt1[i-1]
#define GVT2(i) gvt2[i-1]
#define GVT3(i) gvt3[i-1]
#define GVT4(i) gvt4[i-1]
#define SVT1(i,j) svt1[i-1][j-1]
#define SVT2(i,j) svt2[i-1][j-1]
#define SVT3(i,j) svt3[i-1][j-1]
#define SVT4(i,j) svt4[i-1][j-1]
float gvt1[100],gvt2[100],gvt3[100],gvt4[100];
float svt1[10][10],svt2[10][10],svt3[10][10],svt4[10][10];
int main()
{
	long int A,B;
	long int I,J;
	IMP(gvt1,gvt2,svt1,svt2);
	GSV(gvt3,gvt4,svt3,svt4);
	A=0;
	B=0;
	for(I =1;I <=100;I ++)
	{
		if (fabs(GVT1(I)-GVT3(I)) >  0.001)
		{
			A=1;
			B=I;
			goto LBL_99;
		}
		if (fabs(GVT2(I)-GVT4(I)) >  0.001)
		{
			A=2;
			B=I;
			goto LBL_99;
		}
LBL_10:
		;
	}
	for(J=1;J<=10;J++)
	{
		for(I=1;I<=10;I++)
		{
			if (fabs(SVT1(I,J)-SVT3(I,J)) >  0.001)
			{
				A=3;
				B=I+10*J;
				goto LBL_99;
			}
			if (fabs(SVT2(I,10)-SVT4(I,10)) >  0.001)
			{
				A=4;
				B=I+10*J;
				goto LBL_99;
			}
LBL_20:
			;
		}
	}
LBL_99:
	;
	printf(" \n");
	printf(" %ld %ld \n",A,B);
	exit (0);
}
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i,j) c[i-1][j-1]
#define D(i,j) d[i-1][j-1]
#define E(i) e[i-1]
#define F(i) f[i-1]
int IMP(float a[100],float b[100],float c[10][10],float d[10][10])
{
	float e[10],f[10];
	float X=2.0;
	long int I,J,i;
	for(i=0;i< 10;i++){
		e[i]=1.0;
	}
	for(J=1;J<=10;J++)
	{
		for(I=1;I<=100;I++)
		{
			A(I)=I+1.0;
			B(I)=A(I)+J+2.0;
LBL_10:
			;
		}
		for(I=1;I<=10;I++)
		{
			C(I,J)=E(10);
			D(I,J)=E(I);
			C(I,J)=D(I,J)+C(I,J)+2.0;
LBL_20:
			;
		}
		for(I=1;I<=10;I++)
		{
			F(I)=D(I,J)+C(I,J);
			if (X == 2)
			{
				if (F(I) >  10.0)
				{
					F(I)=D(I,J);
				}
				else
				{
					F(I)=C(I,J);
				}
			}
LBL_30:
			;
		}
	}
	for(J=1;J<=10;J++)
	{
		for(I=1;I<=10;I++)
		{
			D(I,J)=F(I)+C(I,10);
			if (X == 2.0)
			{
				D(I,J)=F(I)+C(I,10)+2.0;
			}
LBL_40:
			;
		}
	}
	return 0;
}
int GSV(float a[100],float b[100],float c[10][10],float d[10][10])
{
	float e[10],f[10];
	float X=2.0;
	long int I,J,i;
	for(i=0;i< 10;i++){
		e[i]=1.0;
	}
	for(J=1;J<=10;J++)
	{
		for(I=1;I<=100;I++)
		{
			A(I)=I+1.0;
LBL_10:
			;
		}
		I=10;
		B(I)=A(I)+J+2.0;
		for(I=1;I<=10;I++)
		{
			C(I,J)=E(10);
			D(I,J)=E(I);
LBL_20:
			;
		}
		I=10;
		C(I,J)=D(I,J)+C(I,J)+2.0;
		for(I=1;I<=10;I++)
		{
			F(I)=D(I,J)+C(I,J);
			if (X == 2)
			{
				if (F(I) >  10.0)
				{
					F(I)=D(I,J);
				}
				else
				{
					F(I)=C(I,J);
				}
			}
LBL_30:
			;
		}
	}
	for(J=1;J<=10;J++)
	{
		for(I=1;I<=10;I++)
		{
			D(I,J)=F(I)+C(I,10);
			if (X == 2.0)
			{
				D(I,J)=F(I)+C(I,10)+2.0;
			}
LBL_40:
			;
		}
	}
	return 0;
}
