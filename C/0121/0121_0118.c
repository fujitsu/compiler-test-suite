#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int sub3 (long int N, unsigned long int l10[], long int i10[], float r10[], double d10[]);
int sub2 (long int N, unsigned long int l10[], long int i10[], float r10[], double d10[]);
int sub1 (long int N, unsigned long int l10[], long int i10[], float r10[], double d10[]);
int init (long int N, unsigned long int l10[], long int i10[], float r10[], double d10[]);
#define R10(i) r10[i-1]
#define D10(i) d10[i-1]
#define I10(i) i10[i-1]
#define L10(i) l10[i-1]
float r10[500];
double d10[500];
long int i10[500];
unsigned long int l10[500]={
	500*0};
int main (void)
{
	long int N,i;
	short int j;

	for(i=0; i< 500; i++)
	{
		l10[i] = 0;
	}
	N=500;
	init(N,l10,i10,r10,d10);
	sub1(N,l10,i10,r10,d10);
	sub2(N,l10,i10,r10,d10);
	sub3(N,l10,i10,r10,d10);
	printf(" L10 \n");
	j = 0;
	for(i=1; i<=500; i++)
	{
		printf(" %lu ",L10(i));
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
#define R10(i) r10[i-1]
#define D10(i) d10[i-1]
int init (long int N, unsigned long int l10[], long int i10[], float r10[], double d10[])
{
	long int I1,I2,i;

	I1 = 0;
	I2 = 1;
	for(i=1; i<=N/2; i++)
	{
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
#define R10(i) r10[i-1]
#define D10(i) d10[i-1]
int sub1 (long int N, unsigned long int l10[], long int i10[], float r10[], double d10[])
{
	unsigned long int LIS;
	long int j,i;

	j = 0;
	for(i=1; i<=N; i++)
	{
		if (L10(i) == 1)
		{
			j = j + 2;
			LIS = D10(i) != 3.0;
			D10(i) = (double)(R10(j));
			if (LIS == 1)
			{
				I10(j) = (int)(D10(i));
			}
		}
LBL_10:
		;
	}
	return 0;
}
#define L10(i) l10[i-1]
#define I10(i) i10[i-1]
#define R10(i) r10[i-1]
#define D10(i) d10[i-1]
int sub2 (long int N, unsigned long int l10[], long int i10[], float r10[], double d10[])
{
	long int m=0,j,i;
	float S1;

	j  = 0;
	S1 = 0;
	for(i=1; i<=N; i++)
	{
		if (L10(i) == 1)
		{
			j = j + 1;
			D10(i) = D10(i + m) + D10(j);
			I10(i) = R10(j) + D10(i);
			S1 = S1 + R10(j) + D10(i);
		}
LBL_10:
		;
	}
	printf(" S1 = %g\n",S1);
	return 0;
}
#define L10(i) l10[i-1]
#define I10(i) i10[i-1]
#define R10(i) r10[i-1]
#define D10(i) d10[i-1]
int sub3 (long int N, unsigned long int l10[], long int i10[], float r10[], double d10[])
{
	long int m=0,j,k,i;
	long double QS;
	float S1;

	j  = 1;
	k  = 0;
	S1 = 0;
	QS = 0;
	for(i=1; i<=N; i++)
	{
		if (L10(i) == 1)
		{
			k= k + 1;
			D10(j) = D10(i+m) + D10(i);
			I10(j) = R10(i) + D10(i);
			S1 = (S1 > R10(k)) ? S1:R10(k);
			QS = QS + i;
			j = j + 1;
		}
LBL_10:
		;
	}
	printf(" S1 = %g\n",S1);
	return 0;
}
