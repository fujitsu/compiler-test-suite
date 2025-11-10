#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i,j) da10[i-1][j-1]
#define DA20(i,j) da20[i-1][j-1]
#define DA30(i,j) da30[i-1][j-1]
#define DA40(i,j) da40[i-1][j-1]
#define CD10(i,j) cd10[i-1][j-1]
#define CD20(i,j) cd20[i-1][j-1]
#define CD30(i,j) cd30[i-1][j-1]
#define LD10(i,j) ld10[i-1][j-1]
#define LD20(i,j) ld20[i-1][j-1]
#define LD30(i,j) ld30[i-1][j-1]
double    da10[20][20],da20[20][20],da30[20][20],da40[20][20];
COMPLEX16 cd10[20][20],cd20[20][20],cd30[20][20];
unsigned long int ld10[20][20],ld20[20][20],ld30[20][20];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=3;
	long int IT4=10;
	long int i,j,N1,N2,K1,K2,J1,J2,J3,I,I1,I2,I3,I4,I5,I6,II;
	double DX,DY;

	for(j=0 ; j<20 ; j++)
	{
		for(i=0 ; i<20 ; i++)
		{
			da10[i][j]=1.0;
			da20[i][j]=2.0;
			da30[i][j]=3.0;
			da40[i][j]=4.0;
			ld10[i][j]=0;
			ld20[i][j]=0;
			ld30[i][j]=0;
			cd10[i][j].dreal=2.0;
			cd10[i][j].dimag=1.0;
			cd20[i][j].dreal=1.5;
			cd20[i][j].dimag=4.0;
			cd30[i][j].dreal=1.5;
			cd30[i][j].dimag=4.0;
		}
	}

	N1=2;
	for(I=2 ; I<=IT4 ; I++)
	{
		N2=I+IT1;
		for(K1=1 ; K1<=IT4+2 ; K1++)
		{
			for(K2=2 ; K2<=IT4+3 ; K2++)
			{
				CD10(K1,K2).dreal = CD20(K1,K2+1).dreal - CD30(K1,K2).dreal;
				CD10(K1,K2).dimag = CD20(K1,K2+1).dimag - CD30(K1,K2).dimag;
				DA10(K1,K2)       = DA10(K1,K2+1) + CD10(K1,K2-1).dimag;
				if ( ! LD20(K1,K2) ==1)
				{
					LD10(K1,K2)  = 1;
					DA40(K1,K2+2)= CD10(K1,K2).dreal;
				}
LBL_30:
				;
			}
		}

		for(J1=1 ; J1<=20 ; J1++)
		{
			for(J2=1 ; J2<=20 ; J2++)
			{
				for(J3=1 ; J3<=20 ; J3++)
				{
					DA10(J1,J3) = DA20(J1,J3)*DA40(J1,J3);
					DA30(J1,J3) = DA30(J1,J3)*2.0;
LBL_20:
					;
				}
			}
		}

		if ( LD10(I,20)||LD30(I,20) ==1)
		{
			LD20(I,20)=1;
			CD10(I,20).dreal=1.0 ;
			CD10(I,20).dimag=2.0 ;
			goto LBL_10;
		}

		for(I1=IT2 ; I1<=15 ; I1++)
		{
			for(I2=IT3 ; I2<=15 ; I2++)
			{
				for(I3=IT4 ; I3<=18 ; I3++)
				{
					DA20(I2,I3) = DA20(I2-1,I3-1) + DA30(I2,I3+1);
					DX = CD30(I2,I3).dimag - DA40(I1,I2);
					DY = CD20(I2,I3).dreal + DA30(I1,I2);
					if ( DX >  DY )
					{
						LD10(I2,I3)=1;
						CD20(I2,I3).dreal=(double)(DX);
						CD20(I2,I3).dimag=(double)(DY);
					}
					else
					{
						LD20(I2,I3)=1;
						CD30(I2,I3).dreal=(double)(DY);
						CD30(I2,I3).dimag=(double)(DX);
					}
LBL_50:
					;
					DA30(I2,I3)=(DX > DY)  ?  DX : DY;
					DA30(I2,I3)=(DA30(I2,I3) > DA20(I2,I3))  ?
					    DA30(I2,I3) : DA20(I2,I3);
				}
			}

			for(II=1 ; II<=20 ; II++)
			{
				for(I4=1 ; I4<=20 ; I4++)
				{
					if ( LD10(II,I4)==1 || LD20(II,I4) ==1)
					{
						CD10(II,I4).dreal = CD10(II,I4).dreal + DA10(II,I4);
						CD10(II,I4).dimag = CD10(II,I4).dimag + 0;
						LD10(II,I4)=1^LD10(II,I4);
					}
LBL_60:
					;
				}
			}

			if ( LD10(N2,I1) &&  LD20(I,I1) ==1)goto LBL_10         ;
			for(I5=N1 ; I5<=IT4*2 ; I5++)
			{
				for(I6=N2 ; I6<=IT4*2 ; I6++)
				{
					DA20(I5,I6) = DA10(I5,I6)-(DA30(I5,I6)>DA40(I5,I6)) ?
					    DA30(I5,I6):DA40(I5,I6);
LBL_70:
					;
				}
			}
LBL_40:
			;
		}
LBL_10:
		;
	}

	printf("  ***  *** NO.1 *** \n");
	printf(" ### (DA10) ###\n");
	for(j=1 ; j<=20 ; j++)
	{
		printf("\n");
		for(i=1 ; i<=20 ; i++)
		{
			printf(" %g ",DA10(i,j));
		}
	}
	printf(" ### (DA20) ###\n");
	for(j=1 ; j<=20 ; j++)
	{
		printf("\n");
		for(i=1 ; i<=20 ; i++)
		{
			printf(" %g ",DA20(i,j));
		}
	}
	printf(" ### (DA30) ###\n");
	for(j=1 ; j<=20 ; j++)
	{
		printf("\n");
		for(i=1 ; i<=20 ; i++)
		{
			printf(" %g ",DA30(i,j));
		}
	}
	printf(" ### (DA40) ###\n");
	for(j=1 ; j<=20 ; j++)
	{
		printf("\n");
		for(i=1 ; i<=20 ; i++)
		{
			printf(" %g ",DA40(i,j));
		}
	}
	printf(" ### (CD10) ###\n");
	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf("(%g,%g) ",CD10(i,j).dreal,CD10(i,j).dimag);
			if(i==10 || i==20)
			{
				printf("\n");
			}
		}
	}
	printf(" ### (CD20) ###\n");
	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf("(%g,%g) ",CD20(i,j).dreal,CD20(i,j).dimag);
			if(i==10 || i==20)
			{
				printf("\n");
			}
		}
	}
	printf(" ### (CD30) ###\n");
	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf("(%g,%g) ",CD30(i,j).dreal,CD30(i,j).dimag);
			if(i==10 || i==20)
			{
				printf("\n");
			}
		}
	}
	exit (0);
}
