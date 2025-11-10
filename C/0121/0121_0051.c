#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define DA40(i) da40[i-1]
#define CD10(i) cd10[i-1]
#define CD20(i) cd20[i-1]
#define CD30(i) cd30[i-1]
#define LD10(i) ld10[i-1]
#define LD20(i) ld20[i-1]
#define LD30(i) ld30[i-1]
double da10[20],da20[20],da30[20],da40[20];
COMPLEX16 cd10[20],cd20[20],cd30[20];
unsigned long int ld10[20],ld20[20],ld30[20];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=3;
	long int IT4=10;
	long int i,N1,N2,I,J,N3,N4;
	double DX,DY,DZ;

	for(i=0 ; i<20 ; i++)
	{
		da10[i]=1.0;
	}
	for(i=0 ; i<20 ; i++)
	{
		da20[i]=2.0;
	}
	for(i=0 ; i<20 ; i++)
	{
		da30[i]=3.0;
	}
	for(i=0 ; i<20 ; i++)
	{
		da40[i]=4.0;
	}
	for(i=0 ; i<20 ; i++)
	{
		cd10[i].dreal=2.0;
		cd10[i].dimag=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		cd20[i].dreal=2.0;
		cd20[i].dimag=1.0;
		cd20[i+10].dreal=1.5;
		cd20[i+10].dimag=4.0;
	}
	for(i=0 ; i<20 ; i++)
	{
		cd30[i].dreal=1.5;
		cd30[i].dimag=4.0;
	}
	for(i=0 ; i<20 ; i++)
	{
		ld10[i]=0;
		ld20[i]=0;
		ld30[i]=0;
	}

	N1=2;
	for(I=2;I<=IT4;I++)
	{
		N2=I+IT1;
		for(J=N2;J<=20;J++)
		{
			DA10(N2-1)=DA10(N2-1)+DA40(J);
			DA20(J)=DA30(I+N1)*CD20(J).dreal;
			DX=DA10(N2);
			DY=DA20(J-N1);
			CD30(J).dreal=CD30(J).dreal+(double)DX;
			CD30(J).dimag=CD30(J).dimag+(double)DY;
			if ( DX  >   DY )
			{
				DA40(J-N1)=DX-DY;
				LD10(J)=1;
			}
			else
			{
				DA30(N2)=DA30(N2)+CD20(J).dimag;
				LD20(J)=1;
			}
			N3=J-1;
			if ( LD10(J) ==1)
			{
				CD10(N3).dreal=CD10(J).dreal-CD30(N3).dreal;
				CD10(N3).dimag=CD10(J).dimag-CD30(N3).dimag;
			}
			if ( LD20(J) ==1)
			{
				CD20(N3).dreal=CD30(J).dreal-CD10(N3).dreal;
				CD20(N3).dimag=CD30(J).dimag-CD10(N3).dimag;
			}
LBL_20:
			;
		}
LBL_10:
		;
	}

	printf("  ***  *** NO.1 *** \n");
	for(i=1;i<=20;i++)
	{
		printf("  (DA10)  %g ",DA10(i));
	}
	printf("\n");
	for(i=1;i<=20;i++)
	{
		printf("  (DA20)  %g ",DA20(i));
	}
	printf("\n");
	for(i=1;i<=20;i++)
	{
		printf("  (DA30)  %g ",DA30(i));
	}
	printf("\n");
	for(i=1;i<=20;i++)
	{
		printf("  (DA40)  %g ",DA40(i));
	}
	printf("\n");
	for(i=1;i<=20;i++)
	{
		printf("CD10=( %g,%g) ",CD10(i).dreal,CD10(i).dimag);
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}
	for(i=1;i<=20;i++)
	{
		printf("CD20=( %g,%g) ",CD20(i).dreal,CD20(i).dimag);
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}
	for(i=1;i<=20;i++)
	{
		printf("CD30=( %g,%g) ",CD30(i).dreal,CD30(i).dimag);
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}

	N1=-1;
	for(I=1;I<=IT3;I++)
	{
		if ( LD10(I) ==1)
		{
			N2=I;
		}
		else
		{
			N2=I+1;
		}
		N3=I+IT2;
		for(J=IT4;J>=N3;J-=1)
		{
			DX = CD10(J).dreal + CD30(J+N1).dimag;
			DY = DA10(N3) - CD20(J+N2).dimag;
			DZ = fabs(DX-DY);
			N4 = J;
			if ( DX >  DY )
			{
				LD30(J)=1;
				N4=J+IT1;
				DZ=DA20(N4);
				if ( DZ  >   DX )
				{
					DA30(N4)=DA30(J)-DX;
				}
				else
				{
					DA10(J-N1)=CD10(N4).dreal;
					N4=J+IT2;
					CD20(N4).dreal=(double)DY;
					CD20(N4).dimag=(double)DZ;
				}
			}
			CD10(N3).dreal=CD10(N3).dreal+(double)DX;
			CD10(N3).dimag=CD10(N3).dimag+(double)DY;
			DA40(J+N3)=DA40(J+I)-((DX < DZ) ? DX:DZ);
LBL_30:
			;
		}
	}

	printf("  ***  ** NO.2 *** \n");
	for(i=1;i<=20;i++)
	{
		printf("  (DA10)  %g ",DA10(i));
	}
	for(i=1;i<=20;i++)
	{
		printf("  (DA30)  %g ",DA30(i));
	}
	for(i=1;i<=20;i++)
	{
		printf("  (DA40)  %g ",DA40(i));
	}
	for(i=1;i<=20;i++)
	{
		printf("CD10=( %g,%g) ",CD10(i).dreal,CD10(i).dimag);
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}
	for(i=1;i<=20;i++)
	{
		printf("CD20=( %g,%g) ",CD20(i).dreal,CD20(i).dimag);
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}
	for(i=1;i<=20;i++)
	{
		printf("  (LD30)  %lu ",LD30(i));
	}
        printf("\n");
	exit (0);
}
