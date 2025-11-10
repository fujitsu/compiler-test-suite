#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
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
double da10[20][20][20],da20[20][20][20],da30[20][20][20],
da40[20][20][20] ;
unsigned long int ld10[20][20][20],ld20[20][20][20] ;
COMPLEX16 cd10[20][20][20],cd20[20][20][20] ;
int main()
{
	long int NN=20 ;
	long int I,J,K,i,j,k ;
	double DX,DY,DZ ;

	for(k=0 ; k<20 ; k++)
	{
		for(j=0 ; j<20 ; j++)
		{
			for(i=0 ; i<20 ; i++)
			{
				da10[i][j][k]=1.0 ;
				da20[i][j][k]=2.0 ;
				da30[i][j][k]=3.0 ;
				da40[i][j][k]=4.0 ;
				ld10[i][j][k]=0 ;
				ld20[i][j][k]=0 ;
			}
		}
	}

	for(I=1 ; I<=NN ; I++)
	{
		DX=(double)(I) ;
		for(J=1 ; J<=NN ; J++)
		{
			DY=(double)(J) ;
			for(K=1 ; K<=NN ; K++)
			{
				DZ=(double)(K) ;
				CD10(I,J,K).dreal=(double)(DX) ;
				CD10(I,J,K).dimag=(double)(DY) ;
				CD20(I,J,K).dreal=(double)(DY) ;
				CD20(I,J,K).dimag=(double)(DZ) ;
LBL_10: 
				;
			}
		}
	}

	SUB1(da10,da20,da30,da40,ld10,ld20,NN) ;
	SUB2(da10,da20,da30,da40,ld10,ld20,NN) ;
	printf(" ** DA10 **\n") ;
	for(k=1 ; k<=20 ; k++)
	{
		for(j=1 ; j<=20 ; j++)
		{
			printf("\n");
			for(i=1 ; i<=20 ; i++)
			{
				printf(" %g ",DA10(i,j,k)) ;
			}
		}
	}
	printf("\n");
	exit (0);
}
int SUB1(da10,da20,da30,da40,ld10,ld20,NN)
double da10[20][20][20],da20[20][20][20],da30[20][20][20],
da40[20][20][20] ;
unsigned long int ld10[20][20][20],ld20[20][20][20] ;
long int NN;
{
	long int IN,NX,I,J,K,I1,I2,I3 ;
	double DX,DY ;

	IN=1 ;
	NX=NN-1 ;
	for(I=1 ; I<=NX ; I++)
	{
		LD10(I,1,1)=0 ;
		for(J=I+1 ; J<=NX ; J++)
		{
			DA10(1,I,J)=CD10(I,J,J).dimag ;
			for(K=2 ; K<=J+1 ; K++)
			{
				DX=DA10(I,J,K)/2.0 +DA20(I,J,K) ;
				DY=DA30(I,J,K)/3.0 -DA40(I,J,K) ;
				if ( DX  >   DY ) LD10(I,J,K)=1 ;
				LD20(I,J,K)=1^LD20(I,J,K)&&LD10(I,J,K) ;
				CD10(I,J,K).dreal=(double)(DX)-CD20(I,J,K).dreal ;
				CD10(I,J,K).dimag=(double)(DY)-CD20(I,J,K).dimag ;
LBL_10: 
				;
			}
		}
	}

	for(I=NX ; I>=2 ; I-=1)
	{
		for(J=I+1 ; J>=2 ; J-=1)
		{
			LD20(I,J,J)=1^LD10(I,J,2) ;
			for(K=2 ; K<=J-1 ; K++)
			{
				DA30(I,J,K)=DA10(I,J,K)*DA20(I,J,K)/(DA30(I,J,K)+1.0 )-
				    CD10(I,J,K-1).dreal/(1.0 +CD20(I,J,K+1).dimag) ;
				if ( LD10(I,J,K)  &&   LD20(I,J,K) ==1)
				{
					DA10(I,J,K)=0.0 ;
				}
				else
				{
					CD20(I,J,K).dreal=(double)(DA30(I,J,K) ) ;
					CD20(I,J,K).dimag=(double)(1.0 ) ;
				}
LBL_40: 
				;
			}
			DA20(I,I,J)=DA30(I,J,J)+DA10(I,J,2) ;
LBL_30: 
			;
		}
LBL_20: 
		;
	}

	for(I1=2 ; I1<=NX ; I1++)
	{
		for(I2=2 ; I2<=NX ; I2++)
		{
			DA20(I1,I2,NX)=(double)(I1+I2) ;
			for(I3=2 ; I3<=NX ; I3++)
			{
				DA30(I1,I2,I3)=DA10(I1,I2,I3)*2.0 -DA40(I1,I2,I3+1) ;
				DA40(I1,I2,I3)=DA20(I1,I2+1,I3)-DA30(I1-1,I2,I3+1) ;
				LD20(I1,I2,I3)=1^LD20(I1,I2,I3)&&LD10(I1,I2,I3) ;
				if ( LD20(I1,I2,I3) ==1)
				{
					DA30(I1,I2,I2)=(DA30(I1,I2,I2)<DA40(I1,I2,I3)) ?
					    DA30(I1,I2,I2):DA40(I1,I2,I3) ;
					CD20(I1,I2,1).dreal=CD20(I1,I2,1).dreal
					    -CD10(I1,I2,I3).dreal ;
					CD20(I1,I2,1).dimag=CD20(I1,I2,1).dimag
					    -CD10(I1,I2,I3).dimag ;
				}
LBL_50: 
				;
			}
		}
		DA20(I1,2,2)=CD20(I1,2,1).dreal ;
LBL_60: 
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
	long int NX,I1,I2,NY,NZ,II,I3 ;
	double DX,DY ;

	NX=NN-1 ;
	for(I1=2 ; I1<=NX ; I1++)
	{
		for(I2=2 ; I2<=NX ; I2++)
		{
			for(I3=2 ; I3<=NX ; I3++)
			{
				DX=(DA40(I1,NX,I3) > (double)(I1)) ?
				    DA40(I1,NX,I3) : (double)(I1) ;
				DY=(DA40(I1,NX,I3) > (double)(I1)) ?
				    DA40(I1,NX,I3) : (double)(I1) ;
				DA10(I1,I2,I3)=DA20(I1-1,I2,I3)-DA30(I1,I2+1,I3) ;
				DA20(I1,I2,I3)=DA30(I1,I2+1,I3)-DA40(I1-1,I2,I3) ;
				CD20(I1,I2,I3).dreal=(double)(DX)-CD20(I1,I2,I3).dreal ;
				CD20(I1,I2,I3).dimag=(double)(DY)-CD20(I1,I2,I3).dimag ;
LBL_10: 
				;
			}
		}
	}

	NY=NX-2 ;
	NZ=NX/2 ;
	for(I1=1 ; I1<=NZ ; I1++)
	{
		for(I2=I1+1 ; I2<=NY ; I2++)
		{
			CD20(I1,I1,I2).dreal=CD10(I1,I2,NZ).dreal ;
			CD20(I1,I1,I2).dimag=CD10(I1,I2,NZ).dimag ;
			for(I3=1 ; I3<=NX ; I3++)
			{
				II=I1*2-1 ;
				if ( LD10(I1,I2,I3) ==1)
				{
					DA20(I1,I2,I3)=DA30(I1,I2,I3)/2.0
					    /(fabs(CD20(I1,I2,I3).dimag)+1.0 ) ;
					DA30(I1,I2,I3)=DA40(I1,I2,I3)/(DA10(II,I2,I3)+1.0 ) ;
					goto LBL_30 ;
				}
				DA40(I1,I2,I3)=CD10(I1,I2,I3).dimag-CD20(I1,I2,I3).dreal ;
LBL_30: 
				;
			}
		}
		for(I2=1 ; I2<=NY ; I2++)
		{
			for(I3=1 ; I3<=NY ; I3++)
			{
				II=I1*2 ;
				DA10(I2,II,I3)=DA20(I2,I1,I3)-DA40(I2+1,I1+2,I3+3) ;
				CD20(I2,I1+1,I3+3).dreal=(double)(DA30(NX,I2,I3))
				    +CD10(I2,I1,I3).dreal ;
				CD20(I2,I1+1,I3+3).dimag=0+CD10(I2,I1,I3).dimag ;
				if ( DA10(I2,I1,I3) >  DA20(I1,I2,I3) )
				{
					LD10(I2,I1,I3)=1^LD10(I2,II,I3)&&LD20(I1,I2,I3) ;
				}
LBL_40: 
				;
			}
		}
LBL_20: 
		;
	}
	return 0;
}
