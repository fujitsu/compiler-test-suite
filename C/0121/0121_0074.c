#include <stdlib.h>
#include <math.h>
#include "000.h"
#include <stdio.h>
int SUB2(double da10[20][20][20], double da20[20][20][20], double da30[20][20][20], double da40[20][20][20], unsigned long int ld10[20][20][20], unsigned long int ld20[20][20][20], long int NN);
int SUB1(double da10[20][20][20], double da20[20][20][20], double da30[20][20][20], double da40[20][20][20], unsigned long int ld10[20][20][20], unsigned long int ld20[20][20][20], long int NN);
#define DA10(i,j,k) da10[i-1][j-1][k-1]
#define DA20(i,j,k) da20[i-1][j-1][k-1]
#define DA30(i,j,k) da30[i-1][j-1][k-1]
#define DA40(i,j,k) da40[i-1][j-1][k-1]
#define LD10(i,j,k) ld10[i-1][j-1][k-1]
#define LD20(i,j,k) ld20[i-1][j-1][k-1]
#define CD10(i,j,k) cd10[i-1][j-1][k-1]
#define CD20(i,j,k) cd20[i-1][j-1][k-1]
double   da10[20][20][20],da20[20][20][20],da30[20][20][20],
da40[20][20][20] ;
unsigned long int ld10[20][20][20],ld20[20][20][20] ;
COMPLEX16 cd10[20][20][20],cd20[20][20][20] ;
int main()
{
	long int NN = 20 ;
	long int I,J,i,j,k,K;
	double DX,DY,DZ ;

	for(k=0 ; k<20 ; k++)
	{
		for(j=0 ; j<20 ; j++)
		{
			for(i=0 ; i<20 ; i++)
			{
				da10[i][j][k]=1.0 ;
			}
		}
	}
	for(k=0 ; k<20 ; k++)
	{
		for(j=0 ; j<20 ; j++)
		{
			for(i=0 ; i<20 ; i++)
			{
				da20[i][j][k]=2.0 ;
			}
		}
	}
	for(k=0 ; k<20 ; k++)
	{
		for(j=0 ; j<20 ; j++)
		{
			for(i=0 ; i<20 ; i++)
			{
				da30[i][j][k]=3.0 ;
			}
		}
	}
	for(k=0 ; k<20 ; k++)
	{
		for(j=0 ; j<20 ; j++)
		{
			for(i=0 ; i< 20 ; i++)
			{
				da40[i][j][k]=4.0 ;
			}
		}
	}
	for(k=0 ; k<20 ; k++)
	{
		for(j=0 ; j<20 ; j++)
		{
			for(i=0 ; i<20 ; i++)
			{
				ld10[i][j][k]=0;
			}
		}
	}
	for(k=0 ; k<20 ; k++)
	{
		for(j=0 ; j<20 ; j++)
		{
			for(i=0 ; i<20 ; i++)
			{
				ld20[i][j][k]=0;
			}
		}
	}

	for(i=1 ; i<=NN ; i++)
	{
		DX=(double)(i) ;
		for(j=1 ; j<=NN ; j++)
		{
			DY=(double)(j) ;
			for(k=1 ; k<=NN ; k++)
			{
				DZ=(double)(k) ;
				CD10(i,j,k).dreal = (double)(DX) ;
				CD10(i,j,k).dimag = (double)(DY) ;
				CD20(i,j,k).dreal = (double)(DY) ;
				CD20(i,j,k).dimag = (double)(DZ) ;
LBL_10: 
				;
			}
		}
	}

	SUB1(da10,da20,da30,da40,ld10,ld20,NN) ;
	SUB2(da10,da20,da30,da40,ld10,ld20,NN) ;
	printf(" DA10=   \n") ;
	for(k=1 ; k<=20 ; k++)
	{
		for(j=1 ; j<=20 ; j++)
		{
			printf("\n") ;
			for(i=1 ; i<=20 ; i++)
			{
				printf("%g ",DA10(i,j,k)) ;
			}
		}
	}
	printf("\n") ;
	printf(" DA20=   \n") ;
	for(k=1 ; k<=20 ; k++)
	{
		for(j=1 ; j<=20 ; j++)
		{
			printf("\n") ;
			for(i=1 ; i<=20 ; i++)
			{
				printf("%g ",DA20(i,j,k)) ;
			}
		}
	}
	printf("\n") ;
	printf(" DA30=   \n") ;
	for(k=1 ; k<=20 ; k++)
	{
		for(j=1 ; j<=20 ; j++)
		{
			printf("\n") ;
			for(i=1 ; i<=20 ; i++)
			{
				printf("%g ",DA30(i,j,k)) ;
			}
		}
	}
	printf("\n") ;
	printf(" DA40=   \n") ;
	for(k=1 ; k<=20 ; k++)
	{
		for(j=1 ; j<=20 ; j++)
		{
			printf("\n") ;
			for(i=1 ; i<=20 ; i++)
			{
				printf("%g ",DA40(i,j,k)) ;
			}
		}
	}
	printf("\n") ;
	printf(" LD10=   \n") ;
	for(k=1 ; k<=20 ; k++)
	{
		for(j=1 ; j<=20 ; j++)
		{
			printf("\n") ;
			for(i=1 ; i<=20 ; i++)
			{
				printf("%lu ",LD10(i,j,k)) ;
			}
		}
	}
	printf("\n") ;
	printf(" LD20=   \n") ;
	for(k=1 ; k<=20 ; k++)
	{
		for(j=1 ; j<=20 ; j++)
		{
			printf("\n") ;
			for(i=1 ; i<=20 ; i++)
			{
				printf("%lu ",LD20(i,j,k)) ;
			}
		}
	}
	printf("\n") ;
	printf(" CD10=   \n") ;
	for(k=1 ; k<=20 ; k++)
	{
		for(j=1 ; j<=20 ; j++)
		{
			for(i=1 ; i<=20 ; i++)
			{
				printf("(%g,%g)",CD10(i,j,k).dreal,CD10(i,j,k).dimag)    ;
				if(i==10 || i==20)
				{
					printf("\n");
				}
			}
		}
	}
	printf("\n") ;
	printf(" CD20=   \n") ;
	for(k=1 ; k<=20 ; k++)
	{
		for(j=1 ; j<=20 ; j++)
		{
			for(i=1 ; i<=20 ; i++)
			{
				printf("(%g,%g)",CD20(i,j,k).dreal,CD20(i,j,k).dimag);
				if(i==10 || i==20)
				{
					printf("\n");
				}
			}
		}
	}
	printf("\n") ;
	exit (0);
}
int SUB1(da10,da20,da30,da40,ld10,ld20,NN)
double da10[20][20][20],da20[20][20][20],da30[20][20][20],
da40[20][20][20] ;
unsigned long int ld10[20][20][20],ld20[20][20][20] ;
long int NN;
{
	long int NX,NY,II,I1,NXX,I2,I3 ;
	double DX,DY ;
	unsigned long int LXX ;
	NX = NN - 2 ;
	for(II=1 ; II<=3 ; II++)
	{
		NY = NN - II ;
		for(I1=2 ; I1<=NY ; I1+=2)
		{
			DX = (double)(I1) ;
			NXX = I1 - 1 ;
			LXX = 1 ;
			for(I2=2 ; I2<=NX ; I2+=2)
			{
				DY = DA10(I1+1,I2+1,II) ;
				if ( DY >  5.0 )LXX=1^LXX ;
				for(I3=2 ; I3<=NXX ; I3++)
				{
					if (DX <  DA20(I1,I2,I3)){
						DX = DA20(I1,I2,I3) ;
						LD10(I1,I2,I3) = 1 ;
					}
					DA30(I1,I2,II) = DA30(I1,I2,II) + DA40(I1,I2,I3+1) ;
					DA10(I1,I2,I3) = DY * DA20(I1*1+1,I2,I3) ;
LBL_30: 
					;
				}
				DA20(I1,I2,2) = DX ;
				LD20(I1,I2,I3) = 1^LD10(I1,I2,2)|LXX ;
LBL_20: 
				;
			}
LBL_10: 
			;
		}
LBL_999: 
		;
	}
	return 0;
}
int SUB2(da10,da20,da30,da40,ld10,ld20,NN)
double da10[20][20][20],da20[20][20][20],da30[20][20][20],
da40[20][20][20] ;
unsigned long int ld10[20][20][20],ld20[20][20][20] ;
long int NN;
{
	long int NX,N1,I1,I2,N2,N3,I3 ;
	double DX,DY ;
	NX = NN - 2 ;
	for(I1=2 ; I1<=NX ; I1++)
	{
		N1 = I1 + 1 ;
		for(I2=NX ; I2>=2 ; I2-=1)
		{
			N2 = I2 - 1 ;
			DX = DA10(I1,N2,NX) + DA30(N1,I2,NX) ;
			DY = DA20(N1,I2,NX) + DA40(I1,N2,NX) ;
			for(I3=2 ; I3<=NX ; I3++)
			{
				N3 = I3 - 1 ;
				DA30(I1,I2,I3) = DA20(N1,N2,I3) - DX ;
				DA40(I1,I2,N3) = DA10(N1,N2,N3) - DY ;
				CD10(I1,I2,N3).dreal = (double)(DX) ;
				CD10(I1,I2,N3).dimag = (double)(DY) ;
				CD20(I1,I2,I3).dreal = (double)(DY) + DA30(I1,I2,I3) ;
				CD20(I1,I2,I3).dimag = (double)(DX) + 0 ;
LBL_30: 
				;
			}
			DA10(I1,I2,3) = DA40(I1,I2,2) + DA30(I1,I2,2) ;
LBL_20: 
			;
		}
LBL_10: 
		;
	}
	return 0;
}
