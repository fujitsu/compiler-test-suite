#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int sub3(long int N, unsigned long int l10[], long int i10[], float r10[], float r11[], double d10[], long int LIST[]);
int sub2(long int N, unsigned long int l10[], long int i10[], float r10[], float r11[], double d10[], long int LIST[]);
int sub1(long int N, unsigned long int l10[], long int i10[], float r10[], float r11[], double d10[], long int LIST[]);
int init(long int N, unsigned long int l10[], long int i10[], float r10[], float r11[], double d10[], long int LIST[]);
#define R10(i) r10[i-1]
#define R11(i) r11[i-1]
#define D10(i) d10[i-1]
#define I10(i) i10[i-1]
#define LIST(i) list[i-1]
#define L10(i) l10[i-1]
float r10[500],r11[500];
double d10[500];
long int i10[500],list[500];
unsigned long int l10[500];
int main (void)
{
	long int N,i;
	short int j;

	N = 500;
	init(N,l10,i10,r10,r11,d10,list);
	sub1(N,l10,i10,r10,r11,d10,list);
	sub2(N,l10,i10,r10,r11,d10,list);
	sub3(N,l10,i10,r10,r11,d10,list);
	printf(" L10 \n");
	j = 0;
	for(i=1; i<=500; i++)
	{
		printf(" %lu ",L10(i));
		j++;
		if(j == 25)
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
		if(j == 10)
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
		if(j == 13)
		{
			printf("\n");
			j = 0;
		}
	}
	printf("\n");
	printf(" R11 \n");
	j = 0;
	for(i=150; i<=250; i++)
	{
		printf(" %g ",R10(i));
		j++;
		if(j == 14)
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
		if(j == 15)
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
#define R11(i) r11[i-1]
#define D10(i) d10[i-1]
int init(N,l10,i10,r10,r11,d10,LIST)

unsigned long int l10[];
long int i10[],LIST[],N;
float r10[],r11[];
double d10[];
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
			R11(I2) = i;
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
#define R11(i) r11[i-1]
#define D10(i) d10[i-1]
int sub1(N,l10,i10,r10,r11,d10,LIST)

unsigned long int l10[];
long int i10[],LIST[],N;
float r10[],r11[];
double d10[];
{
	unsigned long int LRC=1;
	long int ICON=1,M=250,J,K,L,i;
	float S1;

	J  = 0;
	L  = 1;
	S1 = 0;
	for(i=1; i<=N; i++)
	{
		if (i >  M)
		{
			D10(L) = R10(i);
			L = L + 1;
			if (LRC == 1)
			{
				J = J + ICON;
				I10(i) = R10(J) * i;
			}
			else
			{
				K = K + ICON;
				R11(i) = (float)(K);
				S1 = S1 + R11(i);
			}
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
#define R11(i) r11[i-1]
#define D10(i) d10[i-1]
int sub2(N,l10,i10,r10,r11,d10,LIST)

unsigned long int l10[];
long int i10[],LIST[],N;
float r10[],r11[];
double d10[];
{
	unsigned long int LRC=1,LMT0,LMT1,LMT;
	long int ICON=1,ICON1=-1,IJ,J,K,L,i;
	float S1;

	J  = 0;
	L  = 1;
	K  = 0;
	S1 = 0;
	for(i=1; i<=N; i++)
	{
		if (LRC == 1)
		{
			D10(L) = R10(i) + i;
			L = L + 1;
			LMT0 = 1^L10(i);
			LMT1 = R10(i) > 1.0;
			LMT  = LMT1 && LMT0 || L10(i);
			if (LMT == 1)
			{
				J = J + ICON;
				I10(i) = R10(J)-i;
			}
			else
			{
				K = K + ICON;
				R11(i) = (float)(K);
				S1 = S1 + R11(i);
			}
		}
		else
		{
			IJ = IJ - ICON1;
			L10(IJ) = R10(i) > 3;
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
#define R11(i) r11[i-1]
#define D10(i) d10[i-1]
int sub3(N,l10,i10,r10,r11,d10,LIST)

unsigned long int l10[];
long int i10[],LIST[],N;
float r10[],r11[];
double d10[];
{
	unsigned long int LRC=1;
	long int ICON=1,J,K,L,i;
	float S1;

	J  = 0;
	L  = 1;
	S1 = 0;
	K  = 0;
	for(i=1; i<=N; i++)
	{
		if (L10(i) == 1)
		{
			D10(L) = R10(i);
LBL_11:
			;
		}
LBL_12:
		;
		L = L + 1;
		if (LRC == 1)
		{
LBL_13:
			;
			J = J + ICON;
LBL_14:
			;
			I10(i) = R10(J) * i;
		}
		else
		{
LBL_15:
			;
			K = K + ICON;
LBL_16:
			;
			R11(i) = (float)(K);
LBL_17:
			;
			S1 = S1 * R11(i);
		}
LBL_10:
		;
	}
	printf(" S1 = %g\n",S1);
	printf(" K  = %ld\n",K);
	printf(" J  = %ld\n",J);
	printf(" L  = %ld\n",L);
	return 0;
}
