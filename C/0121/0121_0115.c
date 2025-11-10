#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
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
long int ia1[50],ib1[50],ic1[50];
unsigned long int la1[50],lb1[50],lc1[50];
float ra1[50],rb1[50],rc1[50];
double da1[50],db1[50],dc1[50];
COMPLEX8 ca1[50],cb1[50],cc1[50];
COMPLEX16 cda1[50],cdb1[50],cdc1[50];
int main()
{
	long int N1=50;
	long int N2=10;
	long int N3=10;
	long int IS1;
	unsigned long int LS1;
	float RS1;
	double DS1;
	COMPLEX8 CS1;
	COMPLEX16 CDS1;
	long int i,j,k,l;

	for(i=1; i<=N1; i++)
	{
		IA1(i)=0;
		IB1(i)=i;
		IC1(i)=-i;
		RA1(i)=0;
		RB1(i)=i;
		RC1(i)=-i;
		LA1(i)=0;
		LB1(i)=0==fmod(i,2);
		LC1(i)=1^LB1(i);
		DA1(i)=0;
		DB1(i)=i;
		DC1(i)=-i;
		CA1(i).real=0;
		CA1(i).imag=0;
		CB1(i).real=i;
		CB1(i).imag=i;
		CC1(i).real=-i;
		CC1(i).imag=-i;
		CDA1(i).dreal=0;
		CDA1(i).dimag=0;
		CDB1(i).dreal=i;
		CDB1(i).dimag=i;
		CDC1(i).dreal=-i;
		CDC1(i).dimag=-i;
LBL_1:
		;
	}
	RS1=0;
	j=0;
	DS1=0;
	for(i=1; i<=N2; i++)
	{
		if (LB1(i) == 1)
		{
			RS1=RS1+RB1(i);
			j=j+1;
			DA1(j)=DB1(i)*DC1(i);
			DS1=DS1+DB1(j);
		}
LBL_10:
		;
	}
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
	k=1;
	CS1.real=0;
	CS1.imag=0;
	for(i=1; i<=N2; i++)
	{
		if (LB1(2) == 1)
		{
			CS1.real=CS1.real+CB1(i).real;
			CS1.imag=CS1.imag+CB1(i).imag;
			DA1(k)=DB1(i)*DC1(i);
			k=k+1;
			DS1=DS1+DB1(k);
			IC1(3)=IC1(3)+IA1(k);
		}
LBL_20:
		;
	}
	printf(" CS1 = (%g,%g) ",CS1.real,CS1.imag);
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
	printf(" K = %ld\n",k);
	printf(" DS1 = %g\n",DS1);
	printf(" IC1 \n");
	for(i=1; i<=50; i++)
	{
		printf(" %ld ",IC1(i));
		if(i == 25)
		{
			printf("\n");
		}
	}
	printf("\n");
	l=1;
	for(i=1; i<=N2; i++)
	{
		if (i >  6)
		{
			CS1.real=CS1.real+CB1(i).real;
			CS1.imag=CS1.imag+CB1(i).imag;
			DA1(l)=DB1(i)*DC1(i);
			RA1(l)=RB1(i)+RC1(i);
			CDA1(l).dreal=CDB1(i).dreal-CDC1(i).dreal;
			CDA1(l).dimag=CDB1(i).dimag-CDC1(i).dimag;
			l=l+2;
			IC1(7)=IC1(7)+IA1(l);
			DS1=DS1+DB1(l);
		}
LBL_30:
		;
	}
	printf(" CS1 = (%g,%g) ",CS1.real,CS1.imag);
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
	printf(" RA1 \n");
	for(i=1; i<=50; i++)
	{
		printf(" %g ",RA1(i));
		if(i == 25)
		{
			printf("\n");
		}
	}
	printf("\n");
	printf(" CDA1 \n");
	for(i=1; i<=50; i++)
	{
		printf(" (%g,%g) ",CDA1(i).dreal,CDA1(i).dimag);
		if(i == 25)
		{
			printf("\n");
		}
	}
	printf("\n");
	printf(" L = %ld\n",l);
	printf(" DS1 = %g\n",DS1);
	printf(" IC1 \n");
	for(i=1; i<=50; i++)
	{
		printf(" %ld ",IC1(i));
		if(i == 25)
		{
			printf("\n");
		}
	}
	printf("\n");
	exit (0);
}
