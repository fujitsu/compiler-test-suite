#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i) c[i-1]
#define LA(i) la[i-1]
#define LB(i) lb[i-1]
#define LC(i) lc[i-1]
#define LD(i) ld[i-1]
float a[500],b[500],c[1000];
unsigned long int la[500],lb[500],lc[1000],ld[1000];
long int J,K;
int main()
{
	long int N=500;
	long int I;
	for (I=1;I<=500;I++)
	{
		A(I)=0.0;
		B(I)=0.0;
		C(I)=0.0;
		C(I+500)=0.0;
	}
	for (I=1;I<=250;I++)
	{
		LA(I)=1;
		LA(I+250)=0;
		LB(I)=1;
		LB(I+250)=0;
	}
	for (I=1;I<=500;I++)
	{
		LC(I)=1;
		LC(I+500)=0;
		LD(I)=1;
		LD(I+500)=0;
	}
	for(I=1;I<=10;I++)
	{
		if (LA(I)==1)
		{
			if (LB(I)==1)
			{
				A(I)=1.0;
			}
		}
LBL_10:
		;
	}
	for(I=1;I<=N;I++)
	{
		if (LA(I)==1)
		{
			for(J=1;J<=100;J++)
			{
				A(J)=J;
LBL_21:
				;
			}
		}
LBL_20:
		;
	}
	for(I=1;I<=N;I++)
	{
		if (LA(I)==1)
		{
			A(I)=B(I);
			goto LBL_30;
		}
		else
		{
			A(I)=-B(I);
		}
LBL_30:
		;
	}
	for(I=1;I<=1000;I++)
	{
		if (LC(I)==1)
		{
			if (LD(I)==1)
			{
				C(I)=I;
			}
		}
LBL_40:
		;
	}
	for(I=1;I<=500;I++)
	{
		if (LA(I)==1)
		{
			A(I)=I;
		}
		else
		{
			B(I)=-I;
		}
LBL_50:
		;
	}
	for(I=1;I<=500;I++)
	{
		K=70;
LBL_60:
		;
	}
	for(I=1;I<=500;I++)
	{
		if ( LA(I) == 1 );
		{
			A(I)=B(I);
		}
LBL_70:
		;
	}
	for (I=1;I<=500;I++)
	{
		printf(" %g ",A(I));
		printf(" %g ",B(I));

		
		if ( (I%10) == 0 ) printf("\n");
		
	}
	exit (0);
}
