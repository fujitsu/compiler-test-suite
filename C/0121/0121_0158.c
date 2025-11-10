#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define IA1(i) ia1[i-1]
#define IB1(i) ib1[i-1]
#define IC1(i) ic1[i-1]
#define IA2(i,j) ia2[i-1][j-1]
#define IB2(i,j) ib2[i-1][j-1]
#define IC2(i,j) ic2[i-1][j-1]
#define RA1(i) ra1[i-1]
#define RB1(i) rb1[i-1]
#define RC1(i) rc1[i-1]
#define RA2(i,j) ra2[i-1][j-1]
#define RB2(i,j) rb2[i-1][j-1]
#define RC2(i,j) rc2[i-1][j-1]
#define RA3(i,j,k) ra3[i-1][j-1][k-1]
#define RB3(i,j,k) rb3[i-1][j-1][k-1]
#define RC3(i,j,k) rc3[i-1][j-1][k-1]
#define DA1(i) da1[i-1]
#define DB1(i) db1[i-1]
#define DC1(i) dc1[i-1]
#define DP1(i) dp1[i-1]
#define DM1(i) dm1[i-1]
#define DA2(i,j) da2[i-1][j-1]
#define DB2(i,j) db2[i-1][j-1]
#define DC2(i,j) dc2[i-1][j-1]
#define DA3(i,j,k) da3[i-1][j-1][k-1]
#define DB3(i,j,k) db3[i-1][j-1][k-1]
#define DC3(i,j,k) dc3[i-1][j-1][k-1]
#define QA2(i,j) qa2[i-1][j-1]
#define QB2(i,j) qb2[i-1][j-1]
#define QC2(i,j) qc2[i-1][j-1]
#define CA1(i) ca1[i-1]
#define CB1(i) cb1[i-1]
#define CC1(i) cc1[i-1]
#define CA2(i,j) ca2[i-1][j-1]
#define CB2(i,j) cb2[i-1][j-1]
#define CC2(i,j) cc2[i-1][j-1]
#define CA3(i,j,k) ca3[i-1][j-1][k-1]
#define CB3(i,j,k) cb3[i-1][j-1][k-1]
#define CC3(i,j,k) cc3[i-1][j-1][k-1]
#define LA3(i,j,k) la3[i-1][j-1][k-1]
#define LB3(i,j,k) lb3[i-1][j-1][k-1]
#define LC3(i,j,k) lc3[i-1][j-1][k-1]
#define L1 10
#define L2 10
#define L3 10
float ra1[L1],rb1[L1],rc1[L1];
float ra2[L1][L2],rb2[L1][L2],rc2[L1][L2];
float ra3[L1][L2][L3],rb3[L1][L2][L3],rc3[L1][L2][L3];
long double qa2[L1][L2],qb2[L1][L2],qc2[L1][L2];
COMPLEX ca1[L1],cb1[L1],cc1[L1];
COMPLEX ca2[L1][L2],cb2[L1][L2],cc2[L1][L2];
COMPLEX ca3[L1][L2][L3],cb3[L1][L2][L3],cc3[L1][L2][L3];
unsigned long int la3[L1][L2][L3],lb3[L1][L2][L3],lc3[L1][L2][L3];
int main()
{
	long int idx1=L1;
	long int idx2=L2;
	long int idx3=L3;
	long int i,j,k;
	float g,s,v11;
	for(i=0;i<L1;i++)
	{
		ra1[i]=i+2;
		rb1[i]=i+3;
		rc1[i]=i+4;
		ca1[i].real=(float)i;
		ca1[i].imag=(float)i;
		cb1[i].real=((float)(i+5));
		cb1[i].imag=(float)i;
		cc1[i].real=((float)(2*i));
		cc1[i].imag=((float)(3*i));
		for(j=0;j<L2;j++)
		{
			ra2[i][j]=i*j+5;
			rb2[i][j]=i-j-5;
			rc2[i][j]=i+j*3;
			qa2[i][j]=i*j-5;
			qb2[i][j]=i-j-6;
			qc2[i][j]=i+j-7;
			ca2[i][j].real=((float)(i+2));
			ca2[i][j].imag=((float)(j*3));
			cb2[i][j].real=((float)(i-2));
			cb2[i][j].imag=((float)(j+3));
			cc2[i][j].real=((float)(i*2));
			cc2[i][j].imag=((float)(j*3));
			for(k=1;k<L3;k++)
			{
				ra3[i][j][k]=i+j+k;
				rb3[i][j][k]=i-j+k;
				rc3[i][j][k]=i+j-k;
				ca3[i][j][k].real=((float)(i+j+k));
				ca3[i][j][k].imag=((float)(i+j*k));
				cb3[i][j][k].real=((float)(i-j+k));
				cb3[i][j][k].imag=((float)(i+j+k));
				cc3[i][j][k].real=((float)(i+j+k));
				cc3[i][j][k].imag=((float)(i-j+k));
				la3[i][j][k]=(i+j)>(i+k);
				lb3[i][j][k]=(i-j)>(i+k);
				lc3[i][j][k]=(i*j)>(i+k);
			}
		}
	}
	printf(" *****  *****\n");
	printf(" ----- TEST NO.1 -----  INNER PRODUCT\n");
	for(i=0;i<L1;i++)
	{
		g=0.0;
		s=ra1[i];
		ra1[i]=(rb1[i]+rc1[i])/2.0;
		for(j=0;j<L2;j++)
		{
			g=g+rb1[j]*rc1[j];
			if (ra1[i]  <   s)
			{
				ca2[i][j].real=cb2[i][j].real*ra1[i];
				ca2[i][j].imag=cb2[i][j].imag*ra1[i];
			}
			else
			{
				ca2[i][j].real=cb2[i][j].real*s;
				ca2[i][j].imag=cb2[i][j].imag*s;
			}
		}
	}
	printf("G = %g\n",g);
	for(i=0;i<L1;i++)
	{
		for(j=0;j<L2;j++)
		{
			printf("CA2[%ld][%ld]=%g , %g\n",i+1,j+1,ca2[i][j].real,ca2[i][j].imag);
		}
	}
	printf(" ----- TEST NO.2 ----- %g OUTSIDE THE LOOP     \n",g);
	g=0.0;
	for(i=0;i<L1;i++)
	{
		g=g+rb1[i]*rc1[i];
		s=ra1[i];
		ra1[i]=(rb1[i]+rc1[i])/2.0;
		for(j=1;j<L2;j++)
		{
			if (ra1[i]  <   s)
			{
				ca2[i][j].real=cb2[i][j].real*ra1[i];
				ca2[i][j].imag=cb2[i][j].imag*ra1[i];
			}
			else
			{
				ca2[i][j].real=cb2[i][j].real*s;
				ca2[i][j].imag=cb2[i][j].imag*s;
			}
		}
	}
	printf("G = %g\n",g);
	for(i=0;i<L1;i++)
	{
		for(j=0;j<L2;j++)
		{
			printf("CA2[%ld][%ld]=%g , %g\n",i+1,j+1,ca2[i][j].real,ca2[i][j].imag);
		}
	}
	printf(" ----- TEST NO.3 ----- NO PARTITIONING ?        \n");
	for(i=0;i<L1;i++)
	{
		v11=0.0;
		for(j=0;j<L2;j++)
		{
			v11=v11+rb2[0][j]*rc2[j][0];
			for(k=0;k<L3;k++)
			{
				ra2[i][k]=ra2[i][k]+rb2[i][j]*rc2[j][k];
			}
		}
	}
	la3[0][0][0]=0;
	la3[0][0][0]=ra2[0][0]==v11;
	for(i=0;i<L1;i++)
	{
		for(j=0;j<L2;j++)
		{
			printf("RA2= %g\n",ra2[i][j]);
		}
	}
	printf("LA3(1,1,1)= %lu\n",la3[0][0][0]);
	printf(" ----- TEST NO.4 ----- JUST TO MAKE SURE        \n");
	printf("                   NOT VECTORIZED BY I  ?       \n");
	for(i=0;i<L1;i++)
	{
		for(j=0;j<L2;j++)
		{
			for(k=0;k<L3;k++)
			{
				ra2[i][k]=ra2[i][k]+rb2[i][j]*rc2[j][k];
			}
			qa2[i][j]=qb2[i][j];
		}
	}
	for(i=0;i<L1;i++)
	{
		for(j=1;j<L2;j++)
		{
			printf("RA2= %g\n",ra2[i][j]);
		}
	}
	exit (0);
}
