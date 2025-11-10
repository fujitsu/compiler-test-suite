#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int sub3(long int N, long int M, unsigned long int l10[10][10], long int i10[10][10], float r10[10][10], float r11[10][10], double d10[10][10], long int LIST[]);
int sub2(long int N, long int M, unsigned long int l10[10][10], long int i10[10][10], float r10[10][10], float r11[10][10], double d10[10][10], long int LIST[]);
int sub1(long int N, long int M, unsigned long int l10[10][10], long int i10[10][10], float r10[10][10], float r11[10][10], double d10[10][10], long int LIST[]);
int init(long int N, long int M, unsigned long int l10[10][10], long int i10[10][10], float r10[10][10], float r11[10][10], double d10[10][10], long int LIST[]);
#define R10(i,j) r10[i-1][j-1]
#define R11(i,j) r11[i-1][j-1]
#define D10(i,j) d10[i-1][j-1]
#define I10(i,j) i10[i-1][j-1]
#define LIST(i) list[i-1]
#define L10(i,j) l10[i-1][j-1]
float r10[10][10],r11[10][10];
double d10[10][10];
long int i10[10][10],list[10];
unsigned long int l10[10][10];
int main (void)
{
	long int N,M,i,j;

	N = 10;
	M = 10;
	init(N,M,l10,i10,r10,r11,d10,list);
	sub1(N,M,l10,i10,r10,r11,d10,list);
	sub2(N,M,l10,i10,r10,r11,d10,list);
	sub3(N,M,l10,i10,r10,r11,d10,list);
	printf(" L10 \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %ld ",L10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" I10 \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %ld ",I10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" R10 \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g ",R10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" R11 \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g ",R11(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" D10 \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g ",D10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	exit (0);
}
#define L10(i,j) l10[i-1][j-1]
#define I10(i,j) i10[i-1][j-1]
#define LIST(i) list[i-1]
#define R10(i,j) r10[i-1][j-1]
#define R11(i,j) r11[i-1][j-1]
#define D10(i,j) d10[i-1][j-1]
int init(N,M,l10,i10,r10,r11,d10,LIST)

unsigned long int l10[10][10];
long int i10[10][10],LIST[];
float r10[10][10],r11[10][10];
double d10[10][10];
long int N,M;
{
	long int i,j;

	for(i=1; i<=N; i++)
	{
		for(j=1; j<=N; j++)
		{
			LIST(i)  = i;
			L10(i,j) = 0 == (fmod(i,2));
			I10(i,j) = i + j;
			R10(i,j) = i * j;
			D10(i,j) = 2 * i + 2 * j;
			R11(i,j) = 3 * i * j;
LBL_10:
			;
		}
	}
	return 0;
}
#define L10(i,j) l10[i-1][j-1]
#define I10(i,j) i10[i-1][j-1]
#define LIST(i) list[i-1]
#define R10(i,j) r10[i-1][j-1]
#define R11(i,j) r11[i-1][j-1]
#define D10(i,j) d10[i-1][j-1]
int sub1(N,M,l10,i10,r10,r11,d10,LIST)

unsigned long int l10[10][10];
long int i10[10][10],LIST[];
float r10[10][10],r11[10][10];
double d10[10][10];
long int N,M;
{
	unsigned long int LRC=1;
	long int ICON=1,k,l,IJ,N1,i,j;
	float S1;

	k  = 0;
	l  = 1;
	IJ = 0;
	S1 = 0;
	N1 = N / 2;
	for(i=1; i<=N1; i++)
	{
		for(j=1; j<=N1; j++)
		{
			if (L10(i,j) == 1)
			{
				I10(i,i) = R11(l,j);
				l = l + 1;
				if (LRC == 1)
				{
					k = k + ICON;
					R10(k,j) = R11(i,j);
				}
				else
				{
					IJ = IJ + 1;
					S1 = S1 + R11(i,j);
					D10(i,IJ) = i + j;
				}
			}
		}
LBL_10:
		;
	}
	printf(" S1 = %g ",S1);
	return 0;
}
#define L10(i,j) l10[i-1][j-1]
#define I10(i,j) i10[i-1][j-1]
#define LIST(i) list[i-1]
#define R10(i,j) r10[i-1][j-1]
#define R11(i,j) r11[i-1][j-1]
#define D10(i,j) d10[i-1][j-1]
int sub2(N,M,l10,i10,r10,r11,d10,LIST)

unsigned long int l10[10][10];
long int i10[10][10],LIST[];
float r10[10][10],r11[10][10];
double d10[10][10];
long int N,M;
{
	unsigned long int LRC=1,LMT;
	long int ICON=1,IJ,N1,k,l,i,j;

	k  = 0;
	l  = 1;
	IJ = 0;
	N1 = N / 3;
	for(i=1; i<=N1; i++)
	{
		for(j=1; j<=N1; j++)
		{
			if (LRC == 1)
			{
				if (l <= 10)
				{
					I10(i,j) = R11(l,j);
					l = l + 1;
					LMT = I10(i,j) > 3;
					if ((LMT &&  k) <  10)
					{
						k = k + ICON;
						R10(k,j) = R11(i,j);
					}
					else
					{
						IJ = IJ + 1;
						D10(i,IJ) = i + j;
					}
				}
			}
		}
LBL_10:
		;
	}
	return 0;
}
#define L10(i,j) l10[i-1][j-1]
#define I10(i,j) i10[i-1][j-1]
#define LIST(i) list[i-1]
#define R10(i,j) r10[i-1][j-1]
#define R11(i,j) r11[i-1][j-1]
#define D10(i,j) d10[i-1][j-1]
int sub3(N,M,l10,i10,r10,r11,d10,LIST)

unsigned long int l10[10][10];
long int i10[10][10],LIST[];
float r10[10][10],r11[10][10];
double d10[10][10];
long int N,M;
{
	long int IJ,N1,I10S,k,l,i,j;

	k  = 0;
	l  = 1;
	IJ = 0;
	N1 = N / 3;
	for(i=1; i<=N1; i++)
	{
		I10S = I10(i,1) + LIST(i);
		for(j=1; j<=N1; j++)
		{
			R10(i,j) = R11(i,j) + I10S;
			if (L10(i,j) == 1)
			{
				k = k + 1;
				D10(k,j) = R10(i,j) * i;
			}
LBL_11:
			;
		}
		if (i > 5)
		{
			R11(i,l) = i;
			l = l + 1;
		}
LBL_10:
		;
	}
	return 0;
}
