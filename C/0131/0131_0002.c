#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub1 (int *A, int *B, int C);
int sub2 (int *A, int *B, int C);

int main (void)
{
	int A[20],B[20],C;
	int TTL,CNT,I;
	for (I=0;I<20;I++)
	{ 
		A[I]=I;
		B[I]=I;
	}
	TTL=0 ;
	for (I=0,CNT=0;I<10;I++)
	{  
		TTL+=A[I];
		CNT+=1   ;
	}
	printf("TOTAL = %d  COUNT= %d ",TTL,CNT);
	C=2 ;
	sub1(A,B,C);
	sub2(A,B,C);
	exit (0);
}
int sub1 (int *A, int *B, int C)
{  
	int  I,TTL;
	for (I=0;I<20;I++)
	{
		A[I]=A[I]+B[I]*C;
	}
	I=0;
	TTL=0;
	while (I<20)
	{
		TTL+=A[I];
		I++;
	}
	printf(" SUB1 TTL= %d ",TTL);
	return 0;
}
int sub2 (int *A, int *B, int C)
{  
	int  I,TTL;
	int  *WK;
	WK=&B[0];
	TTL=0;
	for (I=0;I<10;I++)
	{
		*B = *B + *A++ * C;
		TTL+=*B;
		*B++;
	}
	printf(" sub2 B= %d  TTL1= %d",*B,TTL);
	TTL=0;
	for (I=0;I<10;I++)
	{
		TTL+=*WK++;
	}
	printf(" sub2 TTL2= %d\n",TTL);
}
