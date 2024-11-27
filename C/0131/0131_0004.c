#include <stdlib.h>
#include <stdio.h>

#include<math.h>
int sub2 (double A[], double B[], double C[], double *PTR[]);
int sub1 (double A[], double B[], double C[], double *PTR[]);
int main (void)
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
		if (A[I] > 18.0) break;
		if (A[I] > 15.0) continue;
		if (A[I] > 10.0)
		{ 
			B[I]=B[I]+A[I];
			C[I]=C[I]+ *PTR[I]; 
		}
		else
		{ 
			A[I]=A[I]+B[I];
			C[I]=C[I]- *PTR[I]; 
		}
		SUM+=C[I]+A[I]-B[I];
	}
	printf(" SUB1  SUM= %g ",SUM);
}
int sub2 (double A[], double B[], double C[], double *PTR[])
{ 
	int I,X;
	double SUM;
	SUM=0.0;
	for (I=0;I<20;I++)
	{
		X=I%4;
		switch (X)
		{
		case 0:  
			B[I]=sqrt(A[I])+C[I];
			break;
		case 1:  
			B[I]+=C[I];
			break;
		case 2:  
			B[I]+=A[I];
		case 3:  
			continue;
		default: 
			break;
		}
		SUM+=B[I]+ sin(*PTR[I]);
	}
	printf(" SUB2  SUM= %f\n",SUM);
}
