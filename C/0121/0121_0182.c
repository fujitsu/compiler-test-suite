#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define A(i,j,k) a[i-1][j-1][k-1]
#define B(i,j,k) b[i-1][j-1][k-1]
#define C(i,j,k) c[i-1][j-1][k-1]
#define R(i,j,k) r[i-1][j-1][k-1]
#define LT(i,j) lt[i-1][j-1]
#define LF(i,j) lf[i-1][j-1]
#define LX(i,j) lx[i-1][j-1]
#define LL1(i,j) ll1[i-1][j-1]
#define LL2(i,j) ll2[i-1][j-1]
#define LL3(i,j) ll3[i-1][j-1]
#define LL4(i,j) ll4[i-1][j-1]
float a[20][20][5],b[20][20][5],c[20][20][5];
float r[20][20][5];
unsigned long int lt[20][20],lf[20][20],lx[20][20];
unsigned long int ll1[30][30],ll2[30][30],ll3[30][30],ll4[30][30];
int main()
{
	float D1=1.0e0;
	float D2=2.0e0;
	float D5=5.0e0;
	float DA=10.0e0;
	long int NCWNR=10;
	unsigned long int L1,L2,L3,L4,LZ;
	long int I,J,K,LF,LX,CTR;
	long int i,j,k;
	float S1,S2;
	for(k=0;k<5;k++){
		for(j=0;j<20;j++){
			for(i=0;i<20;i++){
				a[i][j][k]=8.0;
				b[i][j][k]=1.0;
				c[i][j][k]=2.0;
				r[i][j][k]=2.2;
			}
		}
	}
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
			ll1[i][j]=1;
			ll2[i][j]=1;
			ll3[i][j]=1;
			ll4[i][j]=0;
		}
	}
	for(I=1;I<=20;I++)
	{
		for(J=1;J<=20;J++)
		{
			for(K=1;K<=5;K++)
			{
				S1=D1;
				S2=D2;
				A(I,J,K)=S1;
				B(I,J,K)=S2;
				C(I,J,K)=A(I,J,K)+B(I,J,K);
				if (A(I,J,K) > D5)
				{
					LT(I,J)=!(LT(I,J));
					S1=D5;
				}
				if (B(I,J,K) > DA)
				{
					LF(I,J)=!(LF(I,J));
					S2=DA;
				}
LBL_1:
				;
			}
		}
	}
	for(K=1;K<=5;K++)
	{
		for(J=1;J<=20;J+=1)
		{
			for(I=1;I<=20;I++)
			{
				L1=LL1(J,I);
				L2=LL2(J,I);
				L3=LL3(J,I);
				L4=LL4(J,I);
				if ((!(L3) && L4)==1)
				{
					if ((!(L1) && L2)==1)
					{
						A(J,I,K)=A(J,I,K)-C(J,I,K);
						LF(J,I)=0;
					}
					else
					{
						LF(J,I)=1;
					}
					goto LBL_11;
				}
				if ((!(L4) && L3)==1)
				{
					if (L1 && L2==1)
					{
						B(J,I,K)=B(J,I,K)-A(J,I,K);
						LF(J,I)=0;
					}
					else
					{
						LF(J,I)=1;
					}
					R(J,I,K)=A(J,I,K)-C(J,I,K)*B(J,I,K);
				}
				if ((!(L4) && !(L3))==1)
				{
					if (L1 && L2==1)
					{
						LF(J,I)=0;
					}
					else
					{
						LF(J,I)=1;
					}
					goto LBL_11;
				}
LBL_11:
				;
				if (((!(L2) && !(L3)) && L4)==1)
				{
					LL3(J+1,I)=1;
					LL4(J+1,I)=0;
					goto LBL_12;
				}
				if (((!(L2) && L3) && !(L4))==1)
				{
					LL4(J+1,I)=1;
					goto LBL_12;
				}
				if (((!(L2) && L3) && L4)==1)
				{
					LL2(J+1,I)=1;
					LL3(J+1,I)=0;
					LL4(J+1,I)=0;
					goto LBL_12;
				}
				if ((((!(L1) && L2) && !(L3)) && !(L4))==1)
				{
					LL4(J+1,I)=1;
					goto LBL_12;
				}
				if ((((!(L1) && L2) && !(L3)) && L4)==1)
				{
					LL3(J+1,I)=1;
					LL4(J+1,I)=0;
					goto LBL_12;
				}
				if ((((!(L1) && L2) && L3) && !(L4))==1)
				{
					LL4(J+1,I)=1;
					goto LBL_12;
				}
				if (((!(L2) && !(L3)) && !(L4))==1)
				{
					LL4(J+1,I)=1;
					goto LBL_12;
				}
				if ((((!(L1) && L2) && L3) && L4)==1)
				{
					LL1(J+1,I)=1;
					LL2(J+1,I)=0;
					LL3(J+1,I)=0;
					LL4(J+1,I)=0;
					goto LBL_12;
				}
				if (((L2 && !(L3)) && !(L4))==1)
				{
					LL4(J+1,I)=1;
					goto LBL_12;
				}
				if (((L2 && !(L3)) && L4)==1)
				{
					LL3(J+1,I)=1;
					LL4(J+1,I)=0;
					goto LBL_12;
				}
				if (((L2 && L3) && !(L4))==1)
				{
					LL4(J+1,I)=1;
					goto LBL_12;
				}
				if ((((L1 && L2) && L3) && L4)==1)
				{
					LL1(J+1,I)=0;
					LL2(J+1,I)=0;
					LL3(J+1,I)=0;
					LL4(J+1,I)=0;
					goto LBL_12;
				}
				LZ=((L1 || L2) || L3) || L4;
				if (LZ==1)
				{
					goto LBL_12;
				}
				else
				{
					LL1(J+1,I)=0;
					LL2(J+1,I)=0;
					LL3(J+1,I)=0;
					LL4(J+1,I)=1;
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
	printf(" R  =");
	for(K=1;K<=5;K++){
		for(J=1;J<=20;J++){
			for(I=1;I<=20;I++){
				printf(" %g",R(I,J,K));
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

	exit(0);
}
