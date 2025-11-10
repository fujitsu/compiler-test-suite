#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define D1(i) d1[i-1]
#define D2(i) d2[i-1]
#define D3(i) d3[i-1]
#define E1(i) e1[i-1]
#define E2(i) e2[i-1]
#define E3(i) e3[i-1]
#define N1(i) n1[i-1]
#define L1(i) l1[i-1]
double d1[11],d2[11],d3[11];
float e1[11],e2[11],e3[11];
long int n1[11];
unsigned long int l1[11];
int main()
{
	float ES1=-1;
	long int J=2;
	long int i;
	for(i=0;i< 11;i++){
		d1[i] = d3[i] = e2[i] = 3.5;
		d2[i] = e1[i] = e3[i] = -1;
	}
	for(i=0;i< 11;i++){
		n1[i]=0;
	}
	for(i=0;i< 11;i++){
		l1[i]=0;
	}
	for(i=1;i<=10;i++)
	{
		if ((i%2) == 0)goto LBL_110         ;
		D1(i)=D2(i)*E1(i)+1.5;
		D2(i+1)=E2(i)/E1(i);
		ES1=D2(i+1)+ES1+D1(i);
		if ((i%2) != 1)goto LBL_110         ;
		J=J+1;
		N1(i)=J;
		D3(J)=D1(i)/2;
		E3(i)=i-3;
LBL_110:
		;
	}
	for(i=0;i<11;i++){
		printf(" D1(%ld) = %g  D2(%ld) = %g  D3(%ld) = %g  N1(%ld) = %ld\n"
		    ,i,d1[i],i,d2[i],i,d3[i],i,n1[i]);
	}
	printf(" ES1 = %g  J = %ld\n",ES1,J);
	for(i=0;i<=10;i++){
		printf(" E3(%ld) = %g\n",i,e3[i]);
	}
	for(i=1;i<=10;i++)
	{
		if ((i%2) == 0)goto LBL_210         ;
		ES1=D2(i)+ES1+D1(i);
		D1(i)=D2(i)*E1(i)+1.5;
		D2(i+1)=E2(i)/E1(i);
		if ((i%2) != 1)goto LBL_210         ;
		J=J-1;
		L1(i)=N1(J)>3;
		D3(J)=D1(i)/2;
		E3(i)=i-3;
LBL_210:
		;
	}
	for(i=0;i<=10;i++){
		printf(" D1(%ld) = %g  D2(%ld) = %g  D3(%ld) = %g  N1(%ld) = %ld\n",
		    i,d1[i],i,d2[i],i,d3[i],i,n1[i]);
	}
	printf(" ES1 = %g  J = %ld\n",ES1,J);
	for(i=0;i<=10;i++){
		printf("  E3(%ld) = %g  L1(%ld) = %ld\n",i,e3[i],i,l1[i]);
	}
	exit (0);
}
