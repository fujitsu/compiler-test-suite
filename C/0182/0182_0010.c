#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int C1522(COMPLEX8 a[],COMPLEX8 b[],COMPLEX8 c[],COMPLEX8 d[],long int N);
int C152(long int N);
int C151();
int C16();
int C14();
int C13();
#define C12A(i) c12a[i-1]
#define C12B(i) c12b[i-1]
#define C12C(i) c12c[i-1]
#define C12D(i) c12d[i-1]
#define C12E(i) c12e[i-1]
float c12a[10],c12b[10],c12c[10],c12d[10],c12e[10];
int main()
{
	long int i,j,I,J;
	for(i=0;i< 10;i++){
		c12c[i]=2.0;
	}
	for(I =1;I <=10;I ++)
	{
		C12A(I)=C12C(I)/2.;
		C12B(I)=pow(C12A(I),2.0);
		C12D(I)=pow(C12A(I),2.0);
		C12E(I)=pow(C12A(I),4.0);
		C12C(I)=C12A(I)*C12B(I)*C12C(I)*C12D(I)*C12E(I);
LBL_10:
		;
	}
	printf(" \n");
	for(i=1;i<=10;i++){
		printf(" %g %g %g %g %g \n",C12A(i),C12B(i),C12C(i),C12D(i),C12E(i));
	}
LBL_20:
	;
	C13();
	C14();
	C151();
	C152((long int)10);
	C16();
	exit (0);
}
#define C13A(i) c13a[i-1]
#define C13B(i) c13b[i-1]
#define C13C(i) c13c[i-1]
#define C13D(i) c13d[i-1]
int C13()
{
	long int c13a[10],c13b[10],c13c[10],c13d[10];
	long int i,j,I,J;
	for(i=0;i< 10;i++){
		c13c[i]=1;
	}
	for(I =1;I <=10;I ++)
	{
		C13A(I)=C13C(I)*2;
		C13B(I)=pow(C13C(I),I);
		C13D(I)=10;
LBL_10:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %ld %ld %ld %ld \n",C13A(i),C13B(i),C13C(i),C13D(i));
	}
	return 0;
}
#define C14A(i) c14a[i-1]
int C14()
{
	long int c14a[10];
	long int N=8;
	long int i,j,I,J;
	for(i=0;i< 10;i++){
		c14a[i]=1;
	}
	for(I=1;I<=10;I+=2)
	{
LBL_10:
		;
		C14A(I)=2;
	}
	for(I=1;I<=10;I+=4)
	{
LBL_20:
		;
		C14A(I)=4+N;
	}
	for(I=1;I<=10;I+=N)
	{
LBL_30:
		;
		C14A(I)=N+4;
	}
	for(i=1;i<=10;i++){
		printf(" %ld \n",C14A(i));
	}
	return 0;
}
#define C151A(i) c151a[i-1]
#define C151B(i) c151b[i-1]
#define C151C(i) c151c[i-1]
#define C151D(i) c151d[i-1]
int C151()
{
	double c151a[10],c151b[10],c151c[10],c151d[10];
	long int i,j,I,J;
	for(i=0;i< 10;i++){
		c151c[i]=1.0;
	}
	for(I=1;I<=10;I++)
	{
		C151A(I)=C151C(I)*2.0;
		C151B(I)=pow(C151C(I),I);
		C151D(I)=pow(C151A(I),2.0);
LBL_10:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g %g %g %g \n",C151A(i),C151B(i),C151C(i),C151D(i));
	}
	return 0;
}
#define C152A(i) c152a[i-1]
#define C152B(i) c152b[i-1]
#define C152C(i) c152c[i-1]
#define C152D(i) c152d[i-1]
int C152(long int N)
{
	COMPLEX8 c152a[10],c152b[10],c152c[10];
	COMPLEX8 c152d[10];
	long int I,J,i,j;
	for(i=0;i< 10;i++){
		c152c[i].real=1.0;
		c152c[i].imag=2.0;
		c152d[i].real=1.0;
		c152d[i].imag=1.0;
	}
	for(I=1;I<=10;I++)
	{
		C152A(I).real=1.0;
		C152A(I).imag=1.0;
		C152B(I).real=C152C(I).real;
		C152B(I).imag=C152C(I).imag;
LBL_1:
		;
	}
	for(I=1;I<=10;I+=((N<2)?N:2))
	{
		C152A(I).real=10.0;
		C152A(I).imag=1.0;
		C152B(I).real=pow(C152C(I).real,C152C(I).real);
		C152B(I).imag=pow(C152C(I).imag,C152C(I).imag);
LBL_10:
		;
	}
	C1522(c152a,c152b,c152c,c152d,(long int)10);
	for(i=1;i<=10;i++){
		printf(" %g %g %g %g \n",C152A(i).real,C152B(i).real,
		    C152C(i).real,C152D(i).real);
		printf(" %g %g %g %g \n",C152A(i).imag,C152B(i).imag,
		    C152C(i).imag,C152D(i).imag);
	}
	return 0;
}
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i) c[i-1]
#define D(i) d[i-1]
int C1522(COMPLEX8 a[],COMPLEX8 b[],COMPLEX8 c[],COMPLEX8 d[],long int N)
{
	long int I;
	for(I=1;I<=N;I+=2)
	{
		B(I).real=B(I).real+D(I).real+B(N).real;
		B(I).imag=B(I).imag+D(I).imag+B(N).imag;
		D(I).real=A(I).real+B(I).real;
		D(I).imag=A(I).imag+B(I).imag;
		C(I).real=D(I).real+D(I).real;
		C(I).imag=D(I).imag+D(I).imag;
		D(I).real=A(I).real*C(I).real;
		D(I).imag=A(I).imag*C(I).imag;
LBL_10:
		;
	}
	return 0;
}
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i) c[i-1]
#define D(i) d[i-1]
#define E(i) e[i-1]
#define F(i) f[i-1]
#define G(i) g[i-1]
#define H(i) h[i-1]
#define P(i) p[i-1]
#define Q(i) q[i-1]
#define R(i) r[i-1]
#define S(i) s[i-1]
#define T(i) t[i-1]
#define U(i) u[i-1]
#define V(i) v[i-1]
#define W(i) w[i-1]
#define Z(i) z[i-1]
int C16()
{
	static COMPLEX16 a[10],b[10],c[10],d[10],e[10],f[10],g[10],h[10];
	static COMPLEX16 p[10],q[10],r[10],s[10],t[10],u[10],v[10],w[10];
	double z[10];
	long int I,J,i,j;
	for(i=0;i< 10;i++){
		a[i].dreal=1.0;
		a[i].dimag=1.0;
		b[i].dreal=1.0;
		b[i].dimag=1.0;
		c[i].dreal=1.0;
		c[i].dimag=1.0;
		d[i].dreal=1.0;
		d[i].dimag=1.0;
		e[i].dreal=1.0;
		e[i].dimag=1.0;
		f[i].dreal=1.0;
		f[i].dimag=1.0;
		g[i].dreal=1.0;
		g[i].dimag=1.0;
		h[i].dreal=1.0;
		h[i].dimag=1.0;
		p[i].dreal=1.0;
		p[i].dimag=1.0;
		q[i].dreal=1.0;
		q[i].dimag=1.0;
		r[i].dreal=1.0;
		r[i].dimag=1.0;
		s[i].dreal=1.0;
		s[i].dimag=1.0;
		t[i].dreal=1.0;
		t[i].dimag=1.0;
		u[i].dreal=1.0;
		u[i].dimag=1.0;
		v[i].dreal=1.0;
		v[i].dimag=1.0;
		w[i].dreal=1.0;
		w[i].dimag=1.0;
		z[i]=1.0;
	}
	for(I=1;I<=10;I++)
	{
		A(I).dreal=P(I).dreal+Q(I).dreal;
		A(I).dimag=P(I).dimag+Q(I).dimag;
		B(I).dreal=pow(pow(A(I).dreal,P(I).dreal),Q(I).dreal);
		B(I).dimag=pow(pow(A(I).dimag,P(I).dimag),Q(I).dimag);
LBL_10:
		;
	}
	for(I=1;I<=10;I++)
	{
		if (Z(1) >  Z(10))
		{
			C(I).dreal=(R(I).dreal*S(I).dreal-R(I).dimag*S(I).dimag)*Q(I).dreal-
			    (R(I).dimag*S(I).dreal+R(I).dreal*S(I).dimag)*Q(I).dimag;
			C(I).dimag=(R(I).dimag*S(I).dreal+R(I).dreal*S(I).dimag)*Q(I).dreal+
			    (R(I).dreal*S(I).dreal-R(I).dimag*S(I).dimag)*Q(I).dimag;
			D(I).dreal=C(I).dreal*V(I).dreal-C(I).dimag*V(I).dimag+C(I).dreal;
			D(I).dimag=C(I).dimag*V(I).dreal+C(I).dreal*V(I).dimag+C(I).dimag;
		}
		else
		{
			B(2).dreal=A(10).dreal;
			B(2).dimag=A(10).dimag;
			if (B(3).dreal == B(4).dreal && B(3).dimag == B(4).dimag)
			{
				A(1).dreal=B(5).dreal;
				A(1).dimag=B(5).dimag;
			}
			else
			{
				E(I).dreal=C(I).dreal-W(I).dreal+T(I).dreal+
				    pow(C(I).dreal,W(I).dreal);
				E(I).dimag=C(I).dimag-W(I).dimag+T(I).dimag+
				    pow(C(I).dimag,W(I).dimag);
			}
		}
LBL_20:
		;
	}
	for(I=1;I<=10;I+=2)
	{
		F(I).dreal=A(I).dreal+B(I).dreal+C(I).dreal+D(I).dreal+P(I).dreal+
		    Q(I).dreal+R(I).dreal+S(I).dreal+V(I).dreal+W(I).dreal+
		    E(I).dreal+F(I).dreal+G(I).dreal+H(I).dreal+T(I).dreal+
		    U(I).dreal+fabs(-2.0);
		F(I).dimag=A(I).dimag+B(I).dimag+C(I).dimag+D(I).dimag+P(I).dimag+
		    Q(I).dimag+R(I).dimag+S(I).dimag+V(I).dimag+W(I).dimag+
		    E(I).dimag+F(I).dimag+G(I).dimag+H(I).dimag+T(I).dimag+
		    U(I).dimag+fabs(-2.0);
		G(I).dreal=F(I).dreal+fabs(2.0)*fabs(2.0)-fabs(-2.0);
		G(I).dimag=F(I).dimag+fabs(2.0)*fabs(2.0)-fabs(-2.0);
		H(I).dreal=F(I).dreal+G(I).dreal+A(I).dreal+B(I).dreal+C(I).dreal+
		    D(I).dreal+P(I).dreal+Q(I).dreal+R(I).dreal+S(I).dreal+
		    V(I).dreal+H(I).dreal+W(I).dreal+E(I).dreal+F(I).dreal+
		    G(I).dreal+H(I).dreal+T(I).dreal+U(I).dreal*fabs(1.0)-
		    fabs(1.0)+fabs(Z(I));
		H(I).dimag=F(I).dimag+G(I).dimag+A(I).dimag+B(I).dimag+C(I).dimag+
		    D(I).dimag+P(I).dimag+Q(I).dimag+R(I).dimag+S(I).dimag+
		    V(I).dimag+H(I).dimag+W(I).dimag+E(I).dimag+F(I).dimag+
		    G(I).dimag+H(I).dimag+T(I).dimag+U(I).dimag*fabs(1.0)-
		    fabs(1.0);
LBL_30:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g \n",
		    A(i).dreal,B(i).dreal,C(i).dreal,D(i).dreal,E(i).dreal,
		    F(i).dreal,G(i).dreal,H(i).dreal,P(i).dreal,Q(i).dreal,
		    S(i).dreal,R(i).dreal,T(i).dreal,U(i).dreal,V(i).dreal,
		    W(i).dreal,Z(i));
		printf(" %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g %g \n",
		    A(i).dimag,B(i).dimag,C(i).dimag,D(i).dimag,E(i).dimag,
		    F(i).dimag,G(i).dimag,H(i).dimag,P(i).dimag,Q(i).dimag,
		    S(i).dimag,R(i).dimag,T(i).dimag,U(i).dimag,V(i).dimag,
		    W(i).dimag,Z(i));
	}
	return 0;
}
