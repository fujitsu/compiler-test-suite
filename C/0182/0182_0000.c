#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L(i) l[i-1]
#define VLR1A(i) vlr1a[i-1]
#define VLR1B(i) vlr1b[i-1]
#define VLR2A(i) vlr2a[i-1]
#define VLR2B(i) vlr2b[i-1]
#define VLR3A(i) vlr3a[i-1]
#define VLR3B(i) vlr3b[i-1]
#define VLR4A(i) vlr4a[i-1]
#define VLR4B(i) vlr4b[i-1]
#define VLR5A(i) vlr5a[i-1]
#define VLR5B(i) vlr5b[i-1]
#define VLR6A(i) vlr6a[i-1]
#define VLR6B(i) vlr6b[i-1]
#define VLR1D(i) vlr1d[i-1]
#define VLR2D(i) vlr2d[i-1]
#define VLR3D(i) vlr3d[i-1]
#define VLR4D(i) vlr4d[i-1]
#define VLR5D(i) vlr5d[i-1]
#define VLR6D(i) vlr6d[i-1]
#define VLR1C(i) t.s.vlr1c[i-1]
#define VLR2C(i) t.s.vlr2c[i-1]
#define VLR3C(i) t.s.vlr3c[i-1]
#define VLR4C(i) t.s.vlr4c[i-1]
#define VLR5C(i) t.s.vlr5c[i-1]
#define VLR6C(i) t.vlr6c[i-1]
unsigned long int l[1024];
float vlr1a[32],vlr1b[32];
float vlr2a[64],vlr2b[64];
float vlr3a[128],vlr3b[128];
float vlr4a[256],vlr4b[256];
float vlr5a[512],vlr5b[512];
float vlr6a[1024],vlr6b[1024];
double vlr1d[32];
double vlr2d[64];
double vlr3d[128];
double vlr4d[256];
double vlr5d[512];
double vlr6d[1024];
struct m {
	double vlr1c[32];
	double vlr2c[64];
	double vlr3c[128];
	double vlr4c[256];
	double vlr5c[512];
};
union {
	double vlr6c[1024];
	struct m s         ;
} t;
int main()
{
	long int i,j,I,J;
	for(I=1;I<=32;I++)
	{
LBL_10:
		;
		VLR1A(I)=1.0;
	}
	for(I=1;I<=64;I++)
	{
LBL_20:
		;
		VLR2A(I)=1.0;
	}
	for(I=1;I<=128;I++)
	{
LBL_30:
		;
		VLR3A(I)=1.0;
	}
	for(I=1;I<=256;I++)
	{
LBL_40:
		;
		VLR4A(I)=1.0;
	}
	for(I=1;I<=512;I++)
	{
LBL_50:
		;
		VLR5A(I)=1.0;
	}
	for(I=1;I<=1024;I++)
	{
LBL_60:
		;
		VLR6A(I)=1.0;
	}
	for(I=1;I<=32;I++)
	{
		if (I >  16) VLR1A(I)=2.0;
	}
	for(I=1;I<=512;I++)
	{
		if (I >  256) VLR5A(I)=2.0;
	}
	for(I=1;I<=64;I++)
	{
		if (I >  32) VLR2A(I)=2.0;
	}
	for(I=1;I<=256;I++)
	{
		if (I >  128) VLR4A(I)=2.0;
	}
	for(I=1;I<=128;I++)
	{
		if (I >  64) VLR3A(I)=2.0;
	}
	for(I=1;I<=1024;I++)
	{
		if (I >  512) VLR6A(I)=2.0;
	}
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=32;I++)
		{
			if (I >  20)
			{
				VLR1B(I)=3.0;
			}
			else
			{
				if(VLR1A(1)==2.0) VLR1B(I)=4.0;
			}
LBL_1000:
			;
		}
	}
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=64;I++)
		{
			if (I >  20)
			{
				VLR2B(I)=3.0;
			}
			else
			{
				if (VLR2A(1)==2.0) VLR2B(I)=4.0;
			}
LBL_2000:
			;
		}
	}
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=128;I++)
		{
			if (I >  60)
			{
				VLR3B(I)=3.0;
			}
			else
			{
				if (VLR3A(1)==2.0) VLR3B(I)=4.0;
			}
LBL_3000:
			;
		}
	}
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=256;I++)
		{
			if (I >  220)
			{
				VLR4B(I)=3.0;
			}
			else
			{
				if (VLR4A(1)==2.0) VLR4B(I)=4.0;
			}
LBL_4000:
			;
		}
	}
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=512;I++)
		{
			if (I >  20)
			{
				VLR5B(I)=3.0;
			}
			else
			{
				if (VLR5A(1)==2.0) VLR5B(I)=4.0;
			}
LBL_5000:
			;
		}
	}
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=1024;I++)
		{
			if (I >  20)
			{
				L(I)=(2.0>VLR6A(I))?1:0;
				VLR6B(I)=3.0;
			}
			else
			{
				if (VLR6A(1)==2.0) {
					L(I)=(2.0==VLR6A(I))?1:0;
					VLR6B(I)=4.0;
				}
			}
LBL_6000:
			;
		}
	}
	VLR6B(1024)=6.5;
	for(I=500;I<=1001;I++)
	{
		if ( I%2 )        L(I)=(VLR6B(1024) > 7.0)?1:0;
		if ((I-450)%2 )   L(I-450)=(VLR6B(1024) > 7.0)?1:0;
LBL_7000:
		;
	}
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=32;I++)
		{
			if (I >  16)
			{
				VLR1C(I)=1.0;
			}
			else
			{
				VLR1C(I)=I;
			}
LBL_8001:
			;
			VLR1D(I)=I;
		}
		for(I=1;I<=64;I++)
		{
			if (L(I)) VLR2C(I)=I+1.0;
			VLR2C(I)=I;
LBL_8002:
			;
			VLR2D(I)=I;
		}
		for(I=1;I<=128;I++)
		{
			if (L(I)) VLR3C(I)=I+1.0;
			VLR3C(I)=I;
LBL_8003:
			;
			VLR3D(I)=I;
		}
		for(I=1;I<=256;I++)
		{
			if (L(I)) VLR4C(I)=I+1.0;
			VLR4C(I)=I;
LBL_8004:
			;
			VLR4D(I)=I;
		}
		for(I=1;I<=512;I++)
		{
			if (L(I)) VLR5C(I)=I+1.0;
			VLR5C(I)=I;
LBL_8005:
			;
			VLR5D(I)=I;
		}
		for(I=1;I<=1024;I++)
		{
			VLR6C(I)=I;
LBL_8000:
			;
			VLR6D(I)=I;
		}
	}
	printf(" ***  ***\n");
	for(i=1;i<=32;i+=4){
		printf(" %g %g %g %g ",VLR1A(i),VLR1B(i),VLR1C(i),VLR1D(i));
		printf(" %g %g %g %g ",VLR1A(i+1),VLR1B(i+1),VLR1C(i+1),VLR1D(i+1));
		printf(" %g %g %g %g ",VLR1A(i+2),VLR1B(i+2),VLR1C(i+2),VLR1D(i+2));
		printf(" %g %g %g %g \n",VLR1A(i+3),VLR1B(i+3),VLR1C(i+3),VLR1D(i+3));
	}
	for(i=1;i<=64;i+=4){
		printf(" %g %g %g %g ",VLR2A(i),VLR2B(i),VLR2C(i),VLR2D(i));
		printf(" %g %g %g %g ",VLR2A(i+1),VLR2B(i+1),VLR2C(i+1),VLR2D(i+1));
		printf(" %g %g %g %g ",VLR2A(i+2),VLR2B(i+2),VLR2C(i+2),VLR2D(i+2));
		printf(" %g %g %g %g \n",VLR2A(i+3),VLR2B(i+3),VLR2C(i+3),VLR2D(i+3));
	}
	for(i=1;i<=128;i+=4){
		printf(" %g %g %g %g ",VLR3A(i),VLR3B(i),VLR3C(i),VLR3D(i));
		printf(" %g %g %g %g ",VLR3A(i+1),VLR3B(i+1),VLR3C(i+1),VLR3D(i+1));
		printf(" %g %g %g %g ",VLR3A(i+2),VLR3B(i+2),VLR3C(i+2),VLR3D(i+2));
		printf(" %g %g %g %g \n",VLR3A(i+3),VLR3B(i+3),VLR3C(i+3),VLR3D(i+3));
	}
	for(i=1;i<=256;i+=4){
		printf(" %g %g %g %g ",VLR4A(i),VLR4B(i),VLR4C(i),VLR4D(i));
		printf(" %g %g %g %g ",VLR4A(i+1),VLR4B(i+1),VLR4C(i+1),VLR4D(i+1));
		printf(" %g %g %g %g ",VLR4A(i+2),VLR4B(i+2),VLR4C(i+2),VLR4D(i+2));
		printf(" %g %g %g %g \n",VLR4A(i+3),VLR4B(i+3),VLR4C(i+3),VLR4D(i+3));
	}
	for(i=1;i<=512;i+=4){
		printf(" %g %g %g %g ",VLR5A(i),VLR5B(i),VLR5C(i),VLR5D(i));
		printf(" %g %g %g %g ",VLR5A(i+1),VLR5B(i+1),VLR5C(i+1),VLR5D(i+1));
		printf(" %g %g %g %g ",VLR5A(i+2),VLR5B(i+2),VLR5C(i+2),VLR5D(i+2));
		printf(" %g %g %g %g \n",VLR5A(i+3),VLR5B(i+3),VLR5C(i+3),VLR5D(i+3));
	}
	for(i=1;i<=1024;i+=4){
		printf(" %g %g %g %d ",VLR6A(i),VLR6B(i),VLR6D(i),L(i));
		printf(" %g %g %g %d ",VLR6A(i+1),VLR6B(i+1),VLR6D(i+1),L(i+1));
		printf(" %g %g %g %d ",VLR6A(i+2),VLR6B(i+2),VLR6D(i+2),L(i+2));
		printf(" %g %g %g %d \n",VLR6A(i+3),VLR6B(i+3),VLR6D(i+3),L(i+3));
	}
	exit (0);
}
