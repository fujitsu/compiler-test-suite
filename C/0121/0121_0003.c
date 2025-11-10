#include <stdio.h>
#include <math.h>
#include "000.h"
#include <stdlib.h>
#define ID(i)   id[i-1]
#define AA(i)   aa[i-1]
#define BB(i)   bb[i-1]
#define A1(i)   a1[i-1]
#define A2(i)   a2[i-1]
#define A3(i)   a3[i-1]
#define A4(i)   a4[i-1]
#define LGC(i)  lgc[i-1]
#define CMP(i)  cmp[i-1]
#define CMP1(i) cmp1[i-1]
#define CMP2(i) cmp2[i-1]
#define RV(i)   rv[i-1]
#define CMP0(i) cmp0[i-1]
#define I4A(i)  i4a[i-1]
#define C16A(i) c16a[i-1]
#define C8A(i)  c8a[i-1]
#define C32A(i) c32a[i-1]
#define R4A(i)  r4a[i-1]
long int      id[20];
long double   aa[20],bb[20];
long double   a1[20]={
	1.,1.,1.,1.,1.,2.,2.,2.,2.,2.,
	                       3.,3.,3.,3.,3.,4.,4.,4.,4.,4.};
long double   a2[20]={
	2.,2.,2.,2.,2.,3.,3.,3.,3.,3.,
	                       4.,4.,4.,4.,4.,1.,1.,1.,1.,1.};
long double   a3[20]={
	3.,3.,3.,3.,3.,4.,4.,4.,4.,4.,
	                       1.,1.,1.,1.,1.,2.,2.,2.,2.,2.};
long double   a4[20]={
	4.,4.,4.,4.,4.,1.,1.,1.,1.,1.,
	                       2.,2.,2.,2.,2.,3.,3.,3.,3.,3.};
unsigned char lgc[20];
COMPLEX32     cmp[20],cmp1[20],cmp2[20];
long double   rv[20];
COMPLEX8      cmp0[20];
long int      i4a[20];
COMPLEX16     c16a[20];
COMPLEX8      c8a[20];
COMPLEX32     c32a[20];
float         r4a[20];
int main()
{
	short int II2;
	long  int I,N,i;
	char      SNT[]="DO LOOP2";
	char      STR_END[]="END";
	long  int I4=1,II;
	float R4=1.0,MN;
	float A=1.,B=2.,C=3.,D=2.5;
	long int J1=4;
	long int J2=2;
	long int J3=1;
	long int J4=-5;
	long int I0,I1,NN,I2,JC,I3;
	for(i=0;i< 20;i++){
		id[i]=2;
		aa[i]=0.0;
		bb[i]=0.0;
		lgc[i]=1;
		cmp[i].qreal=0.;
		cmp[i].qimag=0.;
		cmp1[i].qreal=0.;
		cmp1[i].qimag=8.;
		cmp2[i].qreal=0.;
		cmp2[i].qimag=2.;
		rv[i]=1.0;
		cmp0[i].real=0.;
		cmp0[i].imag=0.;
		i4a[i]=1;
		c16a[i].dreal=-1.;
		c16a[i].dimag=1.;
		c8a[i].real=0.;
		c8a[i].imag=0.;
		c32a[i].qreal=1.;
		c32a[i].qimag=1.;
		r4a[i]=1.;
	}
	for(I0=1;I0<=10;I0++)
	{
		for(I1=1;I1<=10;I1+=A*J1+B*J2-C*J3+D+J4)
		{
			printf("** LOOP 1: %ld **\n",I1);
			II2=ID(I1);
			N=ID(I1)/2;
			AA(I1)=(A1(I1)>A2(I1))?A1(I1):A2(I1);
			AA(I1)=(AA(I1)>A3(I1))?AA(I1):A3(I1);
			AA(I1)=(AA(I1)>A4(I1))?AA(I1):A4(I1);
			BB(I1)=(A1(I1)<A2(I1))?A1(I1):A2(I1);
			BB(I1)=(BB(I1)<A3(I1))?BB(I1):A3(I1);
			BB(I1)=(BB(I1)<A4(I1))?BB(I1):A4(I1);
			if (AA(I1) >  5.)
			{
				AA(I1)=5.;
				if (BB(I1) <  0.)
				{
					BB(I1)=0.;
				}
			}
			else
			{
				BB(I1)=AA(I1);
			}
			if (N == 2)
			{
				printf(" INTEGER DIVIDE\n");
			}
		}
		NN=0;
		for(I2=1;I2<=10;I2+=A*J1-3)
		{
			printf("** LOOP 2: %ld **\n",I2);
			JC=strlen(SNT);
			if (JC <  5)
			{
				strcpy(SNT,STR_END);
				LGC(I2)=0;
				goto LBL_20;
			}
			CMP(I1).qreal=(CMP1(I1).qreal*CMP2(I2).qreal+
			    CMP1(I1).qimag*CMP2(I2).qimag)/
			    (CMP2(I1).qreal*CMP2(I2).qreal+
			    CMP2(I1).qimag*CMP2(I2).qimag);
			CMP(I1).qimag=(CMP1(I1).qimag*CMP2(I2).qreal-
			    CMP1(I1).qreal*CMP2(I2).qimag)/
			    (CMP2(I1).qreal*CMP2(I2).qreal+
			    CMP2(I1).qimag*CMP2(I2).qimag);
			CMP(I1-1).qreal=CMP(I1).qreal-3.;
			CMP(I1-1).qimag=CMP(I1).qimag;
			CMP0(I1).real=(float)(CMP(I1).qreal);
			CMP0(I1).imag=(float)(CMP(I1).qimag);
			RV(I1)=(float)(CMP0(I1).real);
LBL_20:
			;
		}
		NN=NN+(int)(RV(5));
LBL_100:
		;
	}
	printf(" NN= %ld \n",NN);
	for(i=1;i<=20;i++){
		printf(" RV= %g \n",(double)RV(i));
	}
	for(I3=1;I3<=J1*A*B+J2;I3+=2)
	{
		printf("** LOOP 3: %d **\n",I3);
		R4=R4+J1*A-2;
		C8A((int)(R4)).real=R4*C16A(I3).dreal;
		C8A((int)(R4)).imag=R4*C16A(I3).dimag;
		I4=I4+J1*J2+J4*J3-2;
		C32A(I4).qreal=C8A(I3).real+C8A(I4).real;
		C32A(I4).qimag=C8A(I3).imag+C8A(I4).imag;
		if (abs(C32A(I4).qreal) >  1.)
		{
			C32A(I4).qreal=0.;
			C32A(I4).qimag=0.;
		}
	}
	MN=0.0;
	for(II=4;II<=20;II++)
	{
		MN=(MN>fabs(C8A(II).real)) ? MN:fabs(C8A(II).real);
	}
	printf(" MN= %g \n",MN);
	for(i=1;i<=20;i++){
		printf(" C8A %g %g \n",C8A(i).real,C8A(i).imag);
	}
	exit (0);
}
