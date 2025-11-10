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
#define VLR6A(i) vlr6a[i-1]
float    vlr1a[100],vlr1b[100],vlr1c[100];
double   vlr2a[100],vlr2b[100],vlr2c[100];
long int vlr3a[100],vlr3b[100],vlr3c[100];
COMPLEX8 vlr4a[100],vlr4b[100],vlr4c[100];
long double vlr6a[100];
int main()
{
	long int I,II,III,IIII,i,j,J;
	for(I=1;I<=100;I++)
	{
		VLR1A(I)=1.0;
		VLR1B(I)=1.0;
		VLR1C(I)=1.0;
		VLR2A(I)=2.0;
		VLR2B(I)=2.0;
		VLR2C(I)=2.0;
		VLR3A(I)=1;
		VLR3B(I)=1;
		VLR3C(I)=1;
		VLR4A(I).real=1.0;
		VLR4A(I).imag=1.0;
		VLR4B(I).real=2.0;
		VLR4B(I).imag=2.0;
		VLR4C(I).real=2.0;
		VLR4C(I).imag=2.0;
		VLR6A(I)=1.0;
	}
	for(IIII =1;IIII <=2;IIII ++)
	{
		for(III =1;III <=2;III ++)
		{
			for(I=1;I<=25;I+=III)
			{
				VLR1A(I)=VLR1A(I)+2.0;
				VLR1A(I)=VLR1B(100);
				VLR1B(I)=VLR1A(I)+VLR1B(I);
				VLR1C(I)=VLR1B(I)+VLR1A(I);
			}
			for(I=1;I<=25;I+=IIII)
			{
				if (I >  10)
				{
					VLR2A(I)=VLR2A(I)+2.0;
				}
				else
				{
					VLR2A(I)=VLR2B(100);
					VLR2B(I)=VLR2A(I)+VLR2B(I);
					VLR2C(I)=VLR2B(I)+VLR2A(I);
				}
			}
			for(I=1;I<=97;I+=2)
			{
				if (I >  10)
				{
					VLR3A(I)=VLR3A(I)+(int)(2.0)+fabs(VLR3A(98))+III+I;
				}
				else
				{
					VLR3A(I)=VLR3B(100);
					VLR3B(I)=VLR3A(I)+VLR3B(I);
					if (I <  5)
					{
						VLR3A(I)=VLR3B(100)+2+III+I;
						VLR3B(I)=VLR3A(I)+VLR3B(I)+2;
					}
					VLR3C(I)=VLR3B(I)+VLR3A(I)+III;
				}
			}
			for(I=1;I<=50;I++)
			{
				VLR4A((VLR3A(I)<50)?VLR3A(I):50).real=
				    VLR4B((VLR3A(I)<51)?VLR3A(I):51).real;
				VLR4A((VLR3A(I)<50)?VLR3A(I):50).imag=
				    VLR4B((VLR3A(I)<51)?VLR3A(I):51).imag;
				if (VLR3C(I) >  30)
				{
					VLR3C(I)=29;
				}
				else
				{
					VLR3C(I)=21;
				}
				VLR4C(VLR3C(I)).real=1.0;
				VLR4C(VLR3C(I)).imag=1.0;
			}
			for(I=25;I<=50;I++)
			{
				VLR1A(I)=VLR1A(I)+2.0;
				VLR1A(I)=VLR1B(100)+VLR1B(20);
				VLR1B(I)=VLR1A(I)+VLR1B(I)+VLR1A(I);
				VLR1C(I)=VLR1B(I)+VLR1B(I)+VLR1A(I);
			}
			VLR3A(1)=1;
			VLR3A(2)=2;
			for(I=75;I<=100;I+=((3<abs(VLR3A(50)))?3:abs(VLR3A(50))))
			{
				VLR2A(I)=VLR2A(50);
				if (I >  10)
				{
					VLR2A(I)=VLR2A(50)+VLR2A(1);
					VLR2A(I)=VLR2A(I)+2.0;
				}
				else
				{
					VLR2A(I)=VLR2B(50)+VLR2A(50);
					VLR2B(I)=VLR2A(I)+VLR2B(I)+VLR2A(I);
					VLR2C(I)=VLR2B(I)+VLR2A(I)+VLR2B(I)+VLR2B(I)*2.0;
				}
			}
		}
		for(I=50;I<=75;I++)
		{
			if (VLR3A(1) == 1)
			{
				VLR2A(I)=pow(VLR2A(I),2.0);
				if (VLR3A(2) == 3)
				{
					VLR2B(I)=pow(VLR2A(I),10.0);
				}
				else
				{
					VLR2B(I)=pow(VLR2A(I),2.0);
				}
			}
			if (I >  10)
			{
				if (VLR3A(1) == 1)
				{
					VLR2A(I)=pow(VLR2A(I),2.0);
					if (VLR3A(2) == 3)
					{
						VLR2B(I)=pow(VLR2A(I),10.0);
					}
					else
					{
						VLR2B(I)=pow(VLR2A(I),2.0);
					}
				}
			}
			else
			{
				VLR2B(I)=VLR2A(I)+VLR2B(I)+VLR2A(I);
				VLR2B(I)=pow(VLR2B(I),2.0);
				VLR2C(I)=VLR2B(I)+VLR2A(I)+VLR2B(I)+VLR2B(I)*2.0;
			}
		}
	}
	printf(" ***  ***\n");
	for(i=1;i<=100;i++){
		printf(" %g %g %g   ",VLR1A(i),VLR1B(i),VLR1C(i));
		printf(" %g %g %g \n",VLR2A(i),VLR2B(i),VLR2C(i));
		printf(" %ld %ld %ld   ",VLR3A(i),VLR3B(i),VLR3C(i));
		printf(" %g %g %g \n",VLR4A(i).real,VLR4B(i).real,VLR4C(i).real);
		printf(" %g %g %g   ",VLR4A(i).imag,VLR4B(i).imag,VLR4C(i).imag);
		printf(" %g \n",(double)VLR6A(i));
	}
	exit (0);
}
