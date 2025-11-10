#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i) c[i-1]
#define D(i) d[i-1]
float a[30],b[30],c[30],d[30];
int main()
{
	long int i;
	long int L1=10;
	long int L2=10;
	long int L3=-10;
	long int L4=-10;
	long int L5=10;
	long int L6=-10;
	long int L7=-10;
	long int L8=10;
	long int L9=-10;
	long int L10=10;
	long int L11=-10;
	long int L12=10;
	long int N,I,J,J1,K1,K2,J2;
	for(i=0;i< 10;i++){
		a[i]=1.;
		a[i+10]=2.;
		a[i+20]=3.;
	}
	for(i=0;i< 10;i++){
		b[i]=4.;
		b[i+10]=5.;
		b[i+20]=6.;
	}
	for(i=0;i< 10;i++){
		c[i]=7.;
		c[i+10]=8.;
		c[i+20]=9.;
	}
	for(i=0;i< 10;i++){
		d[i]=10.;
		d[i+10]=11.;
		d[i+20]=12.;
	}
	N=1;
	for(I=1;I<=L1;I+=1)
	{
		for(J=N;J<=L2;J+=1)
		{
			for(J1=1;J1<=-L3;J1+=1)
			{
				for(K1=1;K1<=10;K1++)
				{
					A(K1)=A(K1+L1);
					A(K1)=A(K1+L2);
					A(K1)=A(K1-L3);
				}
				for(K2=11;K2<=20;K2++)
				{
					A(K2)=A(K2+L1);
				}
			}
		}
	}
	N=1;
	for(I=L4;I<=-1;I+=1)
	{
		for(J=-L5;J<=-1;J+=1)
		{
			for(J1=L6;J1>=-N;J1-=1)
			{
				for(K1 =1;K1 <=10;K1 ++)
				{
					B(K1)=B(K1-L4);
					B(K1)=B(K1+L5);
					B(K1)=B(K1-L6);
				}
				for(K2=1;K2<=10;K2++)
				{
					B(K2)=B(K2-I);
				}
			}
		}
	}
	for(I=-1;I>=L7;I-=1)
	{
		for(J=-1;J>=-L8;J-=1)
		{
			for(J2=-N;J2>=L9;J2-=1)
			{
				for(K1 =1;K1 <=10;K1 ++)
				{
					C(K1)=C(K1-L7);
					C(K1)=C(K1+L8);
					C(K1)=C(K1-L9);
				}
				for(K2=1;K2<=10;K2++)
				{
					C(K2)=A(K2-I);
				}
			}
		}
	}
	for(I=L10;I>=1;I-=1)
	{
		for(J=-L11;J>=1;J-=1)
		{
			for(J1=L12;J1>=N;J1-=1)
			{
				for(K1=1;K1<=10;K1++)
				{
					D(K1)=D(K1+L10);
					D(K1)=D(K1-L11);
					D(K1)=D(K1+L12);
				}
				for(K2=1;K2<=10;K2++)
				{
					D(K2)=D(K2+N);
				}
			}
		}
	}
	printf(" ###  ## DOP TEST ###\n");
	printf(" A=       B=       C=       D=   \n");
	for(i=1;i<=30;i++){
		printf(" %f %f %f %f \n",A(i),B(i),C(i),D(i));
	}
	exit (0);
}
