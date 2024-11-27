#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub1 (double *A, double *B, double *C, int X[], int Y[], int Z[]);

int main (void)
{
	double A[20],B[20],C[20];
	int    X[20],Y[20],Z[20];
	int I,N,ISUM;
	double SUM;
	for (I=0;I<20;I++)
	{
		A[I]=(double)I;
		B[I]=1.0;
		C[I]=2.0;
		X[I]=I;
		Y[I]=21-I;
		Z[I]=I;
	}
	sub1(A,B,C,X,Y,Z);
	exit (0);
}
int sub1 (double *A, double *B, double *C, int X[], int Y[], int Z[])
{ 
	int I,ISUM;
	double SUM;
	double *P;
	ISUM=0;
	SUM=0.0;
	P=A;
	for (I=0;I<10;I++)
	{
		*A=*B++ + *C++;
		*B=*A++ ;
	}
	for (I=0;I<20;I+=2)
	{
		X[I]=Y[I]&&Z[I];
	}
	for (I=0;I<20;I++)
	{
		printf(" *A  = %f \n",*P++);
		printf(" X[I]= %d \n",X[I]);
	}
}
