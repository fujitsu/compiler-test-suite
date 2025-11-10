#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i) c[i-1]
#define D(i) d[i-1]
#define E(i) e[i-1]
#define F(i) f[i-1]
float a[30],b[30],c[30],d[30],e[30],f[30];
int main()
{
	long int i;
	long int N1=1;
	long int L=1;
	long int LL=4;
	long int N,M,I,J,J1,K1,K2,N2,M2,N3,M3,N4,M4,N5,N6,M6;
	for(I=1;I<=30;I++)
	{
		A(I)=1;
		B(I)=A(I)+1.;
		C(I)=B(I)+1.;
		D(I)=C(I)+1.;
		E(I)=D(I)+1.;
		F(I)=E(I)+1.;
	}
	N=1;
	M=-1;
	for(I=1;I<=10;I+=N)
	{
		for(J=1;J>=10;J-=M)
		{
			for(J1=1;J1<=10;J1+=N1)
			{
				for(K1=1;K1<=10;K1++)
				{
					A(K1)=A(K1+N);
					A(K1)=A(K1-M)+A(K1);
				}
				for(K2 =21;K2 <=30;K2 ++)
				{
					A(K2-N1)=A(K2);
				}
			}
		}
	}
	N2=1;
	M2=-1;
	for(I=L;I<=LL;I+=N2)
	{
		for(J=L;J>=LL;J-=M2)
		{
			for(J1=-10;J1<=-1;J1+=N2)
			{
				for(K1=1;K1<=10;K1++)
				{
					B(K1)=B(K1+N2);
					B(K1)=B(K1-M2)+B(K1);
				}
				for(K2 =21;K2 <=30;K2 ++)
				{
					B(K2-N2)=B(K2);
					B(K2+M2)=B(K2)+A(K2);
				}
			}
		}
	}
	N3=1;
	M3=-1;
	for(I=10;I>=1;I-=N3)
	{
		for(J=10;J<=1;J+=M3)
		{
			for(J1=10;J1<=1;J1+=N-3)
			{
				for(K1=1;K1<=10;K1++)
				{
					C(K1)=C(K1+N3);
					C(K1)=C(K1-M3);
				}
				for(K2 =1;K2 <=10;K2 ++)
				{
					C(K2)=C(K2+N3)+C(K2);
				}
			}
		}
	}
	N4=1;
	M4=-1;
	for(I=LL;I>=L;I-=N4)
	{
		for(J=LL;J<=L;J+=M4)
		{
			for(J1=LL;J1>=L;J1-=N)
			{
				for(K1=1;K1<=5;K1++)
				{
					D(K1)=D(K1+N4);
					D(K1)=D(K1-M4);
				}
				for(K2 =11;K2 <=15;K2 ++)
				{
					D(K2)=D(K2+N4)+D(K2);
				}
			}
		}
	}
	N5=1;
	for(I=1;I<=LL;I+=N5+1)
	{
		for(J=1;J<=LL;J+=I)
		{
			for(J1=1;J1<=10;J1+=LL)
			{
				for(K1=1;K1<=10;K1++)
				{
					E(K1)=E(K1+N5);
					E(K1)=E(K1+LL);
				}
				for(K2 =11;K2 <=20;K2 ++)
				{
					E(K2)=E(K2+J)+E(K2);
				}
			}
		}
	}
	N6=1;
	M6=-1;
	for(I=1;I<=10;I+=N6)
	{
		for(J=1;J>=10;J-=M6)
		{
			for(K1=1;K1<=10;K1++)
			{
				F(K1)=F(K1+N6);
			}
			for(K2 =11;K2 <=20;K2 ++)
			{
				F(K2)=F(K2-M6);
			}
		}
		N6=1;
		M6=-1;
	}
	printf(" ###  ## DOP TEST ###\n");
	printf(" A=     B=     C=     D=     E=     F= \n");
	for(i=1;i<=30;i++){
		printf(" %f %f %f %f %f \n",A(i),B(i),C(i),D(i),E(i));
	}
	exit (0);
}
