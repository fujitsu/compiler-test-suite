#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define VLR1A(i) vlr1a[i-1]
#define VLR1B(i) vlr1b[i-1]
#define SCR1A(i) scr1a[i-1]
#define SCR1B(i) scr1b[i-1]
#define SCR1C(i) scr1c[i-1]
#define SCR1D(i) scr1d[i-1]
#define SCR2A(i) scr2a[i-1]
#define SCR2B(i) scr2b[i-1]
#define SCR2C(i) scr2c[i-1]
#define SCR2D(i) scr2d[i-1]
#define SCR3A(i) scr3a[i-1]
#define SCR3B(i) scr3b[i-1]
#define SCR3C(i) scr3c[i-1]
#define SCR3D(i) scr3d[i-1]
#define SCR4A(i) scr4a[i-1]
#define SCR4B(i) scr4b[i-1]
#define SCR4C(i) scr4c[i-1]
#define SCR4D(i) scr4d[i-1]
float vlr1a[1024],vlr1b[1024];
long int scr1a[100],scr1b[100],scr1c[100],scr1d[100];
long int scr2a[100],scr2b[100],scr2c[100],scr2d[100];
long int scr3a[100],scr3b[100],scr3c[100],scr3d[100];
long int scr4a[100],scr4b[100],scr4c[100],scr4d[100];
int main()
{
	long int N=100,J=2;
	long int I,i,j,KKK;
	for(i=0;i< 1024;i++){
		vlr1a[i]=1.0;
		vlr1b[i]=2.0;
	}
	for(i=0;i< 100;i++){
		scr1a[i]=1;
		scr1b[i]=2;
		scr1c[i]=1;
		scr1d[i]=2;
		scr2a[i]=1;
		scr2b[i]=2;
		scr2c[i]=1;
		scr2d[i]=2;
		scr3a[i]=1;
		scr3b[i]=2;
		scr3c[i]=1;
		scr3d[i]=2;
		scr4a[i]=1;
		scr4b[i]=2;
		scr4c[i]=1;
		scr4d[i]=2;
	}
	printf(" ***  ***\n");
	for(I=1;I<=50;I++)
	{
		SCR1A(I)  =pow(SCR1A(I+1),J);
		SCR1A(I+1)=pow(SCR1A(I+2),J);
		SCR1B(I)  =pow(SCR1A(I+1),J);
		SCR1B(I+1)=pow(pow(pow(SCR1A(I+2),J),SCR1A(I+2)),SCR1A(I+1));
		SCR1C(I)  =pow(SCR1A(I+1),J);
		SCR1C(I+1)=pow(SCR1A(I+2),J);
		SCR1D(I)  =pow(SCR1A(I+1),J);
		SCR1D(I+1)=pow((J+1),SCR1A(I+2))+0.5;
LBL_10:
		;
	}
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=50;I++)
		{
			SCR2A(I)  =SCR1A(I+1)+1;
			SCR2A(I+1)=SCR1A(I+2)+1;
			SCR2A(I+2)=SCR1A(I+3)+1;
			SCR2B(I)  =pow(SCR1A(I+1),J);
			SCR2B(I+1)=pow(SCR1A(I+2),I);
			SCR2B(I+2)=pow(pow(SCR1A(I+2),I),SCR1A(I+2));
			SCR2C(I)  =SCR1A(I+3)+1;
			SCR2C(I+1)=SCR1A(I+2)+1;
			SCR2C(I+2)=SCR1A(I+2)+1;
			SCR2D(I)  =SCR1A(I+3)+1;
			SCR2D(I+1)=SCR1A(I+2)+1;
			SCR2D(I+2)=SCR1A(I+2)+1;
LBL_20:
			;
		}
	}
	for(I=1;I<=N;I++)
	{
		VLR1A(I)=VLR1A(I)+pow(VLR1B(I),3);
		if (I <= 96)
		{
			SCR3A(I+2)=pow(SCR1A(I+3),(int)(VLR1B(I)));
			SCR3A(I+3)=pow(SCR1A(I+3),(int)(VLR1B(I)));
			SCR3B(I)  =SCR1A(I+1)+1;
			SCR3B(I+1)=SCR1A(I+2)+1;
			SCR3B(I+2)=SCR1A(I+2)+1+(int)(VLR1A(I));
			SCR3B(I+3)=SCR1A(I+2)+1;
			SCR3C(I)  =SCR1A(I+3)+1+(int)(VLR1B(I));
			SCR3C(I+1)=SCR1A(I+2)+1;
			SCR3C(I+2)=SCR1A(I+2)+1;
			SCR3C(I+3)=SCR1A(I+2)+1;
			SCR3D(I)  =SCR1A(I+3)+1;
			SCR3D(I+1)=SCR1A(I+2)+1;
			SCR3D(I+2)=SCR1A(I+2)+1;
			SCR3D(I+3)=SCR1A(I+2)+1;
		}
LBL_30:
		;
	}
	for(I=1;I<=N-12;I++)
	{
		SCR4A(I)  =SCR1A(I+1)+1;
		SCR4A(I+1)=SCR1A(I+2)+1;
		SCR4A(I+2)=SCR1A(I+3)+1;
		SCR4A(I+3)=SCR1A(I+3)+1;
		SCR4A(I+4)=pow(SCR1A(I+3),abs(N-98));
		SCR4B(I)  =SCR1A(I+1)+1;
		SCR4B(I+1)=pow(SCR1A(I+2),abs(N-98));
		SCR4B(I+2)=SCR1A(I+2)+1;
		SCR4B(I+3)=pow(SCR1A(I+2),abs(N-97));
		SCR4B(I+4)=SCR1A(I+2)+1;
		SCR4C(I)  =SCR1A(I+3)+1;
		SCR4C(I+1)=SCR1A(I+2)+1;
		SCR4C(I+2)=SCR1A(I+2)+1;
		SCR4C(I+3)=SCR1A(I+2)+1;
		SCR4C(I+4)=SCR1A(I+2)+1;
		SCR4D(I)  =SCR1A(I+3)+1;
		SCR4D(I+1)=SCR1A(I+2)+1;
		SCR4D(I+2)=SCR1A(I+2)+1;
		SCR4D(I+3)=SCR1A(I+2)+1;
		SCR3D(I+4)=SCR1A(I+2)+1;
LBL_40:
		;
	}
	J=1;
	for(KKK=1;KKK<=50;KKK++)
	{
		J=2;
		for(I=1;I<=50;I++)
		{
			SCR1A(I)  =pow(SCR1A(I+1),J);
			SCR1A(I+1)=pow(SCR1A(I+2),J);
			SCR1B(I)  =pow(SCR1A(I+1),J);
			SCR1B(I+1)=pow(SCR1A(I+2),J);
			SCR1C(I)  =pow(SCR1A(I+1),J);
			SCR1C(I+1)=pow(SCR1A(I+2),J);
			SCR1D(I)  =pow(SCR1A(I+1),J);
			SCR1D(I+1)=pow((J+1),SCR1A(I+2))+0.5;
LBL_110:
			;
		}
		for(J=1;J<=2;J++)
		{
			for(I=1;I<=50;I++)
			{
				SCR2A(I)  =SCR1A(I+1)+1;
				SCR2A(I+1)=SCR1A(I+2)+1;
				SCR2A(I+2)=SCR1A(I+3)+1;
				SCR2B(I)  =pow(SCR1A(I+1),KKK);
				SCR2B(I+1)=pow(SCR1A(I+2),I);
				SCR2B(I+2)=pow(pow(SCR1A(I+2),J),KKK);
				SCR2C(I)  =SCR1A(I+3)+1;
				SCR2C(I+1)=SCR1A(I+2)+1;
				SCR2C(I+2)=SCR1A(I+2)+1*KKK;
				SCR2D(I)  =SCR1A(I+3)+1;
				SCR2D(I+1)=SCR1A(I+2)+1;
				SCR2D(I+2)=SCR1A(I+2)+1;
LBL_120:
				;
			}
		}
		for(I=1;I<=N;I++)
		{
			VLR1A(I)=VLR1A(I)+VLR1B(I);
			if (I <= 96 &&  I >  50)
			{
				SCR3A(I+2)=pow(SCR1A(I+3),(int)(VLR1B(I)));
				SCR3A(I+3)=pow(SCR1A(I+3),(int)(VLR1B(I))+1);
				SCR3B(I)  =pow(SCR1A(I+1),KKK);
				SCR3B(I+1)=pow(SCR1A(I+2),I);
				SCR3B(I+2)=pow(SCR1A(I+2),I);
				SCR3B(I+3)=SCR1A(I+2)+1;
				SCR3C(I)  =SCR1A(I+3)+1;
				SCR3C(I+1)=SCR1A(I+2)+1;
				SCR3C(I+2)=SCR1A(I+2)+1;
				SCR3C(I+3)=SCR1A(I+2)+1;
				SCR3D(I)  =pow(SCR1A(I+3),KKK);
				SCR3D(I+1)=SCR1A(I+2)+1;
				SCR3D(I+2)=SCR1A(I+2)+1;
				SCR3D(I+3)=SCR1A(I+2)+1;
			}
LBL_130:
			;
		}
		for(I=1;I<=N-20;I+=2)
		{
			SCR4A(I)  =SCR1A(I+1)+1;
			SCR4A(I+1)=SCR1A(I+2)+1;
			SCR4A(I+2)=pow(SCR1A(I+3),KKK);
			SCR4A(I+3)=pow(SCR1A(I+3),I);
			SCR4A(I+4)=SCR1A(I+3)+1;
			SCR4B(I)  =pow(SCR1A(I+1),KKK);
			SCR4B(I+1)=SCR1A(I+2)+1;
			SCR4B(I+2)=SCR1A(I+2)+1;
			SCR4B(I+3)=SCR1A(I+2)+1;
			SCR4B(I+4)=SCR1A(I+2)+1;
			SCR4C(I)  =SCR1A(I+3)+1;
			SCR4C(I+1)=SCR1A(I+2)+1;
			SCR4C(I+2)=SCR1A(I+2)+1;
			SCR4C(I+3)=SCR1A(I+2)+1;
			SCR4C(I+4)=SCR1A(I+2)+1;
			SCR4D(I)  =SCR1A(I+3)+1;
			SCR4D(I+1)=SCR1A(I+2)+1;
			SCR4D(I+2)=SCR1A(I+2)+1;
			SCR4D(I+3)=SCR1A(I+2)+1;
			SCR3D(I+4)=SCR1A(I+2)+1;
LBL_140:
			;
		}
	}
	for(i=1;i<=100;i++){
		printf(" %ld %ld %ld %ld   ",SCR1A(i),SCR1B(i),SCR1C(i),SCR1D(i));
		printf(" %ld %ld %ld %ld \n",SCR2A(i),SCR2B(i),SCR2C(i),SCR2D(i));
		printf(" %ld %ld %ld %ld   ",SCR3A(i),SCR3B(i),SCR3C(i),SCR3D(i));
		printf(" %ld %ld %ld %ld \n",SCR4A(i),SCR4B(i),SCR4C(i),SCR4D(i));
		printf(" %g %g \n",VLR1A(i),VLR1B(i));
	}
	exit (0);
}
