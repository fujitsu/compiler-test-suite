#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub1 (double A[], double B[], double C[], unsigned int X[], unsigned int Y[], unsigned int Z[]);

int main (void)
{
	double   A[20],B[20],C[20];
	unsigned int X[20],Y[20],Z[20];
	int i;
	double SUM;
	for (i=0;i<20;i++)
	{
		A[i]=(double)i;
		B[i]=1.0;
		C[i]=2.0;
		X[i]=1;
		Y[i]=0;
		Z[i]=i%2;
	}
	for (i=0;i<20;i+=3)
	{
		X[i]=0;
		Y[i]=1;
	}
	sub1(A,B,C,X,Y,Z);
	exit (0);
}
int sub1 (double A[], double B[], double C[], unsigned int X[], unsigned int Y[], unsigned int Z[])
{ 
	int i,ic1,ic2;
	ic1=ic2=0;
	for (i=0;i<20;i++)
	{
		if (X[i] && Z[i])
		{
			ic1=ic1+1;
			printf(" **pass-1** %d %d \n",X[i],Z[i]);
		}
		else
		{
			ic2=ic2+1;
		}
	}
	printf(" NO.1 ic1= %d ic2= %d \n",ic1,ic2);
	ic1=0;
	ic2=0;
	for (i=0;i<20;i++)
	{
		if (Y[i] || Z[i])
		{
			ic1=ic1+1;
			printf(" **pass-2** %d %d \n",Y[i],Z[i]);
		}
		else
		{
			ic2=ic2+1;
		}
	}
	printf(" NO.2 ic1= %d ic2= %d \n",ic1,ic2);
	ic1=0;
	ic2=0;
	for (i=0;i<15;i++)
	{
		if (X[i] || Z[i])
		{
			ic1=ic1+1;
			printf(" **pass-3** %d %d \n",X[i],Z[i]);
		}
		else
		{
			ic2=ic2+1;
		}
	}
	printf(" NO.3 ic1= %d ic2= %d \n",ic1,ic2);
}
