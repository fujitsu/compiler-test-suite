#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int VERR(double a[100][100],long int N);
int VMSG(double a[100][100],double b[100][100],
	 double c[100][100],double d[100][100],
	 double e[10][10][10],double f[10][10][10],
	 unsigned long int m[100],long int N);
int VTUNE(double a[100][100],double b[100][100],double c[100][100],
	  unsigned long int m[100],
	  long int N);
#define A(i,j)   a[i-1][j-1]
#define B(i,j)   b[i-1][j-1]
#define C(i,j)   c[i-1][j-1]
#define D(i,j)   d[i-1][j-1]
#define E(i,j,k) e[i-1][j-1][k-1]
#define F(i,j,k) f[i-1][j-1][k-1]
#define M(i)     m[i-1]
double        a[100][100],b[100][100],c[100][100],d[100][100];
double        e[10][10][10],f[10][10][10];
unsigned long int m[100];
int main()
{
	long int N=100,i,j,k,I,J,K;
	for(j=0;j< 100;j++){
		for(i=0;i< 100;i++){
			a[i][j]=0.;
			b[i][j]=1.;
			c[i][j]=2.;
			d[i][j]=3.;
		}
	}
	for(k=0;k< 10;k++){
		for(j=0;j< 10;j++){
			for(i=0;i< 10;i++){
				e[i][j][k]=1.;
				f[i][j][k]=2.;
			}
		}
	}
	for(i=0;i< 100;i++){
		m[i]=1;
	}
	VMSG(a,b,c,d,e,f,m,N);
	VTUNE(a,b,c,m,N);
	VERR(a,N);
	for(j=1;j<=100;j++){
		for(i=1;i<=100;i++){
			printf(" %g \n",A(i,j));
		}
	}
	exit (0);
}
#define A(i,j)   a[i-1][j-1]
#define B(i,j)   b[i-1][j-1]
#define C(i,j)   c[i-1][j-1]
#define D(i,j)   d[i-1][j-1]
#define E(i,j,k) e[i-1][j-1][k-1]
#define F(i,j,k) f[i-1][j-1][k-1]
#define M(i)     m[i-1]
int VMSG(double a[100][100],double b[100][100],
double c[100][100],double d[100][100],
double e[10][10][10],double f[10][10][10],
unsigned long int m[100],long int N)
{
	double   S1,S2;
	long int J,I,K,i,j,k;
	for(J=1;J<=100;J++)
	{
		A(J,1)=B(J,1);
LBL_10:
		;
	}
	for(I=1;I<=100;I++)
	{
		for(J=1;J<=100;J++)
		{
			C(I,J)=D(I,J);
LBL_20:
			;
		}
	}
	for(K=1;K<=10;K++)
	{
		for(J=1;J<=10;J++)
		{
			for(I=1;I<=10;I++)
			{
				E(I,J,K)=F(I,J,K);
LBL_30:
				;
			}
		}
	}
	for(I=1;I<=100;I++)
	{
		if (M(I)) A(I,2) = B(I,2);
LBL_40:
		;
	}
	for(I=1;I<=100;I++)
	{
		S2=A(I,2);
		if (M(I)) S1 = sqrt(S2);
		B(I,2)=S1;
LBL_50:
		;
	}
	for(I=1;I<=100;I++)
	{
		if (M(I)) A(I,2) = sqrt(B(I,2)) + C(I,2);
LBL_60:
		;
	}
	return 0;
}
#define A(i,j) a[i-1][j-1]
#define B(i,j) b[i-1][j-1]
#define C(i,j) c[i-1][j-1]
#define M(i) m[i-1]
int VTUNE(double a[100][100],double b[100][100],double c[100][100],
unsigned long int m[100],
long int N)
{
	long int I,J,i,j;
	for(I=1;I<=N;I++)
	{
		A(I,5)=B(I,5);
LBL_80:
		;
	}
	for(I=1;I<=100;I++)
	{
		if (M(I)) A(I,2) = sqrt(B(I,2)) + C(I,2);
LBL_70:
		;
	}
	return 0;
}
#define A(i,j) a[i-1][j-1]
int VERR(double a[100][100],long int N)
{
	long int I,J,i,j;
	for(I=1;I<=N;I++)
	{
		A(I,I)=I;
LBL_90:
		;
	}
	return 0;
}
