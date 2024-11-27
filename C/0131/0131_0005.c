#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include<memory.h>
typedef struct  tag1 {
	struct  tag1 *LINK ;
	int     NUM[20] ;
	double  X[20] ;
	char    CH[20] ;
};
extern void *malloc();
extern void  free();
int sub2 (struct tag1 *P);
int sub1 (double A[], double B[], double C[], struct tag1 *P);
int main (void)
{
	struct tag1 *P;
	char  *FP;
	double A[20],B[20],C[20];
	int I,N,ISUM;
	double SUM;
	for (I=0;I<20;I++)
	{
		A[I]=(double)I;
		B[I]=1.0;
		C[I]=2.0;
	}
	N=sizeof(struct tag1);
	printf("  N= %d ",N);
	FP= malloc(N);
	P=(struct tag1 *)FP;
	for (I=0;I<20;I++)
	{
		P->NUM[I]=I;
		P->X[I]=21.0-A[I];
		P->CH[I]=I%9 + '0';
	}
	sub1(A,B,C,P);
	sub2(P);
	free(FP);
	exit (0);
}
int sub1 (double A[], double B[], double C[], struct tag1 *P)
{ 
	int I,ISUM;
	double SUM;
	ISUM=0;
	SUM=0.0;
	for (I=0;I<10;I++)
	{
		ISUM+=P->NUM[I];
		SUM+=P->X[I];
		printf(" CH = %c ",P->CH[I]);
	}
	printf(" ISUM= %d ",ISUM);
	printf("  SUM= %f ",SUM);
	for (I=0;I<20;I+=2)
	{
		P->NUM[I]=A[I];
		P->X[I]=C[I]+B[I];
	}
}
int sub2 (struct tag1 *P)
{ 
	int I,ISUM;
	double SUM;
	ISUM=0;
	SUM=0.0;
	for (I=0;I<20;I++)
	{
		switch(P->CH[I])
		{
		case '0' :
			P->NUM[I]+=1;
			break;
		case '1' :
			P->X[I]+=1.0;
			break;
		case '2' :
			P->NUM[I]+=2;
			break;
		case '3' :
			P->X[I]+=2.0;
			break;
		case '4' :
			P->NUM[I]+=3;
			break;
default :
			break;
		}
		ISUM+=P->NUM[I];
		SUM+=P->X[I];
	}
	printf(" SUB2  ISUM= %d  SUM= %f\n",ISUM,SUM);
}
