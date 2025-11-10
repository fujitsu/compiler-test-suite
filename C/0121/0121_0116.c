#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define MASK(i) mask[i-1]
#define IA1(i) ia1[i-1]
#define IB1(i) ib1[i-1]
#define IC1(i) ic1[i-1]
#define LA1(i) la1[i-1]
#define LB1(i) lb1[i-1]
#define LC1(i) lc1[i-1]
#define RA1(i) ra1[i-1]
#define RB1(i) rb1[i-1]
#define RC1(i) rc1[i-1]
#define DA1(i) da1[i-1]
#define DB1(i) db1[i-1]
#define DC1(i) dc1[i-1]
#define CA1(i) ca1[i-1]
#define CB1(i) cb1[i-1]
#define CC1(i) cc1[i-1]
#define CDA1(i) cda1[i-1]
#define CDB1(i) cdb1[i-1]
#define CDC1(i) cdc1[i-1]
unsigned long int mask[50]={
	50*1};
long int ia1[50],ib1[50],ic1[50];
unsigned long int la1[50],lb1[50],lc1[50];
float ra1[50],rb1[50],rc1[50];
double da1[50],db1[50],dc1[50];
COMPLEX8 ca1[50],cb1[50],cc1[50];
COMPLEX16 cda1[50],cdb1[50],cdc1[50];
int main()
{
	long int N1  = 50;
	long int N2  = 10;
	long int N3  = 10;
	long int I1  = 0;
	long int I2  = 1;
	long int I3  = 1;
	long int I4  = 0;
	long int I5  = 0;
	long int I6  = 0;
	long int I7  = 0;
	long int I8  = 0;
	long int I9  = 0;
	long int I10 = 0;
	long int I11 = 0;
	long int I12 = 0;
	long int I13 = 0;
	long int I14 = 0;
	long int I15 = 0;
	long int I16 = 0;
	long int I17 = 0;
	long int I18 = 0;
	long int IS1,IS2;
	unsigned long int LS1,LS2;
	float RS1,RS2;
	double DS1,DS2;
	COMPLEX8 CS1,CS2;
	COMPLEX16 CDS1,CDS2;
	long int i,j,k,l;

	for(i=0; i< 50; i++)
	{
		mask[i]=1;
	}
	for(i=1; i<=N1; i++)
	{
		if (MASK(i) == 1)
		{
			I1              = I1+1;
			IA1(I1)         = i;
			IB1(I2)         = -i;
			I2              = I2+1;
			IC1(I3)         = i+i;
			I3              = I3+1;
			I4              = I4+1;
			RA1(I4)         = 0;
			I5              = I5+1;
			RB1(I5)         = i;
			I6              = I6+1;
			RC1(I6)         = -i;
			I7              = I7+1;
			LA1(I7)         = 1;
			I8              = I8+1;
			LB1(I8)         = 0==fmod(i,2);
			I9              = I9+1;
			LC1(I9)         = 1^(0==fmod(i,2));
			I10             = I10+1;
			DA1(I10)        = 0;
			I11             = I11+1;
			DB1(I11)        = i;
			I12             = I12+1;
			DC1(I12)        = -i;
			I13             = I13+1;
			CA1(I13).real   = 0;
			CA1(I13).imag   = 0;
			I14             = I14+1;
			CB1(I14).real   = i;
			CB1(I14).imag   = i;
			I15             = I15+1;
			CC1(I15).real   = -i;
			CC1(I15).imag   = -i;
			I16             = I16+1;
			CDA1(I16).dreal = 0;
			CDA1(I16).dimag = 0;
			I17             = I17+1;
			CDB1(I17).dreal = i;
			CDB1(I17).dimag = i;
			I18             = I18+1;
			CDC1(I18).dreal = -i;
			CDC1(I18).dimag = -i;
		}
LBL_1:
		;
	}
	RS1 = 0;
	RS2 = 0;
	IS2 = 0;
	DS1 = 0;
	DS2 = 0;
	CDS1.dreal=0;
	CDS1.dimag=0;
	j   = 0;
	k   = 1;
	l   = 1;
	for(i=1; i<=N2; i++)
	{
		if (LC1(i) == 1)
		{
			LS1 = RA1(i) > RB1(i);
			DS2 = (DS2 > fabs(DC1(k))) ? DS2:fabs(DC1(k));
			CA1(i).real = CB1(k).real - CC1(k).real;
			CA1(i).imag = CB1(k).imag - CC1(k).imag;
			k = k + 2;
			if ((LC1(i) || LS1) == 1)
			{
				RS1 = RS1 + RB1(i);
				j = j + 1;
				DA1(j) = DB1(i) * DC1(i);
				DS1 = DS1 + DB1(j);
				if (RS2 >  RA1(i))
				{
					RS2 = RA1(i);
					IS2 = i;
				}
				l = l + 1;
				LS2 = DB1(l) != DC1(i);
				LA1(i) = LS2;
			}
		}
LBL_10:
		;
	}
	printf(" DS2 = %g\n",DS2);
	printf(" CA1 \n");
	for(i=1; i<=50; i++)
	{
		printf(" (%g,%g) ",CA1(i).real,CA1(i).imag);
		if(i == 25)
		{
			printf("\n");
		}
	}
	printf("\n");
	printf(" K = %ld\n",k);
	printf(" RS1 = %g\n",RS1);
	printf(" J = %ld\n",j);
	printf(" DA1 \n");
	for(i=1; i<=50; i++)
	{
		printf(" %g ",DA1(i));
		if(i == 25)
		{
			printf("\n");
		}
	}
	printf("\n");
	printf(" DS1 = %g\n",DS1);
	printf(" RS2 = %g\n",RS2);
	printf(" IS2 = %ld\n",IS2);
	printf(" L = %ld\n",l);
	printf(" LA1 \n");
	for(i=1; i<=50; i++)
	{
		printf(" %lu ",LA1(i));
		if(i == 25)
		{
			printf("\n");
		}
	}
	printf("\n");
	exit (0);
}
