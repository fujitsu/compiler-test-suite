#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define I2S1(i) i2s1[i-1]
#define I2A1(i) i2a1[i-1]
#define I2A2(i) i2a2[i-1]
#define I4S1(i) i4s1[i-1]
#define I4A1(i) i4a1[i-1]
#define I4A2(i) i4a2[i-1]
#define R4S1(i) r4s1[i-1]
#define R4A1(i) r4a1[i-1]
#define R4A2(i) r4a2[i-1]
#define R8S1(i) r8s1[i-1]
#define R8A1(i) r8a1[i-1]
#define R8A2(i) r8a2[i-1]
#define R16S1(i) r16s1[i-1]
#define R16A1(i) r16a1[i-1]
#define R16A2(i) r16a2[i-1]
#define C8S1(i) c8s1[i-1]
#define C8A1(i) c8a1[i-1]
#define C8A2(i) c8a2[i-1]
#define C16S1(i) c16s1[i-1]
#define C16A1(i) c16a1[i-1]
#define C16A2(i) c16a2[i-1]
#define C32S1(i) c32s1[i-1]
#define C32A1(i) c32a1[i-1]
#define C32A2(i) c32a2[i-1]
#define L1S1(i) l1s1[i-1]
#define L1A1(i) l1a1[i-1]
#define L1A2(i) l1a2[i-1]
#define L4S1(i) l4s1[i-1]
#define L4A1(i) l4a1[i-1]
#define L4A2(i) l4a2[i-1]
short int i2s1[20];
short int i2a1[20]={
	1,2,3,4,5,6,7,8,9,10};
short int i2a2[20]={
	11,12,13,14,15,16,17,18,19,20};
long int i4s1[20];
long int i4a1[10]={
	1,2,3,4,5,6,7,8,9,10};
long int i4a2[10]={
	11,12,13,14,15,16,17,18,19,20};
float r4s1[20];
float r4a1[10]={
	1.,2.,3.,4.,5.,6.,7.,8.,9.,10.};
float r4a2[10]={
	11.,12.,13.,14.,15.,16.,17.,18.,19.,20.};
double r8s1[20];
double r8a1[10]={
	1.,2.,3.,4.,5.,6.,7.,8.,9.,10.};
double r8a2[10]={
	11.,12.,13.,14.,15.,16.,17.,18.,19.,20.};
long double r16s1[20];
long double r16a1[10]={
	1.,2.,3.,4.,5.,6.,7.,8.,9.,10.};
long double r16a2[10]={
	1.,1.,1.,1.,1.,1.,1.,1.,1.,1.};
COMPLEX8 c8s1[20];
COMPLEX8 c8a1[10]={
	1.,1.,2.,2.,3.,3.,4.,4.,5.,5.,
	    6.,6.,7.,7.,8.,8.,9.,9.,10.,10.};
COMPLEX8 c8a2[10]={
	1.,1.,2.,1.,3.,1.,4.,1.,5.,1.,
	    6.,1.,7.,1.,8.,1.,9.,1.,10.,1.};
COMPLEX16 c16s1[20];
COMPLEX16 c16a1[10]={
	1.,1.,2.,2.,3.,3.,4.,4.,5.,5.,
	    6.,6.,7.,7.,8.,8.,9.,9.,10.,10.};
COMPLEX16 c16a2[10]={
	1.,1.,1.,2.,1.,3.,1.,4.,1.,5.,
	    1.,6.,1.,7.,1.,8.,1.,9.,1.,10.};
COMPLEX32 c32s1[20];
COMPLEX32 c32a1[10]={
	1.,1.,2.,2.,3.,3.,4.,4.,5.,5.,
	    6.,6.,7.,7.,8.,8.,9.,9.,10.,10.};
COMPLEX32 c32a2[10]={
	2.,1.,2.,2.,2.,3.,2.,4.,2.,5.,
	    2.,6.,2.,7.,2.,8.,2.,9.,2.,10.};
unsigned char l1s1[20];
unsigned char l1a1[10]={
	1,0,1,0,1,0,1,0,1,0};
unsigned char l1a2[10]={
	0,1,0,1,0,1,0,1,0,1};
unsigned long int l4s1[20];
unsigned char l4a1[10]={
	0,1,0,1,0,1,0,1,0,1};
unsigned char l4a2[10]={
	1,0,1,0,1,0,1,0,1,0};
int main()
{
	long int i,I;
	printf(" ####  ## BUSY ON EXIT #### \n");
	for(I=1;I<=10;I++)
	{
		I2S1(1)=0;
		I2S1(2)=I2A1(I);
		I2S1(3)=(short int)I4A1(I);
		I2S1(3)=(short int)(R4A1(I));
		I2S1(4)=I2A1(I)+I2A2(I);
		I2S1(5)=I2A1(I)+(short int)I4A1(I);
		I2S1(6)=I2A1(I)+(short int)(R4A1(I));
		I2S1(7)=I2A1(I)+9;
	}
	printf(" ** INTEGER * 2 **\n");
	for(i=1;i<=7;i++){
		printf(" %d ",I2S1(i));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		C8S1(1).real=6.;
		C8S1(2).real=C8A1(I).imag;
		C8S1(2).imag=C8A1(I).imag;
		C8S1(3).real=(float)(I4A1(I));
		C8S1(4).real=R4A1(I);
		C8S1(5).real=(float)R8A1(I);
		C8S1(6).real=(float)R16A1(I);
		C8S1(7).real=C16A1(I).dreal;
		C8S1(7).imag=C16A1(I).dimag;
		C8S1(8).real=C32A1(I).qreal;
		C8S1(8).imag=C32A1(I).qimag;
		C8S1(9).real=C8A1(I).real+C8A2(I).real;
		C8S1(9).imag=C8A1(I).real+C8A2(I).real;
		C8S1(10).real=C8A1(I).real+6.;
		C8S1(10).imag=C8A1(I).imag+6.;
	}
	printf(" ** COMPLEX * 8 **\n");
	for(i=1;i<=20;i++){
		printf(" (%f,%f) \n",C8S1(i).real,C8S1(i).imag);
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		I4S1(1)=1;
		I4S1(2)=I4A1(I);
		I4S1(3)=I2A1(I);
		I4S1(4)=R4A1(I);
		I4S1(5)=R8A1(I);
		I4S1(6)=I4A1(I)+I4A2(I);
		I4S1(7)=I4A1(I)+2;
		I4S1(8)=I4A1(I)+R4A1(I);
	}
	printf(" ** INTEGER * 4 **\n");
	for(i=1;i<=20;i++){
		printf(" %ld ",I4S1(i));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		R4S1(1)=3.;
		R4S1(2)=R4A1(I);
		R4S1(3)=I4A1(I);
		R4S1(4)=R8A1(I);
		R4S1(5)=I2A1(I);
		R4S1(6)=R4A1(I)+1.;
		R4S1(7)=R4A1(I)+R4A2(I);
		R4S1(8)=R4A1(I)+R8A1(I);
		R4S1(9)=R4A1(I)+I4A1(I);
	}
	printf(" ** REAL * 4 **\n");
	for(i=1;i<=20;i+=2){
		printf(" %f %f \n",R4S1(i),R4S1(i+1));
	}
	for(I=1;I<=10;I++)
	{
		R8S1(1)=4.;
		R8S1(2)=R8A1(I);
		R8S1(3)=R4A1(I);
		R8S1(4)=I4A1(I);
		R8S1(5)=C8A1(I).imag;
		R8S1(6)=R8A1(I)+R8A2(I);
		R8S1(7)=R8A1(I)+4.;
		R8S1(8)=R4A1(I)+I4A1(I);
		R8S1(9)=R8A1(I)+R4A1(I);
	}
	printf(" ** REAL * 8 **\n");
	for(i=1;i<=9;i++){
		printf(" %g ",R8S1(i));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		R16S1(1)=5.;
		R16S1(2)=R16A1(I);
		R16S1(3)=R8A1(I);
		R16S1(4)=R4A1(I);
		R16S1(5)=(double)(I4A1(I));
		R16S1(6)=(double)(C8A1(I).real);
		R16S1(7)=C16A1(I).dreal;
		R16S1(8)=R16A1(I)+R16A2(I);
		R16S1(9)=R16A1(I)+5.;
		R16S1(10)=R8A1(I)+R16A1(I);
		R16S1(11)=R4A1(I)+R16A1(I);
	}
	printf(" ** REAL * 16 **\n");
	for(i=1;i<=11;i++){
		printf(" %g ",(double)R16S1(i));
	}
	for(I=1;I<=10;I++)
	{
		C16S1(1).dreal=7.;
		C16S1(2).dreal=C16A1(I).dreal;
		C16S1(2).dimag=C16A1(I).dimag;
		C16S1(3).dreal=(double)(I4A1(I));
		C16S1(4).dreal=R4A1(I);
		C16S1(5).dreal=R8A1(I);
		C16S1(6).dreal=R16A1(I);
		C16S1(7).dreal=C8A1(I).real;
		C16S1(7).dimag=C8A1(I).imag;
		C16S1(8).dreal=C32A1(I).qreal;
		C16S1(8).dimag=C32A1(I).qimag;
		C16S1(9).dreal=C16A1(I).dreal+C16A2(I).dreal;
		C16S1(9).dimag=C16A1(I).dimag+C16A2(I).dimag;
		C16S1(10).dreal=C16A1(I).dreal+7.;
		C16S1(10).dimag=C16A1(I).dimag;
	}
	printf(" ** COMPLEX * 16 **\n");
	for(i=1;i<=10;i++){
		printf(" (%f,%f) \n",C16S1(i).dreal,C16S1(i).dimag);
	}
	for(I=1;I<=10;I++)
	{
		C32S1(1).qreal =8.;
		C32S1(2).qreal =C32A1(I).qreal;
		C32S1(2).qimag =C32A1(I).qimag;
		C32S1(3).qreal =(long double)(I4A1(I));
		C32S1(4).qreal =R4A1(I);
		C32S1(5).qreal =R8A1(I);
		C32S1(6).qreal =R16A1(I);
		C32S1(7).qreal =C8A1(I).real;
		C32S1(7).qimag =C8A1(I).imag;
		C32S1(8).qreal =C16A1(I).dreal;
		C32S1(8).qimag =C16A1(I).dimag;
		C32S1(9).qreal =C32A1(I).qreal;
		C32S1(9).qimag =C32A1(I).qimag;
		C32S1(10).qreal=C32A1(I).qreal+C32A2(I).qreal;
		C32S1(10).qimag=C32A1(I).qimag+C32A2(I).qimag;
		C32S1(11).qreal=C32A1(I).qreal+8.;
		C32S1(11).qimag=C32A1(I).qimag;
	}
	printf(" ** COMPLEX * 32 **\n");
	for(i=1;i<=11;i++){
		printf(" (%f,%f) \n",(double)C32S1(i).qreal,(double)C32S1(i).qimag);
	}
	for(I=1;I<=10;I++)
	{
		L1S1(1)=1;
		L1S1(2)=0;
		L1S1(3)=L1A1(I);
		L1S1(4)=L4A1(I);
		L1S1(5)=1^L1A1(I);
		L1S1(6)=1^L1A2(I);
		L1S1(7)=L1A1(I)&&L1A2(I);
		L1S1(8)=L1A1(I)|L1A2(I);
		L1S1(9)=L1A1(I)&&L4A1(I);
	}
	printf(" ** LOGICAL * 1 **\n");
	for(i=1;i<=20;i++){
		printf(" %d ",L1S1(i));
	}
	printf(" \n");
	for(I=1;I<=10;I++)
	{
		L4S1(1)=1;
		L4S1(2)=0;
		L4S1(3)=L4A1(I);
		L4S1(4)=L1A1(I);
		L4S1(5)=1^L4A1(I);
		L4S1(6)=1^L4A2(I);
		L4S1(7)=L4A1(I)&&L4A2(I);
		L4S1(8)=L4A1(I)|L4A2(I);
		L4S1(9)=L4A1(I)&&L1A1(I);
		if (I4A1(I) == 0)
		{
			L4S1(10)=0;
		}
		else
		{
			L4S1(10)=1;
		}
		if (I2A1(I) == 0)
		{
			L4S1(11)=0;
		}
		else
		{
			L4S1(11)=1;
		}
		L4S1(12)=1;
	}
	printf(" ** LOGICAL * 4 **\n");
	for(i=1;i<=20;i++){
		printf(" %lu ",L4S1(i));
	}
        printf("\n");
	exit (0);
}
