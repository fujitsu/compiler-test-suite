#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define IMP1(i) imp1[i-1]
#define IMP2(i) imp2[i-1]
#define IMP3(i) imp3[i-1]
#define IMPA(i) impa[i-1]
#define IMPB(i) impb[i-1]
#define IMPC(i) impc[i-1]
#define A(i,j) a[i-1][j-1]
#define B(i,j) b[i-1][j-1]
#define C(i,j) c[i-1][j-1]
#define D(i,j) d[i-1][j-1]
#define E(i,j) e[i-1][j-1]
#define F(i,j) f[i-1][j-1]
#define G(i,j) g[i-1][j-1]
#define H(i,j) h[i-1][j-1]
long int imp1[10],imp2[10],imp3[10];
float    impa[10],impb[10],impc[10];
int main()
{
	long  int N=4;
	static float     a[10][10],b[10][10],c[10][10],
	d[10][10],e[10][10],f[10][10];
	static float     g[10][10],h[10][10];
	long  int I,i;
	long  int J,j;
	for(J =1;J <=10;J ++)
	{
		for(I =1;I <=10;I ++)
		{
			A(I,J)=I;
			B(I,J)=I;
			C(I,J)=I;
			D(I,J)=I;
			E(I,J)=I;
			F(I,J)=I;
			G(I,J)=I;
			H(I,J)=I;
			IMPA(I)=A(I,J)+B(I,J)+C(I,J)+D(I,J)+E(I,J)+F(I,J)+
			    G(I,J)+H(I,J)*2.0;
LBL_20:
			;
			IMPB(I)=A(I,J)+B(I,J)+C(I,J)+D(I,J)+E(I,J)+F(I,J)+
			    G(I,J)+H(I,J)*2.0+IMPA(I);
		}
		IMPC(J)=1.0;
		IMP1(J)=1;
		IMP2(J)=2;
LBL_10:
		;
		IMP3(J)=3;
	}
	for(J=1;J<=10;J++)
	{
		for(I=1;I<=10;I+=N)
		{
			A(I,J)=A(I,J)+1.0;
			B(I,J)=B(I,J)+2.0;
			C(I,J)=C(I,J)+3.0;
			D(I,J)=D(I,J)+4.0;
			E(I,J)=E(I,J)+5.0;
			F(I,J)=F(I,J)+6.0;
			G(I,J)=G(I,J)+7.0;
			H(I,J)=H(I,J)+8.0;
			IMPA(I)=A(I,J)+B(I,J)+C(I,J)+D(I,J)+E(I,J)+F(I,J)+
			    G(I,J)+H(I,J)*3.0;
			IMPB(I)=A(I,J)+B(I,J)+C(I,J)+D(I,J)+E(I,J)+F(I,J)+
			    G(I,J)+H(I,J)*3.0+IMPA(I);
LBL_31:
			;
		}
		for(I=1;I<=10;I+=N-1)
		{
			A(I,J)=A(I,J)+(float)(J)+1.0;
			B(I,J)=B(I,J)+(float)(J)+2.0;
			C(I,J)=C(I,J)+(float)(J)*3.0;
			D(I,J)=D(I,J)+(float)(J)+1.0;
			E(I,J)=E(I,J)+(float)(J);
			F(I,J)=F(I,J)+(float)(I)+1.0;
			G(I,J)=G(I,J)+(float)(I)+2.0;
			H(I,J)=H(I,J)+(float)(I);
			IMP1(I)=(int)(A(I,J)+B(I,J)+C(I,J)+D(I,J)+E(I,J)+F(I,J)+
			    G(I,J)+H(I,J)+(float)I+(float)J*3.0+1.0)  ;
			IMP2(I)=(int)(A(I,J)+B(I,J)+C(I,J)+D(I,J)+E(I,J)+F(I,J)+
			    G(I,J)+H(I,J)+(float)I+(float)J*3.0+1.0)+IMPA(I)  ;
LBL_30:
			;
		}
	}
	for(J =1;J <=N;J ++)
	{
		for(I =1;I <=N;I +=2)
		{
			IMP1(I)=1;
LBL_41:
			;
			IMP2(I)=IMPA(I)+2;
		}
		for(I =1;I <=N;I +=2)
		{
			A(I,J)=(float)(I);
			B(I,J)=(float)(I);
			C(I,J)=(float)(I);
			D(I,J)=(float)(I);
			E(I,J)=(float)(I);
			F(I,J)=(float)(I);
			G(I,J)=(float)(I);
			H(I,J)=(float)(I);
			IMPA(I)=A(I,J)+A(I,J)+B(I,J)+C(I,J)+D(I,J)+E(I,J)+
			    F(I,J)+G(I,J)+H(I,J)*3.0+IMPB(I);
LBL_40:
			;
		}
	}
	for(J=5;J<=7;J++)
	{
		for(I=N;I<=10;I+=3)
		{
LBL_51:
			;
			IMP3(I)=IMP3(I)+N;
		}
		for(I=N;I<=10;I+=3)
		{
LBL_52:
			;
			A(I,J)=0.0;
		}
		for(I=N;I<=10;I+=3)
		{
LBL_53:
			;
			IMP2(I)=IMP2(I)+N+I;
		}
		for(I=N;I<=10;I+=3)
		{
			A(I,J)=J;
			B(I,J)=J;
			C(I,J)=J;
			D(I,J)=J;
			E(I,J)=J;
			F(I,J)=J;
			G(I,J)=J;
			H(I,J)=J;
			IMPB(I)=A(I,J)+B(I,J)+C(I,J)+D(I,J)+E(I,J)+F(I,J)+G(I,J)+
			    H(I,J)*3.0+IMPA(I);
LBL_54:
			;
		}
LBL_50:
		;
	}
	printf(" \n");
	for(i=1;i<=10;i++){
		printf(" %ld %ld %ld %g %g %g \n",IMP1(i),IMP2(i),IMP3(i),
		    IMPA(i),IMPB(i),IMPC(i));
	}
	for(i=1;i<=10;i++){
		for(j=1;j<=10;j++){
			printf(" %g %g %g %g %g %g %g %g \n",
			    A(i,j),B(i,j),C(i,j),D(i,j),E(i,j),
			    F(i,j),G(i,j),H(i,j));
		}
	}
	printf(" %ld \n",N);
	exit (0);
}
