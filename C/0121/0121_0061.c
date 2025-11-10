#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB(double da11[10][10], short int ha11[8], float ea11[10], float ea12[14], float ea13[13], double da21[10][10], short int ha21[8], float ea21[10], float ea22[14], float ea23[12]);
#define DA11(i,j) da11[i-1][j-1]
#define HA11(i) ha11[i-2]
#define EA11(i) ea11[i-1]
#define EA12(i) ea12[i+1]
#define EA13(i) ea13[i+1]
#define DA21(i,j) da21[i-1][j-1]
#define HA21(i) ha21[i-2]
#define EA21(i) ea21[i-1]
#define EA22(i) ea22[i+1]
#define EA23(i) ea23[i]
double da11[10][10];
short int ha11[8];
float ea11[10],ea12[14],ea13[13];
double da21[10][10];
short int ha21[8];
float ea21[10],ea22[14],ea23[12];
int main()
{
	long int i,j;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			da11[i][j]=10.0;
		}
	}
	for(i=0;i<10;i++){
		ea11[i]=0.0;
	}
	for(i=0;i<14;i++){
		ea12[i]=9.0;
	}
	for(i=0;i<13;i++){
		ea13[i]=10.0;
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			da21[i][j]=0.0;
		}
	}
	for(i=0;i<10;i++){
		ea21[i]=0.0;
	}
	for(i=0;i<14;i++){
		ea22[i]=9.0;
	}
	for(i=0;i<12;i++){
		ea23[i]=10.0;
	}
	SUB(da11,ha11,ea11,ea12,ea13,da21,ha21,ea21,ea22,ea23);
	exit (0);
}
#define DA11(i,j) da11[i-1][j-1]
#define HA11(i) ha11[i-2]
#define EA11(i) ea11[i-1]
#define EA12(i) ea12[i+1]
#define EA13(i) ea13[i+1]
#define DA21(i,j) da21[i-1][j-1]
#define HA21(i) ha21[i-2]
#define EA21(i) ea21[i-1]
#define EA22(i) ea22[i+1]
#define EA23(i) ea23[i]
int SUB(da11,ha11,ea11,ea12,ea13,da21,ha21,ea21,ea22,ea23)
double da11[10][10];
short int ha11[8];
float ea11[10],ea12[14],ea13[13];
double da21[10][10];
short int ha21[8];
float ea21[10],ea22[14],ea23[12];
{
	long int N=9;
	long int I,i,j,n;
	float ES1;
	for(I=2;I<=N;I++){
		HA11(I)=(short int)(N);
		ES1=EA13(I-1);
		if (I <  8)
		{
LBL_CMAS:
			;
			DA11(I,I+1)=(double)(I);
			EA11(I)=(float)(I*2);
		}
		else
		{
			DA11(I,I-1)=(double)(I);
		}
		EA12(N-I)=EA13(N-I+1)*2;
		if (I != N)
		{
			EA12(N-I+1)=(float)(I);
		}
		EA11(I+1)=ES1;
LBL_10:
		;
	}
	printf("*****(HA11)*****\n");
	for(i=2;i<=9;i++){
		printf(" %d ",HA11(i));
	}
	printf("\n");
	printf("*****(DA11)*****\n");
	for(i=1;i<=10;i++){
		for(j=1;j<=10;j++){
			printf(" %g ",DA11(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	printf("*****(EA11)*****\n");
	for(i=1;i<=10;i++){
		printf(" %g ",EA11(i));
	}
	printf("\n");
	printf("*****(EA12)*****\n");
	for(i=-1;i<=12;i++){
		printf(" %g ",EA12(i));
	}
	printf("\n");
	for(I=2;I<=N;I++){
		HA21(I)=(short int)(N);
		ES1=EA23(I-1);
		if (I <  8)
		{
			DA21(I,I+1)=(double)(I);
			EA21(I)=(float)(I*2);
		}
		else
		{
			DA21(I,I-1)=(double)(I);
		}
		EA22(N-I)=EA23(N-I+1)*2;
		if (I != N)
		{
			EA22(N-I+1)=(float)(I);
		}
		DA21(I+1,I)=(double)(ES1);
LBL_20:
		;
	}
	printf("*****(HA21)*****\n");
	for(i=2;i<=9;i++){
		printf(" %d ",HA21(i));
	}
	printf("\n");
	printf("*****(DA21)*****\n");
	for(i=1;i<=10;i++){
		for(j=1;j<=10;j++){
			printf(" %g ",DA21(i,j));
			n=j%5;
			if(n==0)printf("\n");
		}
		printf("\n");
	}
	printf("\n");
	printf("*****(EA21)*****\n");
	for(i=1;i<=10;i++){
		printf(" %g ",EA21(i));
	}
	printf("\n");
	printf("*****(EA22)*****\n");
	for(i=-1;i<=12;i++){
		printf(" %g ",EA22(i));
	}
	printf("\n");
}
