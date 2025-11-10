#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define CNDPFX(i) cndpfx[i-1]
#define CNDPFR(i) cndpfr[i-1]
#define CNDNOT(i) cndnot[i-1]
#define CNDNFR(i) cndnfr[i-1]
#define CNDMFX(i) cndmfx[i-1]
#define CNDMFR(i) cndmfr[i-1]
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i) c[i-1]
float cndpfx[100],cndpfr[100],cndnot[100];
float cndnfr[100],cndmfx[100],cndmfr[100];
float a[100],b[100],c[100];
int main()
{
	long  int i,I;
	for(I=1;I<=100;I++)
	{
		CNDPFX(I)=0.2;
		CNDNFR(I)=0.5;
		CNDPFR(I)=0.2;
		CNDMFX(I)=0.2;
		CNDMFR(I)=0.5;
		CNDNOT(I)=0.2;
	}
	for(I=1;I<=100;I++)
	{
		A(I)=sin(CNDPFX(I));
	}
	for(I=1;I<=100;I++)
	{
		B(I)=CNDPFR(I);
		C(I)=sin(CNDPFR(I));
	}
	for(I=1;I<=25;I++)
	{
		B(I)=cos(CNDPFR(I));
		A(I)=pow(cos(CNDPFR(I)),2.0);
	}
	for(I=1;I<=100;I++)
	{
		A(I)=CNDNFR(I);
	}
	for(I=1;I<=25;I++)
	{
		B(I)=CNDNFR(I)+A(I);
		C(I)=sin(B(I));
	}
	for(I =26;I <=50;I ++)
	{
		B(I)=CNDNFR(I)*CNDNFR(I);
		A(I)=C(I)*CNDNFR(I);
	}
	for(I=51;I<=75;I++)
	{
		if (I <  60)
		{
			if (I <  70)
				A(I)=CNDNFR(I)*3.0;
		}
		else
			if(I< 70)
				A(I)=CNDNFR(I)*3.0;
	}
	for(I =1;I <=100;I ++)
	{
		if (I >  0)
		{
			A(I)=CNDMFX(I);
		}
		if (I >  10)
		{
			B(I)=sin(CNDMFX(I));
		}
		if (I >  50)
		{
			C(I)=CNDMFX(I)*5.0;
		}
	}
	for(I=1;I<=100;I++)
	{
		if (I >  50)
		{
			C(I)=sin(CNDMFR(I));
			CNDMFR(I)=A(I)*2.0;
			if (I >  70)
			{
				CNDMFR(I)=A(I)*2.0+2.0;
			}
			A(I)=A(I)*2.0;
		}
	}
	printf(" ***  *** \n");
	for(i=1;i<=100;i++){
		printf(" %g %g %g %g %g \n",A(i),B(i),C(i),CNDPFX(i),CNDNFR(i));
		printf(" %g %g %g %g \n",CNDPFR(i),CNDMFX(i),CNDMFR(i),CNDNOT(i));
	}
	exit (0);
}
