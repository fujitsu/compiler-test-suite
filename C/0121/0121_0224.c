#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB1(long int i11[][2]);
#define I10(i,j)   i10[i-1][j-1]
#define I11(i,j)   i11[i-1][j-1]
#define R10(i,j)   r10[i-1][j-1]
#define D10(i)     d10[i-1]
#define D11(i,j,k) d11[i-1][j-1][k-1]
#define D12(i)     d12[i-1]
#define D13(i,j)   d13[i-1][j-1]
#define D14(i,j)   d14[i-1][j-1]
#define Q10(i)     q10[i-1]
#define L10(i,j)   l10[i-1][j-1]
#define L11(i)     l11[i-1]
#define L12(i)     l12[i-1]
#define L13(i,j)   l13[i-1][j-1]
#define L14(i,j)   l14[i-1][j-1]
long int          i10[3][3]={
	1,2,3,4,5,6,7,8,9},
i11[3][2];
float             r10[3][2];
double            d10[3],
d11[10][3][2]={
	1,1,1,1,1,1,1,1,1,1,1,1,
	                                  2,2,2,2,2,2,2,2,2,2,2,2,
	                                  -3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,
	                                  4,4,4,4,4,4,4,4,4,4,4,4,
	                                  8,8,8,8,8,8,9,9,9,9,9,9},
d12[3],d13[3][2]={
	0,0,0,0,0,0},
d14[3][2]={
	1,2,-2,3,-3,4};
long double       q10[10];
unsigned long int l10[3][2]={
	1,0,1,0,1,0},
l11[10]={
	1,1,0,0,1,1,0,0,1,1},
l12[10]={
	1,1,1,0,0,0,1,1,1,0},
l13[3][2],
l14[3][2]={
	0,1,0,1,0,1};
int main()
{
	long int i,j,k,I,J,K;
	long int N2=2;
	long int N3=3;
	long int N10=10;
	double   D14S=0,D15S=0;
	long int I2,I1,I3,I4;
	float    R10S=0,D10S=0,D11S,D12S,D13S=0;
	for(j=0;j< 2;j++){
		for(i=0;i< 3;i++){
			i11[i][j]=0;
			r10[i][j]=0;
		}
	}
	for(i=0;i< 3;i++){
		d10[i]=0;
		d12[i]=0;
	}
	for(i=0;i< 10;i++){
		q10[i]=0;
	}
	printf(" *****  *****\n");
	printf(" ----- NO.1 -----\n");
	for(I1=1;I1<=N2;I1++)
	{
		for(I2=1;I2<=N3;I2++)
		{
			I10(I2,I1)=I1+I2;
			I11(I2,I1)=I10(I1,I2);
			SUB1(i11);
			if ( I1  ==  N2) printf("I2= %ld \n",I2);
			R10(I2,I1)=I11(I2,I1);
			R10S=sqrt(R10(I2,I1));
			if ( L10(I1,I1) ){
				R10S=R10S+pow(R10S,I1);
			}
			else{
				R10S=R10S-pow(R10S,I2);
			}
			D10(I2)=R10S;
			D10S=D10(I2)+D10S+I10(I2,I1);
			for(I3=2;I3<=N10;I3++)
			{
				if (L11(I3))  L11(I3-1) = L12(I3);
				D11S=D11(I3,I2,I1);
LBL_10:
				;
			}
			D12S=D11S;
			L13(I2,I1)=D12S>D13S|L14(I2,I1);
			if ( L13(I2,I1) ) D12S = pow(fabs(D10(I2)),I2);
			D12(I2)=D12S;
			D13S=D13S+D12S+D11S;
			printf("  D13S =  %g \n",D13S);
			D13(I2,I1)=D13S+D10(I2)+R10S;
			D14(I2,I1)=D13(I2,I1)+D13S*D14(I2,I1);
			for(I4=2;I4<=N10;I4++)
			{
				if (L11(I4)){
					D14S=D11(I4,I2,I1);
				}
				else{
					D15S=-D11(I4,I2,I1);
				}
				Q10(I4)=D14S+2*D15S;
LBL_11:
				;
			}
LBL_100:
			;
		}
LBL_1000:
		;
	}
	for(j=1;j<=3;j++){
		for(i=1;i<=3;i++){
			printf("  I10  =  %ld \n",I10(i,j));
		}
	}
	for(j=1;j<=2;j++){
		for(i=1;i<=3;i++){
			printf("  I11  =  %ld \n",I11(i,j));
		}
	}
	for(j=1;j<=2;j++){
		for(i=1;i<=3;i++){
			printf("  R10  =  %g \n",R10(i,j));
		}
	}
	for(i=1;i<=3;i++){
		printf("  D10  =  %f \n",D10(i));
	}
	printf("  D10S =  %g \n",D10S);
	for(i=1;i<=10;i++){
		printf("  L11  =  %lu \n",L11(i));
	}
	printf("  D11S =  %g \n",D11S);
	for(j=1;j<=2;j++){
		for(i=1;i<=3;i++){
			printf("  L13  =  %lu \n",L13(i,j));
		}
	}
	for(i=1;i<=3;i++){
		printf("  D12  =  %f \n",D12(i));
	}
	for(j=1;j<=2;j++){
		for(i=1;i<=3;i++){
			printf("  D13  =  %g \n",D13(i,j));
		}
	}
	for(j=1;j<=2;j++){
		for(i=1;i<=3;i++){
			printf("  D14  =  %g \n",D14(i,j));
		}
	}
	for(i=1;i<=10;i++){
		printf("  Q10  =  %g \n",(double)Q10(i));
	}
	exit (0);
}
#define I11(i,j) i11[i-1][j-1]
int SUB1(long int i11[][2])
{
	long int J,I;
	for(I=1;I<=2;I++)
	{
		for(J=1;J<=3;J++)
		{
			I11(J,I)=J+I;
LBL_10:
			;
		}
	}
	return 0;
}
