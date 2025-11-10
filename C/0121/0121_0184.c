#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define LT(i,j) lt[i-1][j-1]
#define LF(i,j) lf[i-1][j-1]
#define LX(i,j) lx[i-1][j-1]
#define X1(i,j) x1[i-1][j-1]
#define X2(i,j) x2[i-1][j-1]
#define X3(i,j) x3[i-1][j-1]
#define X4(i,j) x4[i-1][j-1]
#define T1(i,j) t1[i-1][j-1]
#define T2(i,j) t2[i-1][j-1]
#define T3(i,j) t3[i-1][j-1]
#define T4(i,j) t4[i-1][j-1]
#define A1(i,j) a1[i-1][j-1]
#define A2(i,j) a2[i-1][j-1]
#define A3(i,j,k) a3[i-1][j-1][k-1]
#define B1(i,j) b1[i-1][j-1]
#define B2(i,j) b2[i-1][j-1]
#define B3(i,j,k) b3[i-1][j-1][k-1]
#define C1(i,j) c1[i-1][j-1]
#define C2(i,j) c2[i-1][j-1]
#define C3(i,j,k) c3[i-1][j-1][k-1]
#define R1(i,j) r1[i-1][j-1]
#define R2(i,j) r2[i-1][j-1]
#define R3(i,j,k) r3[i-1][j-1][k-1]
static unsigned long int lt[20][20],lf[20][20],lx[20][20];
static unsigned long int x1[20][20],x2[20][20],x3[20][20],x4[20][20];
static unsigned long int t1[30][30],t2[30][30],t3[30][30],t4[30][30];
static double a1[20][5],a2[20][20],a3[20][20][5];
static double b1[20][5],b2[20][20],b3[20][20][5];
static double c1[20][5],c2[20][20],c3[20][20][5];
static double r1[20][5],r2[20][20],r3[20][20][5];
int main()
{
	unsigned long int L1=0;
	unsigned long int L2=0;
	unsigned long int L3=0;
	unsigned long int L4=1;
	unsigned long int LZ;
	long int N5=5;
	long int N20=20;
	long int NN1=1;
	long int NCWNR=10;
	long int I,J,K,LX,i,j,k,CTR;
	float PRINT,R1,R2,R3;
	CTR=0;
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			if (CTR<100)
			{
				lt[i][j]=1;
				lf[i][j]=0;
				lx[i][j]=1;
			}
			else if (CTR<200)
			{
				lt[i][j]=0;
				lf[i][j]=1;
				lx[i][j]=1;
			}
			else if (CTR<300)
			{
				lt[i][j]=1;
				lf[i][j]=0;
				lx[i][j]=0;
			}
			else if (CTR<400)
			{
				lt[i][j]=0;
				lf[i][j]=1;
				lx[i][j]=0;
			}
			CTR++;
		}
	}
	for(j=0;j<30;j++){
		for(i=0;i<30;i++){
			t1[i][j]=1;
			t2[i][j]=1;
			t3[i][j]=1;
			t4[i][j]=0;
		}
	}
	for(j=0;j<5;j++){
		for(i=0;i<20;i++){
			a1[i][j]=3.0e0;
			b1[i][j]=1.0e0;
			c1[i][j]=2.0e0;
			r1[i][j]=3.0e0;
		}
	}
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			a2[i][j]=2.0e0;
			b2[i][j]=2.0e0;
			c2[i][j]=1.0e0;
			r2[i][j]=1.0e0;
		}
	}
	for(k=0;k<5;k++){
		for(j=0;j<20;j++){
			for(i=0;i<20;i++){
				a3[i][j][k]=1.0e0;
				b3[i][j][k]=3.0e0;
				c3[i][j][k]=3.0e0;
				r3[i][j][k]=2.0e0;
			}
		}
	}
	for(K=1;K<=5;K++)
	{
		for(J=1;J<=N20;J++)
		{
			for(I=1;I<=N20;I++)
			{
				R2(J,I)=B2(J,I)-C2(J,I);
				R3(J,I,K)=B3(J,I,K)-A3(J,I,K);
				if (R2(J,I) > R3(J,I,K))
				{
					LT(J,I)=!(LT(J,I));
					R2(J,I)=B2(J,I)-C2(J,I);
				}
				else
				{
					if (R2(J,I) <= R3(J,I,K))
					{
						LF(J,I)=!(LF(J,I));
						R3(J,I,K)=B3(J,I,K)-A3(J,I,K);
					}
				}
LBL_1:
				;
			}
		}
	}
	for(K=1;K<=5;K++)
	{
		for(I=1;I<=N20;I+=NN1)
		{
			for(J=1;J<=N20;J+=1)
			{
				L1=T1(J,I);
				L2=T2(J+1,I);
				L3=T3(J+1,I);
				L4=T4(J+1,I);
				if (I <= N5)
				{
					R1(J,I)=B1(J,I)+C1(J,I)-A1(J,I);
				}
				if ((!(L3) && L4)==1)
				{
					if ((!(L1) && L2)==1)
					{
						R2(J,I)=A2(J,I)-B2(J,I);
					}
					else
					{
						R2(J,I)=C2(J,I)-B2(J,I);
					}
				}
				else
				{
					if ((!(L4) && L3)==1)
					{
						if ((L1 && L2)==1)
						{
							R3(J,I,K)=A3(J,I,K)+B3(J,I,K);
						}
						else
						{
							R3(J,I,K)=C3(J,I,K)-B3(J,I,K);
						}
					}
					else
					{
						if ((!(L4) && !(L3))==1)
						{
							if ((L1 && L2)==1)
							{
								A2(J,I)=B2(J,I)-B3(J,I,K);
							}
							else
							{
								C2(J,I)=A2(J,I)-B3(J,I,K);
							}
						}
					}
				}
LBL_11:
				;
				X1(J,I)=L1;
				X2(J,I)=L2;
				X3(J,I)=L3;
				X4(J,I)=L4;
				if (((!(L2) && !(L3)) && L4)==1)
				{
					T3(J+1,I)=1;
					T4(J+1,I)=0;
					goto LBL_12;
				}
				if (((!(L2) && L3) && !(L4))==1)
				{
					T4(J+1,I)=1;
					goto LBL_12;
				}
				if (((!(L2) && L3) && L4)==1)
				{
					T2(J+1,I)=1;
					T3(J+1,I)=0;
					T4(J+1,I)=0;
					goto LBL_12;
				}
				if ((((!(L1) && L2) && !(L3)) && !(L4))==1)
				{
					T4(J+1,I)=1;
					goto LBL_12;
				}
				if ((((!(L1) && L2) && !(L3)) && L4)==1)
				{
					T3(J+1,I)=1;
					T4(J+1,I)=0;
					goto LBL_12;
				}
				if ((((!(L1) && L2) && L3) && !(L4))==1)
				{
					T4(J+1,I)=1;
					goto LBL_12;
				}
				if (((!(L2) && !(L3)) && !(L4))==1)
				{
					T4(J+1,I)=1;
					goto LBL_12;
				}
				if ((((!(L1) && L2) && L3) && L4)==1)
				{
					T1(J,I)=1;
					T2(J+1,I)=0;
					T3(J+1,I)=0;
					T4(J+1,I)=0;
					goto LBL_12;
				}
				if (((L2 && !(L3)) && !(L4))==1)
				{
					T4(J+1,I)=1;
					goto LBL_12;
				}
				if (((L2 && !(L3)) && L4)==1)
				{
					T3(J+1,I)=1;
					T4(J+1,I)=0;
					goto LBL_12;
				}
				if (((L2 && L3) && !(L4))==1)
				{
					T4(J+1,I)=1;
					goto LBL_12;
				}
				if ((((L1 && L2) && L3) && L4)==1)
				{
					T1(J,I)=0;
					T2(J+1,I)=0;
					T3(J+1,I)=0;
					T4(J+1,I)=0;
					goto LBL_12;
				}
				LZ=L1|L2|L3|L4;
				if (LZ==1)
				{
					goto LBL_12;
				}
				else
				{
					T1(J,I)=0;
					T2(J+1,I)=0;
					T3(J+1,I)=0;
					T4(J+1,I)=1;
				}
LBL_12:
				;
				LX(J,I)=LT(J,I) && LF(J,I);
				if (LX(J,I)==1)
				{
					LX(J,I)=!(LT(J,I));
				}
				else
				{
					LX(J,I)=!(LF(J,I));
				}
LBL_10:
				;
			}
LBL_20:
			;
		}
LBL_30:
		;
	}
	CTR=0;
	printf(" R1 =");
	for(J=1;J<=5;J++){
		for(I=1;I<=20;I++){
			printf(" %g",R1(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("     ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" R2 =");
	for(J=1;J<=20;J++){
		for(I=1;I<=20;I++){
			printf(" %g",R2(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("     ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" R3 =");
	for(K=1;K<=5;K++){
		for(J=1;J<=20;J++){
			for(I=1;I<=20;I++){
				printf(" %g",R3(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("     ");
				}
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" LX =");
	for(J=1;J<=20;J++){
		for(I=1;I<=20;I++){
			printf(" %lu",LX(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("     ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf(" LF =");
	for(J=1;J<=20;J++){
		for(I=1;I<=20;I++){
			printf(" %lu",LF(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("     ");
			}
		}
	}
	printf("\n");

	exit(0);
}
