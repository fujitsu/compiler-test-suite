#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i) c[i-1]
#define D(i) d[i-1]
#define E(i) e[i-1]
#define F(i) f[i-1]
#define G(i) g[i-1]
#define P(i,j) p[i-1][j-1]
#define Q(i,j) q[i-1][j-1]
#define R(i,j) r[i-1][j-1]
#define LA(i) la[i-1]
#define LB(i) lb[i-1]
#define LC(i) lc[i-1]
float a[100],b[100],c[100],d[100],e[100],f[100],g[100];
float p[100][100],q[100][100],r[100][100];
unsigned long int la[100],lb[100],lc[100];
int main()
{
	long int I,J;
	for (I=1;I<=100;I++)
	{
		A(I)=0.0;
		B(I)=0.0;
		C(I)=0.0;
		D(I)=0.0;
		E(I)=0.0;
	}
	for (I=1;I<=50;I++)
	{
		LA(I)=1;
		LA(I+50)=0;
		LB(I)=1;
		LB(I+50)=0;
		LC(I)=1;
		LC(I+50)=0;
	}
	for(I=1;I<=100;I++)
	{
		if (LA(I)==1)
		{
			A(I)=1.0;
			for(J=1;J<=100;J++)
			{
				P(I,J)=I+J;
LBL_11:
				;
			}
			B(I)=I;
		}
LBL_10:
		;
	}
	for(I=1;I<=100;I++)
	{
		if (LC(I)==1)
		{
			F(I)=I;
			if (LB(I)==1)goto LBL_110;
			for(J=1;J<=100;J++)
			{
				P(I,J)=I+J;
LBL_111:
				;
			}
LBL_110:
			;
			B(I)=I;
		}
LBL_100:
		;
	}
	for(I=1;I<=100;I++)
	{
		if (LA(I)==1)
		{
			A(I)=1.0;
			for(J=1;J<=100;J++)
			{
				P(I,J)=I+J;
LBL_21:
				;
			}
			goto LBL_23;
		}
		else
		{
			C(I)=1.0;
			for(J=1;J<=100;J++)
			{
				Q(I,J)=I;
LBL_22:
				;
			}
			D(I)=I;
		}
LBL_23:
		;
LBL_20:
		;
	}
	for(I=1;I<=100;I++)
	{
		if (LA(I)==1)goto LBL_33;
		if (LB(I)==1)goto LBL_31;
		goto LBL_30;
LBL_33:
		;
		if (LC(I)==1)goto LBL_31;
		goto LBL_30;
LBL_31:
		;
		for(J=1;J<=100;J++)
		{
LBL_35:
			;
			R(I,J)=P(I,J);
		}
		E(I)=F(I);
		G(I)=sqrt(E(I));
LBL_30:
		;
	}
	printf("\n a   ");
	for (I=1;I<=10;I++)
	{
		printf(" %g ",A(I));
	}
	printf("\n r   ");
	for (I=1;I<=10;I++)
	{
		printf(" %g ",R(I,1));
	}
        printf("\n");
	exit (0);
}
