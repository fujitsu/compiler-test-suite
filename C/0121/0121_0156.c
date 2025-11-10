#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define R10(i) r10[i-1]
#define R11(i) r11[i-1]
#define R12(i) r12[i-1]
#define R20(i,j) r20[i-1][j-1]
#define R21(i,j) r21[i-1][j-1]
#define R22(i,j) r22[i-1][j-1]
#define R30(i,j,k) r30[i-1][j-1][k-1]
#define R31(i,j,k) r31[i-1][j-1][k-1]
#define R32(i,j,k) r32[i-1][j-1][k-1]
#define R33(i,j,k) r33[i-1][j-1][k-1]
#define R40(i,j,k,l) r40[i-1][j-1][k-1][l-1]
#define R41(i,j,k,l) r41[i-1][j-1][k-1][l-1]
double r10[10],r11[10],r12[10];
double r20[10][10],r21[10][10],r22[10][10];
double r30[10][10][10],r31[10][10][10],r32[10][10][10],r33[10][10][10];
double r40[10][10][10][10],r41[10][10][10][10];
int main()
{
	double s0,s1;
	long int i,j,k,l,m;
	for(i=0;i<=9;i++)
	{
		r10[i]=i+1.0;
		r11[i]=i+2.0;
		r12[i]=i*i;
		for(j=0;j<=9;j++)
		{
			r20[i][j]=i+3.0;
			r21[i][j]=i*j;
			r22[i][j]=i*j*2.0;
			for(k=0;k<=9;k++)
			{
				r30[i][j][k]=k-i*j;
				r31[i][j][k]=k+i+j;
				r32[i][j][k]=k*i+j;
				r33[i][j][k]=i*i+j;
				for(l=0;l<=9;l++)
				{
					r40[i][j][k][l]=k*i+j*l;
					r41[i][j][k][l]=k+i+j+l;
				}
			}
		}
	}
	printf(" *****  *****\n");
	printf(" ----- TEST NO.1 ----- \n");
	for(i=0;i<=9;i++)
	{
		r10[i]=((float)i);
		for(j=0;j<=9;j++)
		{
			r20[i][j]=r21[i][j];
			for(k=0;k<=1;k++)
			{
				r30[i][j][k]=r31[i][j][k]+r20[i][j];
			}
		}
		if (i >  4)
		{
			for(l=0;l<=9;l++)
			{
				for(m=0;m<=9;m++)
				{
					for(j=0;j<=9;j++)
					{
						s0=r30[l][m][j];
						r30[l][m][j]=r30[l][m][j]*r20[l][m];
					}
					r20[l][m]=r20[l][m]*l;
				}
				r21[i][l]=r22[i][l]+j;
			}
		}
		else
		{
			for(l=0;l<=9;l++)
			{
				r10[l]=l;
				for(j=0;j<=9;j++)
				{
					r30[i][l][j]=r10[l]+j;
					s1=0.0;
					for(m=0;m<=9;m++)
					{
						s1=s1+r30[i][l][j];
						r40[l][m][j][i]=r32[l][j][m]*2.0;
					}
				}
			}
		}
	}
	printf("  S0 =  %g\n",s0);
	printf("  S1 =  %g\n",s1);
	for(i=0;i<=1;i++)
	{
		for(j=0;j<=1;j++)
		{
			printf("R20= %g   ",r20[i][j]);
		}
	}
	for(i=0;i<=1;i++)
	{
		for(j=3;j<=5;j++)
		{
			for(k=0;k<=1;k++)
			{
				printf("\nR30 =  %g    ",r30[i][j][k]);
			}
		}
	}
	for(i=0;i<=1;i++)
	{
		for(j=3;j<=5;j++)
		{
			for(k=0;k<=1;k++)
			{
				for(l=7;l<=8;l++)
				{
					printf("\nR40 =  %g    ",r40[i][j][k][l]);
				}
			}
		}
	}
	for(i=1;i<=5;i++)
	{
		for(j=0;j<=2;j++)
		{
			printf("\nR21 =  %g    ",r21[i][j]);
		}
	}
	for(i=0;i<=9;i++)
	{
		printf("\nR11 =  %g    ",r11[i]);
	}
	for(i=4;i<=5;i++)
	{
		for(j=6;j<=7;j++)
		{
			for(k=0;k<=1;k++)
			{
				printf("\nR31 =  %g    ",r31[i][j][k]);
			}
		}
	}
        printf("\n");
	exit (0);
}
