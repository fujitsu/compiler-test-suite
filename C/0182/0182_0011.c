#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define M1(i) m1[i-1]
#define M2(i) m2[i-1]
#define M3(i) m3[i-1]
#define M4(i) m4[i-1]
#define M5(i) m5[i-1]
#define M6(i) m6[i-1]
#define M7(i) m7[i-1]
#define M8(i) m8[i-1]
#define M9(i) m9[i-1]
#define M10(i) m10[i-1]
#define R1(i) r1[i-1]
#define R2(i) r2[i-1]
#define R3(i) r3[i-1]
#define R4(i) r4[i-1]
#define R5(i) r5[i-1]
#define R6(i) r6[i-1]
#define R7(i) r7[i-1]
#define R8(i) r8[i-1]
#define R9(i) r9[i-1]
#define R10(i) r10[i-1]
#define D1(i) d1[i-1]
#define D2(i) d2[i-1]
#define D3(i) d3[i-1]
#define D4(i) d4[i-1]
#define D5(i) d5[i-1]
#define D6(i) d6[i-1]
#define D7(i) d7[i-1]
#define D8(i) d8[i-1]
#define D9(i) d9[i-1]
#define D10(i) d10[i-1]
#define C1(i) c1[i-1]
#define C2(i) c2[i-1]
#define C3(i) c3[i-1]
#define C4(i) c4[i-1]
#define C5(i) c5[i-1]
#define C6(i) c6[i-1]
#define C7(i) c7[i-1]
#define C8(i) c8[i-1]
#define C9(i) c9[i-1]
#define C10(i) c10[i-1]
#define L1(i) l1[i-1]
#define L2(i) l2[i-1]
#define L3(i) l3[i-1]
#define L4(i) l4[i-1]
#define L5(i) l5[i-1]
#define L6(i) l6[i-1]
#define L7(i) l7[i-1]
#define L8(i) l8[i-1]
#define L9(i) l9[i-1]
#define L10(i) l10[i-1]
#define CD1(i) cd1[i-1]
#define CD2(i) cd2[i-1]
#define CD3(i) cd3[i-1]
#define CD4(i) cd4[i-1]
#define CD5(i) cd5[i-1]
#define CD6(i) cd6[i-1]
#define CD7(i) cd7[i-1]
#define CD8(i) cd8[i-1]
#define CD9(i) cd9[i-1]
#define CD10(i) cd10[i-1]
long int m1[1024],m2[1024],m3[1024],m4[1024],m5[1024],m6[1024],m7[1024],
m8[1024],m9[1024],m10[1024];
float    r1[1024],r2[1024],r3[1024],r4[1024],r5[1024],r6[1024],r7[1024],
r8[1024],r9[1024],r10[1024];
double   d1[1024],d2[1024],d3[1024],d4[1024],d5[1024],d6[1024],d7[1024],
d8[1024],d9[1024],d10[1024];
COMPLEX8 c1[1024],c2[1024],c3[1024],c4[1024],c5[1024],c6[1024],c7[1024],
c8[1024],c9[1024],c10[1024];
unsigned long int l1[1024],l2[1024],l3[1024],l4[1024],l5[1024],l6[1024],
l7[1024],l8[1024],l9[1024],l10[1024];
COMPLEX16 cd1[1024],cd2[1024],cd3[1024],cd4[1024],cd5[1024],cd6[1024],
cd7[1024],cd8[1024],cd9[1024],cd10[1024];
int main()
{
	long int I,i,J,j;
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=1024;I++)
		{
			M1(I)=1;
			M2(I)=2;
			M3(I)=3;
			M4(I)=4;
			M5(I)=5;
			M6(I)=6;
			M7(I)=7;
			M8(I)=8;
			M9(I)=9;
			M10(I)=10;
			R1(I)=1.0;
			R2(I)=2.0;
			R3(I)=3.0;
			R4(I)=4.0;
			R5(I)=5.0;
			R6(I)=6.0;
			R7(I)=7.0;
			R8(I)=8.0;
			R9(I)=9.0;
			R10(I)=10.0;
			D1(I)=10.0;
			D2(I)=9.0;
			D3(I)=8.0;
			D4(I)=7.0;
			D5(I)=6.0;
			D6(I)=5.0;
			D7(I)=4.0;
			D8(I)=3.0;
			D9(I)=2.0;
			D10(I)=1.0;
			C1(I).real=1.0;
			C1(I).imag=1.0;
			C2(I).real=2.0;
			C2(I).imag=2.0;
			C3(I).real=3.0;
			C3(I).imag=3.0;
			C4(I).real=4.0;
			C4(I).imag=4.0;
			C5(I).real=5.0;
			C5(I).imag=5.0;
			C6(I).real=6.0;
			C6(I).imag=6.0;
			C7(I).real=7.0;
			C7(I).imag=7.0;
			C8(I).real=8.0;
			C8(I).imag=8.0;
			C9(I).real=9.0;
			C9(I).imag=9.0;
			C10(I).real=10.0;
			C10(I).imag=10.0;
			L1(I)=(R1(I) >R2(I))?1:0;
			L2(I)=(R2(I)<=R3(I))?1:0;
			L3(I)=(R3(I)==R4(I))?1:0;
			L4(I)=(R4(I) <R5(I))?1:0;
			L5(I)=(R5(I)>=R6(I))?1:0;
			L6(I)=(R6(I)!=R7(I))?1:0;
			L7(I)=(R7(I) >R8(I))?1:0;
			L8(I)=(R8(I) <R9(I))?1:0;
			L9(I)=(R9(I)>=R1(I))?1:0;
			L10(I)=(I>R5(I)||J==I)?1:0;
LBL_50:
			;
		}
		for(I=1;I<=512;I++)
		{
			CD1(I).dreal=1.0;
			CD1(I).dimag=2.0;
			CD2(I).dreal=1.0;
			CD2(I).dimag=2.0;
			CD3(I).dreal=1.0;
			CD3(I).dimag=2.0;
			CD4(I).dreal=1.0;
			CD4(I).dimag=2.0;
			CD5(I).dreal=1.0;
			CD5(I).dimag=2.0;
			CD6(I).dreal=1.0;
			CD6(I).dimag=2.0;
			CD7(I).dreal=1.0;
			CD7(I).dimag=2.0;
			CD8(I).dreal=1.0;
			CD8(I).dimag=2.0;
			CD9(I).dreal=1.0;
			CD9(I).dimag=2.0;
			CD10(I).dreal=1.0;
			CD10(I).dimag=2.0;
			CD1(I+512).dreal=2.0;
			CD1(I+512).dimag=1.0;
			CD2(I+512).dreal=2.0;
			CD2(I+512).dimag=1.0;
			CD3(I+512).dreal=2.0;
			CD3(I+512).dimag=1.0;
			CD4(I+512).dreal=2.0;
			CD4(I+512).dimag=1.0;
			CD5(I+512).dreal=2.0;
			CD5(I+512).dimag=1.0;
			CD6(I+512).dreal=2.0;
			CD6(I+512).dimag=1.0;
			CD7(I+512).dreal=2.0;
			CD7(I+512).dimag=1.0;
			CD8(I+512).dreal=2.0;
			CD8(I+512).dimag=1.0;
			CD9(I+512).dreal=2.0;
			CD9(I+512).dimag=1.0;
			CD10(I+512).dreal=2.0;
			CD10(I+512).dimag=1.0;
LBL_100:
			;
		}
	}
	for(I=2;I<=1023;I++)
	{
		M1(I)=M2(I)+M3(I)*M4(I)+M5(I)*M6(I)+M7(I)*M9(I)-M10(I);
		R1(I)=R2(I)+R3(I)*R4(I)+R5(I)*R6(I)+R7(I)*R9(I)-R10(I);
		D1(I)=D2(I)+D3(I)*D4(I)+D5(I)*D6(I)+D7(I)*D9(I)-D10(I);
		C1(I).real=C2(I).real+C3(I).real*C4(I).real+C5(I).real*C6(I).real+
		    C7(I).real*C9(I).real-C10(I).real;
		C1(I).real=C2(I).real+C3(I).real*C4(I).real+C5(I).real*C6(I).real+
		    C7(I).real*C9(I).real-C10(I).real;
		if (L2(1)==1)
		{
			M1(I)=M2(I)*M3(I)+M5(I)+M6(I)*M7(I)+M8(I)+M9(I)+M10(I)+2;
			R1(I)=R2(I)*R3(I)+R5(I)+R6(I)*R7(I)+R8(I)+R9(I)+R10(I)+2.;
			D1(I)=D2(I)*D3(I)+D5(I)+D6(I)*D7(I)+D8(I)+D9(I)+D10(I)+2.;
			C1(I).real=C2(I).real*C3(I).real+C5(I).real+
			    C6(I).real*C7(I).real+C8(I).real+C9(I).real+C10(I).real;
			C1(I).real=C2(I).real*C3(I).real+C5(I).real+
			    C6(I).real*C7(I).real+C8(I).real+C9(I).real+C10(I).real;
		}
		else
		{
			M2(I)=M1(I)*M3(I)+M5(I)+M6(I)*M7(I)+M8(I)+M9(I)+M10(I)+2;
			R2(I)=R1(I)*R3(I)+R5(I)+R6(I)*R7(I)+R8(I)+R9(I)+R10(I)+2.;
			D2(I)=D1(I)*D3(I)+D5(I)+D6(I)*D7(I)+D8(I)+D9(I)+D10(I)+2.;
			C2(I).real=C1(I).real*C3(I).real+C5(I).real+
			    C6(I).real*C7(I).real+C8(I).real+C9(I).real+C10(I).real;
			C2(I).real=C1(I).real*C3(I).real+C5(I).real+
			    C6(I).real*C7(I).real+C8(I).real+C9(I).real+C10(I).real;
			if (L2(I) ||
			    ((CD3(I).dreal != CD4(I).dreal) && (CD3(I).dimag != CD4(I).dimag)))
			{
				L2(I)=(!(L2(I)) ||
				    (CD1(I).dreal==CD2(I).dreal && CD1(I).dimag==CD2(I).dimag))?1:0;
			}
		}
LBL_200:
		;
	}
	printf(" \n");
	for(I=2;I<=1025;I++)
	{
		printf(" %ld %ld %ld %ld %ld   ",M1(I-1),M2(I-1),M3(I-1),M4(I-1),M5(I-1));
		printf(" %g %g %g %g %g \n",R1(I-1),R2(I-1),R3(I-1),R4(I-1),R5(I-1));
		printf(" %g %g %g %g %g   ",D1(I-1),D2(I-1),D3(I-1),D4(I-1),D5(I-1));
		printf(" %g %g %g %g %g \n",C1(I-1).real,C2(I-1).real,
		    C3(I-1).real,C4(I-1).real,C5(I-1).real);
		printf(" %g %g %g %g %g   ",C1(I-1).imag,C2(I-1).imag,
		    C3(I-1).imag,C4(I-1).imag,C5(I-1).imag);
		printf(" %lu %lu %lu %lu %lu \n",
		    L1(I-1),L2(I-1),L3(I-1),L4(I-1),L5(I-1));
LBL_300:
		;
	}
	for(i=1;i<=1024;i++){
		printf(" %ld %ld %ld %ld %ld ",M6(i),M7(i),M8(i),M9(i),M10(i));
		printf(" %g %g %g %g %g \n",R6(i),R7(i),R8(i),R9(i),R10(i));
		printf(" %g %g %g %g %g   ",D6(i),D7(i),D8(i),D9(i),D10(i));
		printf(" %g %g %g %g %g \n",C6(i).real,C7(i).real,C8(i).real,
		    C9(i).real,C10(i).real);
		printf(" %g %g %g %g %g   ",C6(i).imag,C7(i).imag,C8(i).imag,
		    C9(i).imag,C10(i).imag);
		printf(" %lu %lu %lu %lu %lu \n",L6(i),L7(i),L8(i),L9(i),L10(i));
		printf(" %g %g %g %g %g %g %g %g %g %g \n",
		    CD1(i).dreal,CD2(i).dreal,CD3(i).dreal,CD4(i).dreal,CD5(i).dreal,
		    CD6(i).dreal,CD7(i).dreal,CD8(i).dreal,CD9(i).dreal,CD10(i).dreal);
		printf(" %g %g %g %g %g %g %g %g %g %g \n",
		    CD1(i).dimag,CD2(i).dimag,CD3(i).dimag,CD4(i).dimag,CD5(i).dimag,
		    CD6(i).dimag,CD7(i).dimag,CD8(i).dimag,CD9(i).dimag,CD10(i).dimag);
	}
	exit (0);
}
