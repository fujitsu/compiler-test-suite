#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB710(long int *II);
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i) c[i-1]
#define D(i) d[i-1]
#define E(i) e[i-1]
#define COM(i) com[i-1]
float a[30],b[30],c[30],d[30],e[30],com[30];
long int III;
int main()
{
	long int II;
	long int NN=1;
	long int MM=10;
	long int LL=1;
	long int N,M,I,J,J1,K1,K2,J2,I1,I2,IIII,i;
	for(I=1;I<=30;I++)
	{
		A(I)=I;
		B(I)=A(I)+1.;
		C(I)=B(I)+1.;
		D(I)=C(I)+1.;
		E(I)=D(I)+1.;
	}
	N=1;
	M=-1;
	for(I=1;I<=10;I+=1)
	{
		for(J=1+1;J<=10;J+=1)
		{
			for(J1=1*2;J1<=10;J1+=1)
			{
				for(K1=N;K1<=10;K1+=1)
				{
					A(K1)=A(K1+I);
					A(K1)=A(K1+J);
					A(K1)=A(K1+J1);
					A(K1)=A(K1+K1);
				}
				for(K2 =-M;K2 <=10;K2 +=1)
				{
					A(K2)=A(K2+K2);
				}
			}
		}
	}
	N=1;
	M=-1;
	for(I=-10;I<=-1;I+=1)
	{
		for(J=-10;J<=-5+2;J+=1)
		{
			for(J1=-10;J1<=-N;J1+=1)
			{
				for(J2=-10;J2<=M;J2+=1)
				{
					for(K1 =11;K1 <=20;K1 ++)
					{
						B(K1)=B(K1-I);
						B(K1)=B(K1-J);
						B(K1)=B(K1+N);
					}
					for(K2 =21;K2 <=25;K2 ++)
					{
						B(K2)=B(K2-M);
					}
				}
			}
		}
	}
	N=1;
	M=-1;
	for(I=10;I>=1;I-=1)
	{
		for(J=10;J>=1+1;J-=1)
		{
			for(J1=10;J1>=N;J1-=1)
			{
				for(J2=10;J2>=-M;J2-=1)
				{
					for(K1=1;K1<=10;K1++)
					{
						C(K1)=C(K1+I);
						C(K1)=C(K1+J);
					}
					for(K2 =11;K2 <=20;K2 ++)
					{
						C(K2)=C(K2+J1);
						C(K2)=C(K2+J2);
					}
				}
			}
		}
	}
	for(I=-1;I>=-10;I-=1)
	{
		for(J=-1-1;J>=-10;J-=1)
		{
			for(J1=-N;J1>=-10;J1-=1)
			{
				for(J2=M;J2>=-10;J2-=1)
				{
					for(K1=11;K1<=20;K1++)
					{
						D(K1)=D(K1-I);
						D(K1)=D(K1-J);
					}
					for(K2 =21;K2 <=30;K2 ++)
					{
						D(K2)=D(K2+J1);
						D(K2)=D(K2+J2);
					}
				}
			}
		}
	}
	NN=1;
	LL=1;
	for(I=NN;I<=10;I+=1)
	{
		for(J=1;J<=MM;J+=1)
		{
			for(J1=1;J1<=10;J1+=LL)
			{
				for(J2=NN;J2<=MM;J2+=LL)
				{
					for(K1=1;K1<=10;K1++)
					{
						E(K1)=E(K1+I);
						E(K1)=E(K1+J);
						E(K1)=E(K1+J1);
					}
					for(K2 =11;K2 <=20;K2 ++)
					{
						E(K2)=E(K2+J2);
					}
				}
			}
		}
	}
	for(III=1;III<=10;III++)
	{
		for(II=1;II<=10;II++)
		{
			for(I1=1;I1<=10;I1++)
			{
				SUB710(&IIII);
				COM(I1)=COM(I1+III);
			}
			for(I2=1;I2<=10;I2++)
			{
				COM(I2)=COM(I2+II);
			}
			II+=III;
		}
	}
	printf(" ###  ## DOP TEST ###\n");
	for(i=1;i<=30;i++)
	{
		printf(" %f %f %f %f %f \n",A(i),B(i),C(i),D(i),E(i));
	}
	exit (0);
}
int SUB710(II)
long int *II;
{
	*II=1;
	return 0;
}
