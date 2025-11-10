#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB2();
int SUB1();
#define DA10(i,j,k) uar1.da10[i-1][j-1][k-1]
#define DA20(i,j,k) uar1.da20[i-1][j-1][k-1]
#define DA30(i,j,k) uar1.da30[i-1][j-1][k-1]
#define DA40(i,j,k) uar1.da40[i-1][j-1][k-1]
#define LD10(i,j,k) uar2.ld10[i-1][j-1][k-1]
#define LD20(i,j,k) uar2.ld20[i-1][j-1][k-1]
#define CD10(i,j,k) uar3.cd10[i-1][j-1][k-1]
#define CD20(i,j,k) uar3.cd20[i-1][j-1][k-1]


long int NN=20;
union {
	double da10[20][20][20];
	double da20[20][20][20];
	double da30[20][20][20];
	double da40[20][20][20];
} uar1;

union {
	unsigned long int ld10[20][20][20];
	unsigned long int ld20[20][20][20];
} uar2;

union {
	COMPLEX16 cd10[20][20][20];
	COMPLEX16 cd20[20][20][20];
} uar3;
int main()
{
	
	long int i,j,k,n,CNT;
	double DX,DY,DZ;

	for(k=0;k< 20;k++){
		for(j=0;j< 20;j++){
			for(i=0;i< 20;i++){
				uar1.da10[i][j][k]=1.0;
			}
		}
	}

	for(k=0;k< 20;k++){
		for(j=0;j< 20;j++){
			for(i=0;i< 20;i++){
				uar1.da20[i][j][k]=2.0;
			}
		}
	}

	for(k=0;k< 20;k++){
		for(j=0;j< 20;j++){
			for(i=0;i< 20;i++){
				uar1.da30[i][j][k]=3.0;
			}
		}
	}

	for(k=0;k< 20;k++){
		for(j=0;j< 20;j++){
			for(i=0;i< 20;i++){
				uar1.da40[i][j][k]=4.0;
			}
		}
	}

	for(k=0;k< 20;k++){
		for(j=0;j< 20;j++){
			for(i=0;i< 20;i++){
				uar2.ld10[i][j][k]=0;
			}
		}
	}

	for(k=0;k< 20;k++){
		for(j=0;j< 20;j++){
			for(i=0;i< 20;i++){
				uar2.ld20[i][j][k]=0;
			}
		}
	}


	for(i=1;i<=NN;i++)
	{
		DX=(double)(i);
		for(j=1;j<=NN;j++)
		{
			DY=(double)(j);
			for(k=1;k<=NN;k++)
			{
				DZ=(double)(k);
				CD10(i,j,k).dreal=(double)(DX);
				CD10(i,j,k).dimag=(double)(DY);
				CD20(i,j,k).dreal=(double)(DY);
				CD20(i,j,k).dimag=(double)(DZ);
			}
		}
	}


	SUB1();
	SUB2();


	for(k=1,n=0,CNT=1;k<= 5;k++){
		for(j=1;j<= 5;j++){
			for(i=1;i<= 5;i++){
				printf(" DA10= %g ",DA10(i,j,k));
				n=CNT%6;
				if(n == 0) printf("\n");
				CNT+=1;
			}
		}
	}
	printf("\n");

	for(k=1,n=0,CNT=1;k<= 5;k++){
		for(j=1;j<= 5;j++){
			for(i=1;i<= 5;i++){
				printf(" DA20= %g ",DA20(i,j,k));
				n=CNT%6;
				if(n == 0) printf("\n");
				CNT+=1;
			}
		}
	}
	printf("\n");

	for(k=1,n=0,CNT=1;k<= 5;k++){
		for(j=1;j<= 5;j++){
			for(i=1;i<= 5;i++){
				printf(" DA30= %g ",DA30(i,j,k));
				n=CNT%6;
				if(n == 0) printf("\n");
				CNT+=1;
			}
		}
	}
	printf("\n");

	for(k=1,n=0,CNT=1;k<= 5;k++){
		for(j=1;j<= 5;j++){
			for(i=1;i<= 5;i++){
				printf(" DA40= %g ",DA40(i,j,k));
				n=CNT%6;
				if(n == 0) printf("\n");
				CNT+=1;
			}
		}
	}
	printf("\n");

	for(k=1,n=0,CNT=1;k<= 5;k++){
		for(j=1;j<= 5;j++){
			for(i=1;i<= 5;i++){
				printf(" LD10= %lu ",LD10(i,j,k));
				n=CNT%6;
				if(n == 0) printf("\n");
				CNT+=1;
			}
		}
	}
	printf("\n");

	for(k=1,n=0,CNT=1;k<= 5;k++){
		for(j=1;j<= 5;j++){
			for(i=1;i<= 5;i++){
				printf(" LD20= %lu ",LD20(i,j,k));
				n=CNT%6;
				if(n == 0) printf("\n");
				CNT+=1;
			}
		}
	}
	printf("\n");

	for(k=1,n=0,CNT=1;k<= 5;k++){
		for(j=1;j<= 5;j++){
			for(i=1;i<= 5;i++){
				printf(" CD10=(%g,%g) ",CD10(i,j,k).dreal,CD10(i,j,k).dimag);
				n=CNT%5;
				if(n == 0) printf("\n");
				CNT+=1;
			}
		}
	}
	printf("\n");

	for(k=1,n=0,CNT=1;k<= 5;k++){
		for(j=1;j<= 5;j++){
			for(i=1;i<= 5;i++){
				printf(" CD20=(%g,%g) ",CD20(i,j,k).dreal,CD20(i,j,k).dimag);
				n=CNT%5;
				if(n == 0) printf("\n");
				CNT+=1;
			}
		}
	}
	printf("\n");

	exit (0);
}
#define DA10(i,j,k) uar1.da10[i-1][j-1][k-1]
#define DA20(i,j,k) uar1.da20[i-1][j-1][k-1]
#define DA30(i,j,k) uar1.da30[i-1][j-1][k-1]
#define DA40(i,j,k) uar1.da40[i-1][j-1][k-1]
#define LD10(i,j,k) uar2.ld10[i-1][j-1][k-1]
#define LD20(i,j,k) uar2.ld20[i-1][j-1][k-1]

int SUB1()

{
	long int NX,NY,I1,I2,I3,II;
	double DX,DY;

	NX=NN-2;
	for(II=1;II<=3;II++)
	{
		NY=NN-II;
		for(I1=2;I1<=NX;I1++)
		{
			DA10(I1,I1,I1)=(double)(I1);
			for(I2=NY;I2>=2;I2-=1)
			{
				DA20(I1,I2-1,I2)=(double)(I1+I2);
				for(I3=2;I3<=NX;I3++)
				{
					DX=DA20(I1,I2-1,I3)+DA30(I1+1,I2,I3-1);
					DY=DA10(I1+1,I2,I3)-DA40(I1-1,I2,I3+1);
					if( DX >  DY )
					{
						CD10(I1,I2,I3).dreal=(double)(DX)-CD20(I1+1,I2,I3-1).dreal;
						CD10(I1,I2,I3).dimag=(double)(DY)-CD20(I1+1,I2,I3-1).dimag;
						LD10(I1,I2,I3)=!LD20(I1,I2,I3);
					}
					else
					{
						DX=((DX<DA20(I1,I2+1,I3)) ? DX:DA20(I1,I2+1,I3))
						    -(double)(CD10(I1,2,I3).dreal);
						DY=(fabs(DY)>DA30(I1+1,I2,I3+1)) ? fabs(DY):DA30(I1+1,I2,I3+1);
					}
					CD20(I1,I2,I3).dreal=(double)(DX);
					CD20(I1,I2,I3).dimag=(double)(DY);
				}
				if( LD10(I1,I2,2) )
				{
					CD10(I1,I2-1,5).dreal=0.0;
					CD10(I1,I2-1,5).dimag=0.0;
				}
				else
				{
					CD20(I1+1,I2,5).dreal=0.0;
					CD20(I1+1,I2,5).dimag=0.0;
				}
			}
			DA30(I1-1,I1+1,2)=0.0;
		}
	}
	return 0;
}
#define DA10(i,j,k) uar1.da10[i-1][j-1][k-1]
#define DA20(i,j,k) uar1.da20[i-1][j-1][k-1]
#define DA30(i,j,k) uar1.da30[i-1][j-1][k-1]
#define DA40(i,j,k) uar1.da40[i-1][j-1][k-1]
#define LD10(i,j,k) uar2.ld10[i-1][j-1][k-1]
#define LD20(i,j,k) uar2.ld20[i-1][j-1][k-1]
int SUB2()

{
	long int NX,I1,I2,I3;
	double DX,DY,DZ;

	NX=NN-2;
	for(I1=2;I1<=NX;I1++)
	{
		DX=DA40(I1,I1,NX)-(double)(CD10(I1,NX,NX).dimag);
		DA20(I1,I1,NX)=DX;
		for(I2=NX;I2>=2;I2-=1)
		{
			DY=(DA30(I1+1,I2-1,NX)<(double)(CD20(I1,I2,NX).dreal)) ?
			    DA30(I1+1,I2-1,NX):(double)(CD20(I1,I2,NX).dreal);
			DA30(I1,I2-1,I2+1)=DY;
			for(I3=2;I3<=NX;I3++)
			{
				DZ=(DA20(I1+1,I2,I3-1)>(double)(CD10(I1+1,I2,I3).dreal)) ?
				    DA20(I1+1,I2,I3-1):(double)(CD10(I1+1,I2,I3).dreal);
				if ( DZ >  DY )
				{
					LD10(I1,I2,I3)=!LD10(I1,I2,I3);
				}
				else
				{
					LD20(I1,I2,I3)=!LD10(I1,I2,I3);
				}
				DX=(DX > DZ) ? DX:DZ;
				DA40(I1,I2,I3)=((DY < DZ) ? DY:DZ)-DA10(I1,I2,I3+1);
				DA30(I1,I2,I3)=DA10(I1+1,I2,I3)-DA20(I1+1,I2,I3);
			}
			DA10(I1-1,I2+1,2)=DX;
		}
		DA40(I1-1,I1,NX+1)=DX;
	}
	return 0;
}
