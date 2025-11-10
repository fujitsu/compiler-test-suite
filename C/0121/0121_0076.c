#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUBR(double *WS);
int SUBC(COMPLEX16 *WS);
#define A(i) UDAD.a[i-1]
#define B(i) b[i-1]
#define D(i) UDAD.d[i-1]
#define E(i) UDEC.e[i-1]
#define C1(i) c1[i-1]
#define C2(i) c2[i-1]
#define C3(i) UDEC.c3[i-1]
union EQV1{
	double  a[50];
	double  d[50];
} UDAD;
union EQV2{
	double e[50];
	COMPLEX16 c3[50];
} UDEC;
COMPLEX16 c1[50],c2[50];
double b[50];
int main()
{
	long int NN=48;
	double DX,DY;
	long int I,J;
	double WS;
	for (I=1;I<=50;I++)
	{
		A(I)=4.0;
		B(I)=2.0;
		C1(I).dreal=1.0;
		C1(I).dimag=2.0;
		C2(I).dreal=-2.0;
		C2(I).dimag=-1.2;
		C3(I).dreal=3.0;
		C3(I).dimag=2.0;
	}
	for(I=2;I<=NN;I++)
	{
		DX=A(I)+C1(I).dreal;
		SUBC(&C3(I));
		C1(I).dreal=C2(I).dreal+DX;
		C1(I).dimag=C2(I).dimag+E(I);
LBL_10:
		;
	}
	for(J=2;J<=NN/3;J++)
	{
		for(I=2;I<=NN;I++)
		{
			A(I)=C1(I).dreal+C3(I).dimag;
			SUBR(&D(I));
			SUBC(&E(I));
			C2(J).dreal=C2(J).dreal+C1(I).dreal;
			C2(J).dimag=C2(J).dimag+C1(I).dimag;
LBL_20:
			;
		}
	}
	for(I=2;I<=NN;I++)
	{
		B(I)=A(I)-C2(I).dreal;
		SUBR(&A(1));
		D(I-1)=C3(I).dimag+E(I);
LBL_30:
		;
	}
	for(I=2;I<=NN;I++)
	{
		DX=A(I)+C3(I).dreal;
		DY=A(I)+C3(I).dimag;
		WS=DX+A(I);
		SUBR(&WS);
		WS=DY+D(I);
		SUBR(&WS);
		C2(J).dreal=C2(J).dreal+(C1(I).dreal-DX);
		C2(J).dimag=C2(J).dimag+(C1(I).dimag-DY);
LBL_40:
		;
	}
	for (I=1;I<=50;I++)
	{
		printf ("  A=%g ",A(I));
		printf ("  B=%g \n",B(I));
	}
	for (I=1;I<=50;I++)
	{
		printf (" C1=(%g,%g)",C1(I).dreal,C1(I).dimag);
		printf (" C2=(%g,%g)",C2(I).dreal,C2(I).dimag);
		printf (" C3=(%g,%g) \n",C3(I).dreal,C3(I).dimag);
	}
	exit (0);
}
int SUBR(WS)
double *WS;
{
	*WS= *WS+1.0;
	return 0;
}
int SUBC(WS)
COMPLEX16 *WS;
{
	(*WS).dreal=(*WS).dreal+1.0;
	(*WS).dimag=(*WS).dimag-1.0;
	return 0;
}
