#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB (double dx, double dy);
int JND239 (long int n);
int JND237 (double a[], double b[], double c[], long int n);
int bdata (void);
#define C1(i) c1[i-1]
#define C2(i) c2[i-1]
#define C3(i) c3[i-1]
#define A1(i) a1[i-1]
#define A2(i) a2[i-1]
#define A3(i) a3[i-1]
COMPLEX16 c1[50],c2[50],c3[50];
double a1[50],a2[50],a3[50];
int main (void)
{
	long int i,n=50;
	int s=0;
	float x;
	bdata();
	JND237(a1,a2,a3,n);
	JND239(n);
	printf("  ****** \n");
	for(i=1;i<=50;i++){
		printf("(A1(%ld)) %g ",i,A1(i));
		s=s+1;
		x=s%5;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	for(i=1;i<=50;i++){
		printf("(A2(%ld)) %g ",i,A2(i));
		s=s+1;
		x=s%3;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	for(i=1;i<=50;i++){
		printf("(A3(%ld)) %g ",i,A3(i));
		s=s+1;
		x=s%4;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	for(i=1;i<=50;i++){
		printf("(C1(%ld)) %g , %g )",i,C1(i).dreal,C1(i).dimag);
		s=s+1;
		x=s%3;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	for(i=1;i<=50;i++){
		printf("(C2(%ld)) %g , %g )",i,C2(i).dreal,C2(i).dimag);
		s=s+1;
		x=s%3;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	for(i=1;i<=50;i++){
		printf("(C3(%ld)) %g , %g )",i,C3(i).dreal,C3(i).dimag);
		s=s+1;
		x=s%4;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	exit (0);
}
int bdata (void)
{
	long int i;
	for(i=1;i<=50;i++){
		C1(i).dreal=1.0;
		C1(i).dimag=3.0;
		C2(i).dreal=2.0;
		C2(i).dimag=-1.0;
		C3(i).dreal=4.0;
		C3(i).dimag=5.0;
	}
}
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i) c[i-1]
int JND237 (double a[], double b[], double c[], long int n)
{
	long int nx,i,j,k;
	int s=0;
	float x;
	nx=n-5;
	for(i=2;i<=nx;i++)
	{
		A(i)=B(i)+C(i);
		SUB(A(i),C(i));
		B(i)=A(i-1)*C(i);
	}
	j=1;
	for(k=2;k<=nx;k++)
	{
		B(j)=B(j)*A(k)-C(k);
		C(k)=C(k)-(float)(k);
		printf("C(k)= %g ",C(k));
		s=s+1;
		x=s%5;
		if( x==0 ) printf(" \n");
	}
	printf(" \n");
	printf(" \n");
	return 0;
}
int SUB (double dx, double dy)
{
	dy=dy+dx;
	return 0;
}
#undef A
#undef B
#undef C
#define A(i) c1[i-1]
#define B(i) c2[i-1]
#define C(i) c3[i-1]
int JND239 (long int n)
{
	COMPLEX16 cx,cy;
	long int nx,i,j;
	nx=n/2+1;
	cx.dreal=0.0;
	cx.dimag=0.0;
	for(j=1;j<=2;j++)
	{
		cy.dreal=A(j).dreal;
		cy.dimag=A(j).dimag;
		for(i=1;i<=nx;i++)
		{
			B(i).dreal=B(i).dreal-cx.dreal;
			B(i).dimag=B(i).dimag-cx.dimag;
			cy.dreal=((double)(C(i).dimag) < (double)(B(i).dreal))?
			    (double)(C(i).dimag):(double)(B(i).dreal)-cx.dreal;
			cy.dimag=((double)(C(i).dimag) < (double)(B(i).dreal))?
			    (double)(C(i).dimag):(double)(B(i).dreal)-cx.dimag;
			cx.dreal=cx.dreal+C(i).dreal;
			cx.dimag=cx.dimag+C(i).dimag;
		}
	}
	C(nx).dreal=cy.dreal;
	C(nx).dimag=cy.dimag;
	C(n).dreal=cx.dreal;
	C(n).dimag=cx.dimag;
	return 0;
}
