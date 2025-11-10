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
float scr1a[2048],scr1b[2048],scr1c[2048],scr1d[2048];
float scr2a[2048],scr2b[2048],scr2c[2048],scr2d[2048];
float scr3a[2048],scr3b[2048],scr3c[2048],scr3d[2048];
float scr4a[2048],scr4b[2048],scr4c[2048],scr4d[2048];
int main()
{
	long int N=2048;
	long int I,J,i,j,KKK;
	for(i=0;i< 1024;i++){
		vlr1a[i]=1.0;
		vlr1b[i]=2.0;
	}
	for(i=0;i< 2048;i++){
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
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=31;I++)
		{
			if (N >  50)
			{
				SCR1A(I)=SCR1A(I+1);
				SCR1A(I+1)=SCR1A(I+2);
				SCR1B(I)=SCR1A(I+1);
			}
			else
			{
				SCR1B(I+1)=SCR1A(I+2);
				SCR1C(I)=SCR1A(I+1);
			}
			SCR1C(I+1)=SCR1A(I+2);
			SCR1D(I)=SCR1A(I+1);
			SCR1D(I+1)=(J+1);
LBL_10:
			;
		}
	}
	VLR1A(1)=VLR1B(N-2000);
	for(J=1;J<=2;J++)
	{
		for(I=32;I<=70;I++)
		{
			VLR1A(1)=VLR1A(1)+(float)(I)+(float)(J)+(float)(N-2000);
			SCR2A(I)=SCR1A(I+1)+1;
			SCR2A(I+1)=SCR1A(I+2)+1;
			SCR2A(I+2)=SCR1A(I+3)+1;
			SCR2B(I)=SCR1A(I+1);
			SCR2B(I+1)=SCR1A(I+2);
			SCR2B(I+2)=SCR1A(I+2)+1;
			SCR2C(I)=SCR1A(I+3)+1;
			SCR2C(I+1)=SCR1A(I+2)+1;
			SCR2C(I+2)=SCR1A(I+2)+1;
			SCR2D(I)=SCR1A(I+3)+1;
			SCR2D(I+1)=SCR1A(I+2)+1;
			SCR2D(I+2)=SCR1A(I+2)+1+SCR2D(52);
LBL_20:
			;
		}
	}
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=80;I+=160)
		{
			VLR1A(I)=VLR1A(I)+VLR1B(I);
			if (I <= 96 &&  N >  I)
			{
				SCR3A(I+2)=SCR1A(I+3)+1;
				SCR3A(I+3)=SCR1A(I+3)+1;
				SCR3B(I)=SCR1A(I+1)+1;
				SCR3B(I+1)=SCR3A(I+2)+1;
				SCR3B(I+2)=SCR3A(I+2)+1;
				SCR3B(I+3)=SCR3A(I+2)+1;
				SCR3C(I)=SCR3A(I+3)+1;
				SCR3C(I+1)=SCR3A(I+2)+1;
				SCR3C(I+2)=SCR3A(I+2)+1;
				SCR3C(I+3)=SCR3A(I+2)+1;
				SCR3D(I)=SCR3A(I+3)+1;
				SCR3D(I+1)=SCR3A(I+2)+1;
				SCR3D(I+2)=SCR3A(I+2)+1;
				SCR3D(I+3)=SCR3A(I+2)+1;
			}
LBL_30:
			;
		}
	}
	for(J=1;J<=N;J+=1024)
	{
		for(I=170;I<=370;I++)
		{
			SCR4A(I)=SCR1A(I+1)+1;
			SCR4A(I+1)=SCR1A(I+2)+1;
			SCR4A(I+2)=SCR1A(I+3)+1;
			SCR4A(I+3)=SCR1A(I+3)+1;
			SCR4A(I+4)=SCR1A(I+3)+1;
			if (SCR4A(I+5) >  SCR4A(2048)) SCR4A(2048)=SCR4A(I+5);
			SCR4B(I+1)=SCR1A(I+2)+1;
			SCR4B(I+2)=SCR1A(I+2)+1;
			SCR4B(I+3)=SCR1A(I+2)+1;
			SCR4B(I+4)=SCR1A(I+2)+1;
			SCR4C(I)=SCR1A(I+3)+1;
			SCR4C(I+1)=SCR1A(I+2)+1;
			SCR4C(I+2)=SCR1A(I+2)+1;
			SCR4C(I+3)=SCR1A(I+2)+1;
			SCR4C(I+4)=SCR1A(I+2)+1;
			SCR4D(I)=SCR1A(I+3)+1;
			SCR4D(I+1)=SCR1A(I+2)+1;
			SCR4D(I+2)=SCR1A(I+2)+1;
			SCR4D(I+3)=SCR1A(I+2)+1;
			SCR3D(I+4)=SCR1A(I+2)+1;
LBL_40:
			;
		}
	}
	for(KKK=1;KKK<=50;KKK++)
	{
		for(I=380;I<=800;I++)
		{
			SCR1A(I)=SCR1A(I+1);
			SCR1A(I+1)=SCR1A(I+2);
			SCR1B(I)=SCR1A(I+1)+1;
			SCR1B(I+1)=SCR1A(I+2);
			SCR1C(I)=SCR1A(I+1);
			SCR1C(I+1)=SCR1A(I+2);
			SCR1D(I)=SCR1A(I+1);
			SCR1D(I+1)=(J+1)+KKK;
LBL_110:
			;
		}
	}
	for(J=1;J<=2;J++)
	{
		for(I=800;I<=1600;I++)
		{
			if ((N == 2048) || (J == 1))
			{
				SCR2A(I)=SCR1A(I+1)+1;
			}
			else
			{
				SCR2C(I)=SCR1A(I+3)+1;
			}
			SCR2D(I+2)=SCR1A(I+2)+1;
LBL_120:
			;
		}
	}
	for(J=1;J<=N-2040;J++)
	{
		for(I=1;I<=10;I+=2)
		{
			if (I >  5) SCR1A(I)=SCR1A(I)+SCR1B(I);
LBL_201:
			;
		}
		for(I=1;I<=72;I+=2)
		{
			if (I >  5) SCR2A(I)=SCR2A(I)+SCR2B(I);
LBL_202:
			;
		}
		for(I=1;I<=250;I+=2)
		{
			if (I >  5) SCR3A(I)=SCR3A(I)+SCR3B(I);
LBL_203:
			;
		}
		for(I=1;I<=500;I+=2)
		{
			if (I >  5) SCR4A(I)=SCR4A(I)+SCR4B(I);
LBL_204:
			;
		}
		for(I=1024;I<=2048;I+=2)
		{
			if (I >  5) SCR1B(I)=SCR1B(I)+SCR1B(I);
LBL_205:
			;
		}
		for(I=1;I<=2048;I+=2)
		{
			if (I >  5) SCR1A(I)=SCR1A(I)+SCR1B(I);
LBL_206:
			;
		}
LBL_200:
		;
	}
	for(I=2;I<=2048;I++)
	{
		SCR1A(1)=SCR1A(1)+SCR1A(I);
		SCR2A(1)=SCR2A(1)+SCR2A(I);
		SCR3A(1)=SCR3A(1)+SCR3A(I);
		SCR4A(1)=SCR4A(1)+SCR4A(I);
		SCR1B(1)=SCR1B(1)+SCR1B(I);
		SCR2B(1)=SCR2B(1)+SCR2B(I);
		SCR3B(1)=SCR3B(1)+SCR3B(I);
		SCR4B(1)=SCR4B(1)+SCR4B(I);
		SCR1C(1)=SCR1C(1)+SCR1C(I);
		SCR2C(1)=SCR2C(1)+SCR2C(I);
		SCR3C(1)=SCR3C(1)+SCR3C(I);
		SCR4C(1)=SCR4C(1)+SCR4C(I);
		SCR1D(1)=SCR1D(1)+SCR1D(I);
		SCR2D(1)=SCR2D(1)+SCR2D(I);
		SCR3D(1)=SCR3D(1)+SCR3D(I);
LBL_300:
		;
		SCR4D(1)=SCR4D(1)+SCR4D(I);
	}
	printf(" %g %g %g %g   ",SCR1A(1),SCR1B(1),SCR1C(1),SCR1D(1));
	printf(" %g %g %g %g \n",SCR2A(1),SCR2B(1),SCR2C(1),SCR2D(1));
	printf(" %g %g %g %g   ",SCR3A(1),SCR3B(1),SCR3C(1),SCR3D(1));
	printf(" %g %g %g %g \n",SCR4A(1),SCR4B(1),SCR4C(1),SCR4D(1));
	for(i=1;i<=1024;i++){
		printf(" %g %g \n",VLR1A(i),VLR1B(i));
	}
	exit (0);
}
