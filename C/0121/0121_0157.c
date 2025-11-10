#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define R10(i) r10[i-1]
#define R11(i) r11[i-1]
#define R12(i) r12[i-1]
#define R20(i,j) r20[i-1][j-1]
#define R21(i,j) r21[i-1][j-1]
#define R22(i,j) r22[i-1][j-1]
#define R30(i,j,k) r30[i-1][j-1][k-1]
#define R31(i,j,k) r31[i-1][j-1][k-1]
#define R32(i,j,k) r32[i-1][j-1][k-1]
#define R33(i,j,k) r33[i-1][j-1][k-1]
#define R40(i,j,k,l) r40[i-1][j-1][k-1][l-1]
#define R41(i,j,k,l) r41[i-1][j-1][k-1][l-1]
#define R42(i,j,k,l) r42[i-1][j-1][k-1][l-1]
#define L10(i) l10[i-1]
#define L11(i) l11[i-1]
#define L20(i,j) l20[i-1][j-1]
double r10[10],r11[10],r12[10];
double r20[10][10],r21[10][10],r22[10][10];
double r30[10][10][10],r31[10][10][10],r32[10][10][10],r33[10][10][10];
double r40[10][10][10][10],r41[10][10][10][10],r42[10][10][10][10];
unsigned long int l10[10],l11[10],l20[10][10];
int main()
{
	long int N=5;
	long int NCWNR=8;
	long int CWNR=8;
	float X=1.0;
	float Y=1.5;
	long int I,J,K,L,CTR;
	float S,S1=0.;
	for(I=1;I<=10;I++)
	{
		L10(I)=0==I%2;
		L11(I)=!(L10(I));
		for(J=1;J<=10;J++)
		{
			L20(I,J)=0==J%2;
			for(K=1;K<=10;K++)
			{
				for(L=1;L<=10;L++)
				{
					R10(I)=(float)(I);
					R11(I)=(float)(I+I);
					R12(I)=(float)(I+I+I);
					R20(I,J)=(float)(I*J+1);
					R21(I,J)=(float)(I*J+2);
					R22(I,J)=(float)(I*J+3);
					R30(I,J,K)=(float)(K+I*J);
					R31(I,J,K)=(float)(K+I-J);
					R32(I,J,K)=(float)(K*I+J);
					R33(I,J,K)=(float)(I*I+J);
					R40(I,J,K,L)=(float)(K+I*J*L);
					R41(I,J,K,L)=(float)(K+I+J+L);
					R42(I,J,K,L)=(float)(K*I*J+L);
LBL_1:
					;
				}
			}
		}
	}
	printf(" *****  *****\n");
	printf(" ----- TEST NO.1 ----- \n");
	S=0.;
	for(I=1;I<=10;I++)
	{
		if (I > N)
		{
			for(J=1;J<=10;J++)
			{
				R20(I,J)=R21(I,J);
				S=R20(I,J)*R21(I,J);
				if (L20(I,J)==1)
				{
					for(K=1;K<=10;K++)
					{
LBL_12:
						;
						R30(I,J,K)=R20(I,J)+S;
					}
				}
				else
				{
					for(K=1;K<=10;K++)
					{
LBL_13:
						;
						R30(I,J,K)=R20(I,J)-S;
					}
				}
LBL_11:
				;
			}
		}
		else
		{
			R10(I)=R11(I)*R12(I);
			if (L11(I)==1)  S1 = S1 + R10(I);
			for(K=1;K<=10;K++)
			{
				for(L=1;L<=10;L++)
				{
LBL_14:
					;
					R31(K,I,L)=R32(K,I,L)*2.0;
				}
			}
		}
LBL_10:
		;
	}
	printf("  S   = %g\n",S);
	printf("  S1  = %g\n",S1);
	printf("  R10 =");
	for(I=1;I<=10;I++){
		printf(" %g",R10(I));
		if (I%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	printf("  R11 =");
	for(I=1;I<=10;I++){
		printf(" %g",R11(I));
		if (I%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	CTR=0;
	printf("\n");
	printf("  R20 =");
	for(I=1;I<=2;I++)
	{
		for(J=4;J<=6;J++)
		{
			printf(" %g",R20(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf("  R21 =");
	for(I=2;I<=6;I++)
	{
		for(J=1;J<=3;J++)
		{
			printf(" %g",R21(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf("  R30 =");
	for(I=1;I<=2;I++)
	{
		for(J=4;J<=6;J++)
		{
			for(K=1;K<=2;K++)
			{
				printf(" %g",R30(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	CTR=0;
	printf("\n");
	printf("  R31 =");
	for(I=2;I<=3;I++)
	{
		for(J=7;J<=8;J++)
		{
			for(K=9;K<=10;K++)
			{
				printf(" %g",R31(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	CTR=0;
	printf("\n");
	printf("  R40 =");
	for(I=1;I<=2;I++)
	{
		for(J=4;J<=6;J++)
		{
			for(K=1;K<=2;K++)
			{
				for(L=8;L<=9;L++)
				{
					printf(" %g",R40(I,J,K,L));
					CTR++;
					if (CTR%NCWNR==0)
					{
						printf("\n");
						printf("       ");
					}
				}
			}
		}
	}
	printf("\n");
	printf(" ----- TEST NO.2 ----- \n");
	S=0.;
	for(I=1;I<=10;I++)
	{
		if (X > Y)
		{
			for(J=1;J<=10;J++)
			{
				R20(I,J)=R21(I,J);
				S=R20(I,J)*R21(I,J);
				if (L20(5,5)==1)
				{
					for(K=1;K<=10;K++)
					{
LBL_22:
						;
						R30(I,J,K)=R20(I,J)+S;
					}
				}
				else
				{
					for(K=1;K<=10;K++)
					{
LBL_23:
						;
						R30(I,J,K)=R20(I,J)-S;
					}
				}
LBL_21:
				;
			}
		}
		else
		{
			R10(I)=R11(I)*R12(I);
			if (L11(I)==1)  S1 = S1 + R10(I);
			for(K=1;K<=10;K++)
			{
				for(L=1;L<=10;L++)
				{
LBL_24:
					;
					R31(K,I,L)=R32(K,I,L)*2.0;
				}
			}
		}
LBL_20:
		;
	}
	printf("  S   = %g\n",S);
	printf("  S1  = %g\n",S1);
	printf("  R10 =");
	for(I=1;I<=10;I++){
		printf(" %g",R10(I));
		if (I%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	printf("\n");
	printf("  R11 =");
	for(I=1;I<=10;I++){
		printf(" %g",R11(I));
		if (I%NCWNR==0)
		{
			printf("\n");
			printf("       ");
		}
	}
	CTR=0;
	printf("\n");
	printf("  R20 =");
	for(I=1;I<=2;I++)
	{
		for(J=4;J<=6;J++)
		{
			printf(" %g",R20(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf("  R21 =");
	for(I=2;I<=6;I++)
	{
		for(J=1;J<=3;J++)
		{
			printf(" %g",R21(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
	}
	CTR=0;
	printf("\n");
	printf("  R30 =");
	for(I=1;I<=2;I++)
	{
		for(J=4;J<=6;J++)
		{
			for(K=1;K<=2;K++)
			{
				printf(" %g",R30(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	CTR=0;
	printf("\n");
	printf("  R31 =");
	for(I=2;I<=3;I++)
	{
		for(J=7;J<=8;J++)
		{
			for(K=9;K<=10;K++)
			{
				printf(" %g",R31(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("       ");
				}
			}
		}
	}
	CTR=0;
	printf("\n");
	printf("  R40 =");
	for(I=1;I<=2;I++)
	{
		for(J=4;J<=6;J++)
		{
			for(K=1;K<=2;K++)
			{
				for(L=8;L<=9;L++)
				{
					printf(" %g",R40(I,J,K,L));
					CTR++;
					if (CTR%NCWNR==0)
					{
						printf("\n");
						printf("       ");
					}
				}
			}
		}
	}
        printf("\n");
	exit (0);
}
