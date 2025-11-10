#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define I10(i) i10[i-1]
#define I11(i) i11[i-1]
#define I12(i) i12[i-1]
#define I13(i) i13[i-1]
#define R10(i) r10[i-1]
#define R11(i) r11[i-1]
#define D10(i) d10[i-1]
#define D11(i) d11[i-1]
#define D12(i) d12[i-1]
#define C10(i) c10[i-1]
#define C11(i) c11[i-1]
#define C12(i) c12[i-1]
#define CD10(i) cd10[i-1]
#define CD11(i) cd11[i-1]
#define L10(i) l10[i-1]
#define L11(i) l11[i-1]
#define L12(i) l12[i-1]
long int i10[10]={
	1,1,1,2,2,2,3,3,3,4};
float r11[10]={
	2,4,2,4,1,3,3,3,2,2};
double d11[10]={
	1,1,1,1,2,2,2,2,3,3};
COMPLEX c11[10]={
	{
		0,1	},
	{
		0,1	},
	{
		0,1	},
	{
		1,0	},
	{
		1,0	},
	{
		1,0	},
	{
		1,1	},
	{
		1,1	},
	{
		1,1	},
	{
		0,0	}
};
COMPLEX16 cd11[10]={
	{
		1,1	},
	{
		1,1	},
	{
		1,1	},
	{
		1,1	},
	{
		1,1	},
	{
		1,1	},
	{
		1,1	},
	{
		1,0	},
	{
		1,0	},
	{
		0,1	}
};
long int i11[10],i12[10],i13[10];
float r10[10];
double d10[10],d12[10];
COMPLEX c10[10],c12[10];
COMPLEX16 cd10[10];
unsigned long int l10[10],l11[10],l12[10];
int main()
{

	double D10S=0;
	unsigned long int L10S;
	long int I10S,I11S;
	long int i,j,N=10,K=6;
	float R10S=2;

	for(i=0;i< 10;i++){
		i11[i]=2;
		r10[i]=8;
		i12[i]=i13[i]=i+1;
		d12[i]=1;
		c12[i].real=c12[i].imag=1;
	}

	for(i=1;i<=N;i++)
	{
		if (L10(i)==1)
		{
			I10S=I10(i)*I11(i)-i;
			R10S=R10(i)/R11(i);
			I11S=I10S+I10(i);
			D10(I12(i))=(double)(I10S)+(double)(I11S)+(double)(R10(i));
			L10S=(unsigned long int)(R10S>R11(i));
			L11(i)=L10S;
			D10S=D10S+D11(i);
			C10(I13(i)).real=(C11(i).real*C12(i).real+C11(i).imag*C12(i).imag)/
			    (C12(i).real*C12(i).real+C12(i).imag*C12(i).imag);
			C10(I13(i)).imag=(C11(i).imag*C12(i).real-C11(i).real*C12(i).imag)/
			    (C12(i).real*C12(i).real+C12(i).imag*C12(i).imag);
		}
		else
		{
			I11S=I11(i)+I10(i)+i;
			I10S=I11S*I10(i)-I11S;
			R10S=R10(i)*R11(i);
			L10S=I11S<=I10S;
			L12(i)=L10S;
			D12(K)=D12(K)+(double)(R10S);
			CD10(I12(i)).dreal=pow(CD11(i).dreal,(double)(I11S));
			CD10(I12(i)).dimag=pow(CD11(i).dimag,(double)(I11S));
		}
	}


	for(i=1;i<=10;i++){
		printf("  D10(%ld)= %g ",i,D10(i));
		j=i%4;
		if(j == 0) printf("\n");
	}
	printf("\n");

	for(i=1;i<=10;i++){
		printf("  L11(%ld)= %lu ",i,L11(i));
		j=i%4;
		if(j == 0) printf("\n");
	}
	printf("\n");

	printf("  D10S =  %g ",D10S);
	printf("\n");

	for(i=1;i<=10;i++){
		printf("  C10(%ld)=(%g,%g)",i,C10(i).real,C10(i).imag);
		j=i%3;
		if(j == 0) printf("\n");
	}
	printf("\n");

	for(i=1;i<=10;i++){
		printf("  L12(%ld)= %lu ",i,L12(i));
		j=i%4;
		if(j == 0) printf("\n");
	}
	printf("\n");

	for(i=1;i<=10;i++){
		printf("  D12(%ld)= %g ",i,D12(i));
		j=i%4;
		if(j == 0) printf("\n");
	}
	printf("\n");

	for(i=1;i<=10;i++){
		printf("  CD10(%ld)=(%g,%g)",i,CD10(i).dreal,CD10(i).dimag);
		j=i%3;
		if(j == 0) printf("\n");
	}
	printf("\n");

	exit (0);
}
