#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define VLR1A(i) vlr1a[i-1]
#define VLR1B(i) vlr1b[i-1]
#define VLR1C(i) vlr1c[i-1]
#define VLR2A(i) vlr2a[i-1]
#define VLR2B(i) vlr2b[i-1]
#define VLR2C(i) vlr2c[i-1]
#define VLR3A(i) vlr3a[i-1]
#define VLR3B(i) vlr3b[i-1]
#define VLR3C(i) vlr3c[i-1]
#define VLR4A(i) vlr4a[i-1]
#define VLR4B(i) vlr4b[i-1]
#define VLR4C(i) vlr4c[i-1]
#define VLR5A(i) vlr5a[i-1]
#define VLR5B(i) vlr5b[i-1]
#define VLR5C(i) vlr5c[i-1]
#define VLR6A(i) vlr6a[i-1]
#define VLR6B(i) vlr6b[i-1]
#define VLR6C(i) vlr6c[i-1]
float       vlr1a[100],vlr1b[100],vlr1c[100];
double      vlr2a[100],vlr2b[100],vlr2c[100];
double      vlr3a[100],vlr3b[100],vlr3c[100];
COMPLEX8    vlr4a[100],vlr4b[100],vlr4c[100];
COMPLEX16   vlr5a[100],vlr5b[100],vlr5c[100];
long double vlr6a[100],vlr6b[100],vlr6c[100];
int main()
{
	long int I,i;
	float A;
	printf("** LABEL :  1 ** \n");
	for(I=1;I<=100;I++)
	{
		VLR1A(I)=0.5;
		VLR2A(I)=0.5;
		VLR3A(I)=5;
		VLR4A(I).real=1.0;
		VLR4A(I).imag=1.0;
		VLR5A(I).dreal=1.0;
		VLR5A(I).dimag=1.0;
LBL_1:
		;
		VLR6A(I)=0.5;
	}
	printf("** LABEL :  10 ** \n");
	for(I=1;I<=100;I++)
	{
		VLR1B(I)=cos(VLR1A(I));
LBL_10:
		;
		VLR1C(I)=VLR1B(I)+VLR1A(I);
	}
	printf("** LABEL :  11 ** \n");
	for(I=1;I<=50;I++)
	{
		if (I >  25) VLR1B(I)=cos(VLR1A(I));
		if (I <= 25) VLR1B(I)=2.0;
LBL_11:
		;
		VLR1C(I)=VLR1B(I)+VLR1A(I);
	}
	printf("** LABEL :  20 ** \n");
	for(I=1;I<=100;I++)
	{
		VLR2B(I)=cos(VLR2A(I));
LBL_20:
		;
		VLR2C(I)=VLR2B(I)+VLR2A(I);
	}
	printf("** LABEL :  21 ** \n");
	for(I=1;I<=50;I++)
	{
		if (I >  25) VLR2B(I)=cos(VLR2A(I));
		if (I <= 25) VLR2B(I)=2.0;
LBL_21:
		;
		VLR2C(I)=VLR2B(I)+VLR2A(I);
	}
	printf("** LABEL :  30 ** \n");
	for(I=1;I<=100;I++)
	{
		VLR3B(I)=pow(VLR3A(I),VLR3A(I));
LBL_30:
		;
		VLR3C(I)=VLR3B(I)+VLR3A(I);
	}
	printf("** LABEL :  31 ** \n");
	for(I=1;I<=50;I++)
	{
		if (I >  25) VLR3B(I)=pow(VLR3A(I),VLR3A(I));
		if (I <= 25) VLR3B(I)=I;
LBL_31:
		;
		VLR3C(I)=VLR3B(I)+VLR3A(I);
	}
	printf("** LABEL :  40 ** \n");
	for(I=1;I<=100;I++)
	{
		VLR4B(I).real=pow(VLR4A(I).real,VLR4A(I).real);
		VLR4B(I).imag=pow(VLR4A(I).imag,VLR4A(I).imag);
LBL_40:
		;
		VLR4C(I).real=VLR4B(I).real+VLR4A(I).real;
		VLR4C(I).imag=VLR4B(I).imag+VLR4A(I).imag;
	}
	printf("** LABEL :  41 ** \n");
	for(I=1;I<=50;I++)
	{
		if (I >  25) {
			VLR4B(I).real=pow(VLR4A(I).real,VLR4A(I).real);
			VLR4B(I).imag=pow(VLR4A(I).imag,VLR4A(I).imag);
		}
		if (I <= 25) {
			VLR4B(I).real=pow(VLR4A(I).real,4);
			VLR4B(I).imag=pow(VLR4A(I).imag,4);
		}
LBL_41:
		;
		VLR4C(I).real=VLR4B(I).real+VLR4A(I).real;
		VLR4C(I).imag=VLR4B(I).imag+VLR4A(I).imag;
	}
	printf("** LABEL :  50 ** \n");
	for(I=1;I<=100;I++)
	{
		VLR5B(I).dreal=pow(VLR5A(I).dreal,VLR5A(I).dreal);
		VLR5B(I).dimag=pow(VLR5A(I).dimag,VLR5A(I).dimag);
LBL_50:
		;
		VLR5C(I).dreal=VLR5A(I).dreal+VLR5A(I).dreal;
		VLR5C(I).dimag=VLR5A(I).dimag+VLR5A(I).dimag;
	}
	printf("** LABEL :  51 ** \n");
	for(I=1;I<=50;I++)
	{
		if (I >  25) {
			VLR5B(I).dreal=pow(VLR5A(I).dreal,VLR5A(I).dreal);
			VLR5B(I).dimag=pow(VLR5A(I).dimag,VLR5A(I).dimag);
		}
		if (I <= 25) {
			VLR5B(I).dreal=pow(VLR5A(I).dreal,4);
			VLR5B(I).dimag=pow(VLR5A(I).dimag,4);
		}
LBL_51:
		;
		VLR5C(I).dreal=VLR5B(I).dreal+VLR5A(I).dreal;
		VLR5C(I).dimag=VLR5B(I).dimag+VLR5A(I).dimag;
	}
	printf("** LABEL :  100 ** \n");
	for(I=1;I<=10;I++)
	{
		VLR1C(I+10)=VLR1B(I);
		if (I >  5)
		{
			VLR1B(I)=cos(VLR1A(I));
		}
		else
		{
			VLR1B(I)=sin(VLR1A(I));
		}
LBL_100:
		;
		VLR1C(I)=VLR1B(I)+VLR1A(I);
	}
	printf("** LABEL :  200 ** \n");
	for(I=1;I<=10;I++)
	{
		VLR2C(I+10)=VLR2B(I);
		if (I >  5)
		{
			VLR2B(I)=cos(VLR2A(I));
		}
		else
		{
			VLR2B(I)=sin(VLR2A(I));
		}
LBL_200:
		;
		VLR2C(I)=VLR2B(I)+VLR2A(I);
	};
	A=sin(VLR2C(10))+cos(VLR2C(10))+sin(VLR2C(9));
	printf("** LABEL :  300 ** \n");
	for(I=1;I<=10;I++)
	{
		VLR3B(I)=pow(VLR3A(I),VLR3A(I));
		if (I >= 5)
		{
			VLR3B(I)=pow(VLR3B(I),VLR3B(I))+2;
		}
		else
		{
			VLR3B(I)=pow(VLR3B(I),VLR3A(I))*2;
		}
		VLR3B(I)=pow(VLR3A(I),VLR3A(I));
LBL_300:
		;
		VLR3C(I)=VLR3B(I)+VLR3A(I)+(int)(A);
	}
	printf("** LABEL :  400 ** \n");
	for(I=1;I<=10;I++)
	{
		if (I >  5)
		{
			VLR4B(I).real=pow(VLR4B(I).real,2);
			VLR4B(I).imag=pow(VLR4B(I).imag,2);
		}
		else
		{
			VLR4B(I).real=pow(VLR4B(I).real,4);
			VLR4B(I).imag=pow(VLR4B(I).imag,4);
		}
LBL_400:
		;
		VLR4C(I).real=VLR4B(I).real+VLR4A(I).real;
		VLR4C(I).imag=VLR4B(I).imag+VLR4A(I).imag;
	}
	printf("** LABEL :  500 ** \n");
	for(I=1;I<=10;I++)
	{
		if (I >  5)
		{
			VLR5B(I).dreal=pow(VLR5B(I).dreal,2);
			VLR5B(I).dimag=pow(VLR5B(I).dimag,2);
		}
		else
		{
			VLR5B(I).dreal=pow(VLR5B(I).dreal,4);
			VLR5B(I).dimag=pow(VLR5B(I).dimag,4);
		}
		VLR5B(I).dreal=pow(VLR5A(I).dreal,VLR5A(I).dreal);
		VLR5B(I).dimag=pow(VLR5A(I).dimag,VLR5A(I).dimag);
LBL_500:
		;
		VLR5C(I).dreal=VLR5A(I).dreal+VLR5A(I).dreal;
		VLR5C(I).dimag=VLR5A(I).dimag+VLR5A(I).dimag;
	}
	printf("** LABEL :  600 ** \n");
	for(I=1;I<=100;I++)
	{
		if (I >  25) VLR6B(I)=pow(VLR6A(I),VLR6A(I));
		if (I <= 25) VLR6B(I)=pow(VLR6A(I),VLR6A(I));
LBL_600:
		;
		VLR6C(I)=VLR6B(I)+VLR6A(I);
	}
	printf(" ***  ***\n");
	for(i=1;i<=100;i++){
		printf(" %g %.5g %.5g   ",VLR1A(i),VLR1B(i),VLR1C(i));
		printf(" %g %g %g \n",VLR2A(i),VLR2B(i),VLR2C(i));
		printf(" %g %g %g ",VLR3A(i),VLR3B(i),VLR3C(i));
		printf(" %g %g %g \n",VLR4A(i).real,VLR4B(i).real,VLR4C(i).real);
		printf(" %g %g %g   ",VLR4A(i).imag,VLR4B(i).imag,VLR4C(i).imag);
		printf(" %g %g %g \n",VLR5A(i).dreal,VLR5B(i).dreal,VLR5C(i).dreal);
		printf(" %g %g %g   ",VLR5A(i).dimag,VLR5B(i).dimag,VLR5C(i).dimag);
		printf(" %g %g %g \n",(double)VLR6A(i),(double)VLR6B(i),(double)VLR6C(i));
	}
	exit (0);
}
