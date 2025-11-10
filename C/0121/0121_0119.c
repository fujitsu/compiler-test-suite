#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int sub3(long int N, unsigned long int l10[], long int i10[], float r10[], double d10[], long int LIST[]);
int sub2(long int N, unsigned long int l10[], long int i10[], float r10[], double d10[], long int LIST[]);
int sub1(long int N, unsigned long int l10[], long int i10[], float r10[], double d10[], long int LIST[]);
int init(long int N, unsigned long int L10[], long int I10[], float R10[], double D10[], long int LIST[]);
#define R10(i) r10[i-1]
#define D10(i) d10[i-1]
#define I10(i) i10[i-1]
#define LIST(i) list[i-1]
#define L10(i) l10[i-1]
float r10[500];
double d10[500];
long int i10[500],list[500];
unsigned long int l10[500];
int main (void)
{
	long int N,i;
	short int j;

	for(i=0; i< 500; i++)
	{
		l10[i] = 0;
	}
	N = 500;
	init(N,l10,i10,r10,d10,list);
	sub1(N,l10,i10,r10,d10,list);
	sub2(N,l10,i10,r10,d10,list);
	sub3(N,l10,i10,r10,d10,list);
	printf(" L10 \n");
	j = 0;
	for(i=1; i<=500; i++)
	{
		printf(" %ld ",L10(i));
		j++;
		if(j == 20)
		{
			printf("\n");
			j = 0;
		}
	}
	printf("\n");
	printf(" I10 \n");
	j = 0;
	for(i=100; i<=200; i++)
	{
		printf(" %ld ",I10(i));
		j++;
		if(j==20 && i!=200)
		{
			printf("\n");
			j = 0;
		}
	}
	printf("\n");
	printf(" R10 \n");
	j = 0;
	for(i=300; i<=400; i++)
	{
		printf(" %g ",R10(i));
		j++;
		if(j==20 && i!=400)
		{
			printf("\n");
			j = 0;
		}
	}
	printf("\n");
	printf(" D10 \n");
	j = 0;
	for(i=400; i<=500; i++)
	{
		printf(" %g ",D10(i));
		j++;
		if(j==20 && i!=500)
		{
			printf("\n");
			j = 0;
		}
	}
	printf("\n");
	exit (0);
}
#define L10(i) l10[i-1]
#define I10(i) i10[i-1]
#define LIST(i) list[i-1]
#define R10(i) r10[i-1]
#define D10(i) d10[i-1]
int init(N,L10,I10,R10,D10,LIST)

unsigned long int L10[];
long int I10[],LIST[];
float R10[];
double D10[];
long int N;
{
	long int I1,I2,i;

	I1 = 0;
	I2 = 1;
	for(i=1; i<=N/2; i++)
	{
		LIST(i) = i;
		LIST(i+N/2) = i+N/2;
		L10(i) = 1;
		if (L10(i) == 1)
		{
			I1 = I1 + 2;
			I10(I1) = i;
			R10(I1) = (float)(i);
			D10(I1) = (double)(i);
			I10(I2) = -i;
			R10(I2) = (float)(-i);
			D10(I2) = (double)(-i);
			L10(i)  = 0 == fmod(i,2);
			I2 = I2 + 2;
		}
LBL_10:
		;
	}
	return 0;
}
#define L10(i) l10[i-1]
#define I10(i) i10[i-1]
#define LIST(i) list[i-1]
#define R10(i) r10[i-1]
#define D10(i) d10[i-1]
int sub1(N,l10,i10,r10,d10,LIST)

unsigned long int l10[];
long int i10[],LIST[];
float r10[];
double d10[];
long int N;
{
	long int j,l,i;

	j = 0;
	l = 1;
	for(i=1; i<=N; i++)
	{
		if (L10(i) == 1)
		{
			D10(l) = D10(i);
			R10(l) = R10(i) + (float)(I10(i));
			l = l + 1;
			j = j + 1;
			I10(j) = I10(LIST(i));
		}
LBL_10:
		;
	}
	return 0;
}
#define L10(i) l10[i-1]
#define I10(i) i10[i-1]
#define LIST(i) list[i-1]
#define R10(i) r10[i-1]
#define D10(i) d10[i-1]
int sub2(N,l10,i10,r10,d10,LIST)

unsigned long int l10[];
long int i10[],LIST[];
float r10[];
double d10[];
long int N;
{
	long int m=100,j,i;
	float S1;

	j  = 50;
	S1 = 0;
	for(i=1; i<=N-450; i++)
	{
		if (L10(i) == 1)
		{
			j = j + 1;
			D10(j) = D10(i+m) + D10(i+100);
			I10(j) = R10(i) + D10(i);
			S1 = S1 + R10(j) + I10(j);
		}
LBL_10:
		;
	}
	printf(" S1 = %g\n",S1);
	return 0;
}
#define L10(i) l10[i-1]
#define I10(i) i10[i-1]
#define LIST(i) list[i-1]
#define R10(i) r10[i-1]
#define D10(i) d10[i-1]
int sub3(N,l10,i10,r10,d10,LIST)

unsigned long int l10[];
long int i10[],LIST[];
float r10[];
double d10[];
long int N;
{
	long int i,j,k;
	float S1;
	long double QS;

	j  = 1;
	k  = 0;
	S1 = 0;
	QS = 0;
	for(i=1; i<=N; i++)
	{
		if (L10(i) == 1)
		{
			k = k + 1;
			D10(j) = D10(LIST(i)) + D10(i);
			I10(j) = R10(k) + D10(i);
			S1 = (S1 > R10(k)) ? S1:R10(k);
			QS = QS + i;
			j = j + 1;
		}
LBL_10:
		;
	}
	printf(" S1 = %g\n",S1);
	printf(" J = %ld\n",j);
	printf(" K = %ld\n",k);
	return 0;
}
