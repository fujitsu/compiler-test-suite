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
#define R12(i) r12[i-1]
#define R13(i) r13[i-1]
#define R14(i) r14[i-1]
#define D10(i) d10[i-1]
#define D11(i) d11[i-1]
#define D12(i) d12[i-1]
#define D13(i) d13[i-1]
#define D14(i) d14[i-1]
#define C10(i) c10[i-1]
#define C11(i) c11[i-1]
#define C12(i) c12[i-1]
#define C13(i) c13[i-1]
#define C14(i) c14[i-1]
#define CD10(i) cd10[i-1]
#define CD11(i) cd11[i-1]
#define CD12(i) cd12[i-1]
#define CD13(i) cd13[i-1]
#define CD14(i) cd14[i-1]
#define I14(i)  i14[i-1]
#define R15(i)  r15[i-1]
#define D15(i)  d15[i-1]
#define C15(i)  c15[i-1]
#define CD15(i) cd15[i-1]
#define I20(i)  i20[i-1]
#define I21(i)  i21[i-1]
#define R20(i)  r20[i-1]
#define R21(i)  r21[i-1]
#define D20(i)  d20[i-1]
#define C20(i)  c20[i-1]
#define CD20(i) cd20[i-1]
#define CD21(i) cd21[i-1]
long int  i10[10],i11[10],i12[10],i13[10];
float     r10[10],r11[10],r12[10],r13[10],r14[10];
double    d10[10],d11[10],d12[10],d13[10],d14[10];
COMPLEX8  c10[10],c11[10],c12[10],c13[10],c14[10];
COMPLEX16 cd10[10],cd11[10],cd12[10],cd13[10],cd14[10];
long int  i14[10];
float     r15[10];
double    d15[10]={
	1,2,3,1,2,3,3,2,1,1};
COMPLEX8  c15[10];
COMPLEX16 cd15[10];
long int  i20[10],i21[10];
float     r20[10],r21[10];
double    d20[10];
COMPLEX8  c20[10];
COMPLEX16 cd20[10],cd21[10];
int main()
{
	long int N=10,i,j,I,J;
	long int M=10;
	long int L=10;
	for(i=0;i< 10;i++){
		r10[i]=(i+1);
		d10[i]=(i+1);
		d11[i]=(i+1);
		c10[i].real=(i+1);
		c10[i].imag=(i+1);
		cd10[i].dreal=(i+1);
		cd10[i].dimag=(i+1);
	}
	printf(" *****  ***** NO1\n");
	for(I=1;I<=N;I++)
	{
		I10(I)=-R10(I);
		I11(I)=-D10(I);
		I12(I)=-C10(I).real;
		I13(I)=CD10(I).dimag;
		R11(I)=I11(I);
		R12(I)=D11(I);
		R13(I)=C10(I).real;
		R14(I)=-CD10(I).dimag;
		D11(I)=I10(I);
		D12(I)=R13(I);
		D13(I)=C10(I).real;
		D14(I)=-CD10(I).dimag;
LBL_10:
		;
	}
	for(i=1;i<=10;i++){
		
		printf(" %g ",R13(i));
		printf(" %g \n",R14(i));
	}
	exit (0);
}
