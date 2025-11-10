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
unsigned long int lt[20][20],lf[20][20],lx[20][20];
unsigned long int x1[20][20],x2[20][20],x3[20][20],x4[20][20];
unsigned long int t1[30][30],t2[30][30],t3[30][30],t4[30][30];
int main()
{
	unsigned long int L1=0;
	unsigned long int L2=0;
	unsigned long int L3=0;
	unsigned long int L4=1;
	unsigned long int LZ;
	long int NCWNR=10;
	long int I,J,K,LX,CTR;
	long int i,j;
	float PRINT,X1,X2,X3,X4;
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
	for(I=1;I<=20;I++)
	{
		for(J=1;J<=20;J++)
		{
			for(K=1;K<=5;K++)
			{
				if (LT(I,J)==1)
				{
					LT(I,J)=!(LT(I,J));
				}
				if (LF(I,J)==1)
				{
					LF(I,J)=!(LF(I,J));
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
				L1=T1(J,I);
				L2=T2(J+1,I);
				L3=T3(J+1,I);
				L4=T4(J+1,I);
				if ((!(L3) &&  L4)==1)
				{
					if ((!(L1) &&  L2)==1)
					{
						LF(J,I)=0;
					}
					else
					{
						LF(J,I)=1;
					}
					goto LBL_11;
				}
				if ((!(L4) &&  L3)==1)
				{
					if (L1 && L2==1)
					{
						LF(J,I)=0;
					}
					else
					{
						LF(J,I)=1;
					}
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
				printf(" L1 = %lu    L2 = %lu\n",L1,L2);
				printf(" L3 = %lu    L4 = %lu\n",L3,L4);
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
				if ((((!(L1) && L2) && !(L3)) &&  !(L4))==1)
				{
					T4(J+1,I)=1;
					goto LBL_12;
				}
				if ((((!(L1) && L2) && !(L3)) &&  L4)==1)
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
				if ((((!(L1) && L2) && L3) &&  L4)==1)
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
				if ((((L1 && L2) && L3) &&  L4)==1)
				{
					T1(J,I)=0;
					T2(J+1,I)=0;
					T3(J+1,I)=0;
					T4(J+1,I)=0;
					goto LBL_12;
				}
				LZ=((L1 || L2) || L3) || L4;
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
	printf(" X1 =");
	for(J=1;J<=20;J++){
		for(I=1;I<=20;I++){
			printf(" %lu",X1(I,J));
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
	printf(" X2 =");
	for(J=1;J<=20;J++){
		for(I=1;I<=20;I++){
			printf(" %lu",X2(I,J));
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
	printf(" X3 =");
	for(J=1;J<=20;J++){
		for(I=1;I<=20;I++){
			printf(" %lu",X3(I,J));
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
	printf(" X4 =");
	for(J=1;J<=20;J++){
		for(I=1;I<=20;I++){
			printf(" %lu",X4(I,J));
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
