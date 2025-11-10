#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "001.h"
#define I2A1(i) i2a1[i-1]
#define I2A2(i) i2a2[i-1]
#define I4A1(i) i4a1[i-1]
#define I4A2(i) i4a2[i-1]
#define R4A1(i) r4a1[i-1]
#define R4A2(i) r4a2[i-1]
#define R8A1(i) r8a1[i-1]
#define R8A2(i) r8a2[i-1]
#define R16A1(i) r16a1[i-1]
#define R16A2(i) r16a2[i-1]
#define C8A1(i) c8a1[i-1]
#define C8A2(i) c8a2[i-1]
#define C16A1(i) c16a1[i-1]
#define C16A2(i) c16a2[i-1]
#define C32A1(i) c32a1[i-1]
#define C32A2(i) c32a2[i-1]
#define L1A1(i) l1a1[i-1]
#define L1A2(i) l1a2[i-1]
#define L4A1(i) l4a1[i-1]
#define L4A2(i) l4a2[i-1]
#define III(i) iii[i-1]
short int i2a1[20]={
	1,2,3,4,5,6,7,8,9,10};
short int i2a2[20]={
	11,12,13,14,15,16,17,18,19,20};
long int i4a1[10]={
	1,2,3,4,5,6,7,8,9,10};
long int i4a2[10]={
	11,12,13,14,15,16,17,18,19,20};
float r4a1[10]={
	1.,2.,3.,4.,5.,6.,7.,8.,9.,10.};
float r4a2[10]={
	11.,12.,13.,14.,15.,16.,17.,18.,19.,20.};
double r8a1[10]={
	1.,2.,3.,4.,5.,6.,7.,8.,9.,10.};
double r8a2[10]={
	11.,12.,13.,14.,15.,16.,17.,18.,19.,20.};
double r16a1[10]={
	1.,2.,3.,4.,5.,6.,7.,8.,9.,10.};
double r16a2[10]={
	1.,1.,1.,1.,1.,1.,1.,1.,1.,1.};
COMPLEX8 c8a1[10]={
	1.,1.,2.,2.,3.,3.,4.,4.,5.,5.,
	    6.,6.,7.,7.,8.,8.,9.,9.,10.,10.};
COMPLEX8 c8a2[10]={
	1.,1.,2.,1.,3.,1.,4.,1.,5.,1.,
	    6.,1.,7.,1.,8.,1.,9.,1.,10.,1.};
COMPLEX16 c16a1[10]={
	1.,1.,2.,2.,3.,3.,4.,4.,5.,5.,
	    6.,6.,7.,7.,8.,8.,9.,9.,10.,10.};
COMPLEX16 c16a2[10]={
	1.,1.,1.,2.,1.,3.,1.,4.,1.,5.,
	    1.,6.,1.,7.,1.,8.,1.,9.,1.,10.};
COMPLEX32 c32a1[10]={
	1.,1.,2.,2.,3.,3.,4.,4.,5.,5.,
	    6.,6.,7.,7.,8.,8.,9.,9.,10.,10.};
COMPLEX32 c32a2[10]={
	2.,1.,2.,2.,2.,3.,2.,4.,2.,5.,
	    2.,6.,2.,7.,2.,8.,2.,9.,2.,10.};
unsigned char l1a1[10]={
	1,0,1,0,1,0,1,0,1,0};
unsigned char l1a2[10]={
	0,1,0,1,0,1,0,1,0,1};
unsigned long int l4a1[10]={
	0,1,0,1,0,1,0,1,0,1};
unsigned long int l4a2[10]={
	1,0,1,0,1,0,1,0,1,0};
long int iii[10];
union tag1 {
	unsigned long int l4a[10];
	long int iii[10];
} equ;
int main()
{
	long int I,J,i;
	short int I2S1,I2S2,I2S3,I2S4,I2S5,I2S6,I2S7,I2S8;
	long int I4S1,I4S2,I4S3,I4S4,I4S5,I4S6,I4S7,I4S8;
	float R4S1,R4S2,R4S3,R4S4,R4S5,R4S6,R4S7,R4S8;
	double R8S1,R8S2,R8S3,R8S4,R8S5,R8S6,R8S7,R8S8,R8S9;
	double R16S1,R16S2,R16S3,R16S4,R16S5,R16S6,R16S7,R16S8,R16S9;
	COMPLEX8 C8S1,C8S2,C8S3,C8S4,C8S5,C8S6,C8S7,C8S8,C8S9,C8S10;
	COMPLEX16 C16S1,C16S2,C16S3,C16S4,C16S5,C16S6,C16S7,C16S8,C16S9;
	COMPLEX32 C32S1,C32S2,C32S3,C32S4,C32S5,C32S6,C32S7,C32S8,C32S9;
	unsigned char L1S1,L1S2,L1S3,L1S4,L1S5,L1S6,L1S7,L1S8,L1S9;
	unsigned long int L4S1,L4S2,L4S3,L4S4,L4S5,L4S6,L4S7,L4S8,L4S9;
	float R16S10,R16S11;
	COMPLEX16 C16S10;
	COMPLEX32 C32S10,C32S11;
	printf(" ####  ## BUSY ON EXIT ####\n");
	for(J=1;J<=10;J++)
	{
		if (L4A1(J)==1)
		{
			I2S1=0;
			I2S2=I2A1(J);
			I2S3=I4A1(J);
			I2S4=R4A1(J);
			I2S5=I2A1(J)+I2A2(J);
			I2S6=I2A1(J)+I4A1(J);
			I2S7=I2A1(J)+R4A1(J);
			I2S8=I2A1(J)+9;
		}
LBL_11:
		;
	}
	printf(" ** INTEGER * 2 **\n");
	printf(" %ld %ld %ld %ld \n",I2S1,I2S2,I2S3,I2S4);
	printf(" %ld %ld %ld %ld \n",I2S5,I2S6,I2S7,I2S8);
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			I4S1=1;
			I4S2=I4A1(I);
			I4S3=I2A1(I);
			I4S4=R4A1(I);
			I4S5=R8A1(I);
			I4S6=I4A1(I)+I4A2(I);
			I4S7=I4A1(I)+2;
			I4S8=I4A1(I)+R4A1(I);
		}
	}
	printf(" ** INTEGER * 4 **\n");
	printf(" %ld %ld %ld %ld \n",I4S1,I4S2,I4S3,I4S4);
	printf(" %ld %ld %ld %ld \n",I4S5,I4S6,I4S7,I4S8);
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			R4S1=3.;
			R4S2=R4A1(I);
			R4S3=I4A1(I);
			R4S4=R8A1(I);
			R4S5=R4A1(I)+1.;
			R4S6=R4A1(I)+R4A2(I);
			R4S7=R4A1(I)+R8A1(I);
			R4S8=R4A1(I)+I4A1(I);
		}
	}
	printf(" ** REAL * 4 **\n");
	printf(" %f %f %f %f \n",R4S1,R4S2,R4S3,R4S4);
	printf(" %f %f %f %f \n",R4S5,R4S6,R4S7,R4S8);
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			R8S1=4.;
			R8S2=R8A1(I);
			R8S3=R4A1(I);
			R8S4=I4A1(I);
			R8S5=C8A1(I).real;
			R8S6=R8A1(I)+R8A2(I);
			R8S7=R8A1(I)+4.;
			R8S8=R4A1(I)+I4A1(I);
			R8S9=R8A1(I)+R4A1(I);
		}
	}
	printf(" ** REAL * 8 **\n");
	printf(" %f %f %f %f %f \n",R8S1,R8S2,R8S3,R8S4,R8S5);
	printf(" %f %f %f %f \n",R8S6,R8S7,R8S8,R8S9);
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			R16S1=5.;
			R16S2=R16A1(I);
			R16S3=R8A1(I);
			R16S4=R4A1(I);
			R16S5=I4A1(I);
			R16S6=C8A1(I).real;
			R16S7=C16A1(I).dreal;
			R16S8=R16A1(I)+R16A2(I);
			R16S9=R16A1(I)+5.;
			R16S10=R8A1(I)+R16A1(I);
			R16S11=R4A1(I)+R16A1(I);
		}
	}
	printf(" ** REAL * 16 **\n");
	printf(" %lg %lg %lg %lg \n",R16S1,R16S2,R16S3,R16S4);
	printf(" %lg %lg %lg %lg \n",R16S5,R16S6,R16S7,R16S8);
	printf(" %lg %lg %lg \n",R16S9,R16S10,R16S11);
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			C8S1.real=6.;
			C8S1.imag=0.;
			C8S2.real=C8A1(I).real;
			C8S2.imag=C8A1(I).imag;
			C8S3.real=I4A1(I);
			C8S3.imag=0.;
			C8S4.real=R4A1(I);
			C8S4.imag=0.;
			C8S5.real=R8A1(I);
			C8S5.imag=0.;
			C8S6.real=R16A1(I);
			C8S6.imag=0.;
			C8S7.real=C16A1(I).dreal;
			C8S7.imag=C16A1(I).dimag;
			C8S8.real=C32A1(I).qreal;
			C8S8.imag=C32A1(I).qimag;
			C8S9.real=C8A1(I).real+C8A2(I).real;
			C8S9.imag=C8A1(I).imag+C8A2(I).imag;
			C8S10.real=C8A1(I).real+6.;
			C8S10.imag=C8A1(I).imag;
		}
	}
	printf(" ** COMPLEX * 8 **\n");
	printf(" C8S1= (%g,%g)  \n",C8S1.real,C8S1.imag);
	printf(" C8S2= (%g,%g)  \n",C8S2.real,C8S2.imag);
	printf(" C8S3= (%g,%g)  \n",C8S3.real,C8S3.imag);
	printf(" C8S4= (%g,%g)  \n",C8S4.real,C8S4.imag);
	printf(" C8S5= (%g,%g)  \n",C8S5.real,C8S5.imag);
	printf(" C8S6= (%g,%g)  \n",C8S6.real,C8S6.imag);
	printf(" C8S7= (%g,%g)  \n",C8S7.real,C8S7.imag);
	printf(" C8S8= (%g,%g)  \n",C8S8.real,C8S8.imag);
	printf(" C8S9= (%g,%g)  \n",C8S9.real,C8S9.imag);
	printf(" C8S10= (%g,%g)  \n",C8S10.real,C8S10.imag);
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			C16S1.dreal=7.;
			C16S1.dimag=0.;
			C16S2.dreal=C16A1(I).dreal;
			C16S2.dimag=C16A1(I).dimag;
			C16S3.dreal=I4A1(I);
			C16S3.dimag=0.0;
			C16S4.dreal=R4A1(I);
			C16S4.dimag=0.0;
			C16S5.dreal=R8A1(I);
			C16S5.dimag=0.0;
			C16S6.dreal=R16A1(I);
			C16S6.dimag=0.0;
			C16S7.dreal=C8A1(I).real;
			C16S7.dimag=C8A1(I).imag;
			C16S8.dreal=C32A1(I).qreal;
			C16S8.dimag=C32A1(I).qreal;
			C16S9.dreal=C16A1(I).dreal+C16A2(I).dreal;
			C16S9.dimag=C16A1(I).dimag+C16A2(I).dimag;
			C16S10.dreal=C16A1(I).dreal+7.;
			C16S10.dimag=C16A1(I).dimag+7.;
		}
LBL_71:
		;
	}
	printf(" ** COMPLEX * 16 **\n");
	printf(" C16S1= (%g,%g) \n",C16S1.dreal,C16S1.dimag);
	printf(" C16S2= (%g,%g) \n",C16S2.dreal,C16S2.dimag);
	printf(" C16S3= (%g,%g) \n",C16S3.dreal,C16S3.dimag);
	printf(" C16S4= (%g,%g) \n",C16S4.dreal,C16S4.dimag);
	printf(" C16S5= (%g,%g) \n",C16S5.dreal,C16S5.dimag);
	printf(" C16S6= (%g,%g) \n",C16S6.dreal,C16S6.dimag);
	printf(" C16S7= (%g,%g) \n",C16S7.dreal,C16S7.dimag);
	printf(" C16S8= (%g,%g) \n",C16S8.dreal,C16S8.dimag);
	printf(" C16S9= (%g,%g) \n",C16S9.dreal,C16S9.dimag);
	printf(" C16S10= (%g,%g) \n",C16S10.dreal,C16S10.dimag);
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			C32S1.qreal=8.;
			C32S1.qimag=8.;
			C32S2.qreal=C32A1(I).qreal;
			C32S2.qimag=C32A1(I).qimag;
			C32S3.qreal=I4A1(I);
			C32S3.qimag=0.;
			C32S4.qreal=R4A1(I);
			C32S4.qimag=0.;
			C32S5.qreal=R8A1(I);
			C32S5.qimag=0.;
			C32S6.qreal=R16A1(I);
			C32S6.qimag=0.;
			C32S7.qreal=C8A1(I).real;
			C32S7.qimag=C8A1(I).imag;
			C32S8.qreal=C16A1(I).dreal;
			C32S8.qimag=C16A1(I).dimag;
			C32S9.qreal=C32A1(I).qreal;
			C32S9.qimag=C32A1(I).qimag;
			C32S10.qreal=C32A1(I).qreal+C32A2(I).qreal;
			C32S10.qimag=C32A1(I).qimag+C32A2(I).qimag;
			C32S11.qreal=C32A1(I).qreal+8.;
			C32S11.qimag=C32A1(I).qimag;
		}
LBL_81:
		;
	}
	printf(" ** COMPLEX * 32 **\n");
	printf(" CS32S1=  (%lg,%lg) \n",C32S1.qreal,C32S1.qimag);
	printf(" CS32S2=  (%lg,%lg) \n",C32S2.qreal,C32S2.qimag);
	printf(" CS32S3=  (%lg,%lg) \n",C32S3.qreal,C32S3.qimag);
	printf(" CS32S4=  (%lg,%lg) \n",C32S4.qreal,C32S4.qimag);
	printf(" CS32S5=  (%lg,%lg) \n",C32S5.qreal,C32S5.qimag);
	printf(" CS32S6=  (%lg,%lg) \n",C32S6.qreal,C32S6.qimag);
	printf(" CS32S7=  (%lg,%lg) \n",C32S7.qreal,C32S7.qimag);
	printf(" CS32S8=  (%lg,%lg) \n",C32S8.qreal,C32S8.qimag);
	printf(" CS32S9=  (%lg,%lg) \n",C32S9.qreal,C32S9.qimag);
	printf(" CS32S10= (%lg,%lg) \n",C32S10.qreal,C32S10.qimag);
	printf(" CS32S11= (%lg,%lg) \n",C32S11.qreal,C32S11.qimag);
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			L1S1=1;
			L1S2=0;
			L1S3=L1A1(I);
			L1S4=L4A1(I);
			L1S5=1^L1A1(I);
			L1S6=1^L1A2(I);
			L1S7=L1A1(I)&&L1A2(I);
			L1S8=L1A1(I)|L1A2(I);
			L1S9=L1A1(I)&&L4A1(I);
		}
LBL_91:
		;
	}
	printf(" ** LOGICAL * 1 **\n");
	printf(" %u %u %u %u %u \n",L1S1,L1S2,L1S3,L1S4,L1S5);
	printf(" %u %u %u %u \n",L1S6,L1S7,L1S8,L1S9);
	for(i=1;i<=10;i++){
		printf(" %u ",L1A2(i));
	}
	printf("\n");
	equ.III(10)=10;
	for(I=1;I<=10;I++)
	{
		if (I == equ.III(I))
		{
			L4S1=1;
			L4S2=0;
			L4S3=L4A1(I);
			L4S4=1^L4A1(I);
			L4S5=1^L4A2(I);
			L4S6=L4A1(I)&&L4A2(I);
			L4S7=L4A1(I)|L4A2(I);
			L4S8=I4A1(I)!=0;
			L4S9=1;
		}
LBL_101:
		;
	}
	printf(" **LOGICAL * 4 **\n");
	printf(" %lu %lu %lu %lu %lu \n",L4S1,L4S2,L4S3,L4S4,L4S5);
	printf(" %lu %lu %lu %lu \n",L4S6,L4S7,L4S8,L4S9);
	exit (0);
}
