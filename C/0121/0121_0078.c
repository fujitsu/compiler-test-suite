#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define A(i,j) a[i-1][j-1]
#define B(i,j) b[i-1][j-1]
#define C(i,j) c[i-1][j-1]
#define D(i,j) d[i-1][j-1]
#define L1(i) l1[i-1]
#define L2(i) l2[i-1]
#define L3(i) l3[i-1]
double a[30][30],b[30][30],c[30][30],d[30][30];
long int l1[30],l2[30],l3[30];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=3;
	long int IT4=4;
	long int IT5=10;
	long int i,j,N1,N2,N3,N4,LL1,LL2;
	for(j=1;j<=30;j++){
		for(i=1;i<=30;i++){
			A(i,j)=1.0;
		}
	}
	for(j=1;j<=30;j++){
		for(i=1;i<=30;i++){
			B(i,j)=2.0;
		}
	}
	for(j=1;j<=30;j++){
		for(i=1;i<=30;i++){
			C(i,j)=3.0;
		}
	}
	for(j=1;j<=30;j++){
		for(i=1;i<=30;i++){
			D(i,j)=4.0;
		}
	}
	for(i=1;i<=30;i++)
	{
		L1(i)=i;
		L2(i)=31-i;
		L3(i)=i-IT4;
		if ( L3(i) <  1 ) L3(i)=1;
LBL_10:
		;
	}
	for(j=1;j<=L1(10);j++)
	{
		N1=j+IT1+IT2;
		N2=j+IT5+1;
		for(i=2;i<=N2;i++)
		{
			N3=i+IT1+1;
			N4=i+IT2-1;
			A(N1,N3)=B(N1,N4)+C(N3,i+IT3);
			B(j+IT3+IT2,i-1+IT3)=D(N1,N2)*2.0;
			C(N3,IT3-1+i)=D(N1,N3)+2.0;
		}
	}
	for(j=1;j<=L1(10);j++)
	{
		LL1=L2(j)-2;
		LL2=L3(j)+1;
		N1=j+IT1+IT2;
		N2=j+IT5+1;
		for(i=2;i<=N2;i++)
		{
			N3=i+IT1+1;
			N4=i+IT2-1;
			A(N2,N3)=B(N2,IT3+i-1)+C(N4,i+IT3);
			B(j+IT3+IT2,i-1+IT3)=D(N1,N2)*2.0;
			C(N3,IT3-1+i)=D(N1,N3)+2.0;
			L1(LL1)=L1(LL1)+LL2*i;
			D(IT2-1+j,N2-IT5)=2.0;
		}
	}
	printf(" ( A ) \n");
	for(j=1;j<=30;j++){
		printf("\n");
		for(i=1;i<=30;i++){
			printf(" %g  ",A(i,j));
		}
	}
	printf("\n");
	printf(" ( B ) \n");
	for(j=1;j<=30;j++){
		printf("\n");
		for(i=1;i<=30;i++){
			printf(" %g  ",B(i,j));
		}
	}
	printf("\n");
	printf(" ( C ) \n");
	for(j=1;j<=30;j++){
		printf("\n");
		for(i=1;i<=30;i++){
			printf(" %g  ",C(i,j));
		}
	}
	printf("\n");
	exit (0);
}
