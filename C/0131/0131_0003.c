#include <stdio.h>
#include <math.h>


#include<stdlib.h>
int sub2 (double A[], double B[], double C[], double *PTR[]);
int sub1 (double A[], double B[], double C[], double *PTR[]);
int main()
{
	double A[20],B[20],C[20];
	double *PTR[20];
	int I;
	for (I=0;I<20;I++)
	{
		A[I]=(double)I;
		B[I]=1.0;
		C[I]=2.0;
		PTR[I]=&A[I];
	}
	for (I=0;I<20;I+=2)
	{
		PTR[I]=&B[I];
	}
	sub1(A,B,C,PTR);
	sub2(A,B,C,PTR);
	exit (0);
}
int sub1 (double A[], double B[], double C[], double *PTR[])
{ 
	int I;
	double SUM;
	SUM=0.0;
	for (I=0;I<20;I++)
	{
		if (A[I] > 10)
		{ 
			B[I]=B[I]+A[I];
			C[I]=C[I]+ *PTR[I]; 
		}
		else
		{ 
			A[I]=A[I]+B[I];
			C[I]=C[I]- *PTR[I]; 
		}
		SUM+=C[I]+A[I]-C[I];
	}
	printf(" SUB1  SUM= %g ",SUM);
}
int sub2 (double A[], double B[], double C[], double *PTR[])
{ 
	int I,X;
	double SUM;
	struct tag1{
		double  D;
		double *P;
	}S[20];
	SUM=0.0;
	for (I=0;I<19;I++)
	{
		S[I].D=A[I]+B[I];
		S[I].P= PTR[I];
	}
	I=0;
	while (I++<18)
	{
		C[I]=A[I]- *(S[I].P);
		SUM+=(C[I]+ S[I].D);
	}
	printf(" SUB2  SUM= %g\n",SUM);
}
