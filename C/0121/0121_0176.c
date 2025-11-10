#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define R1(i) r1[i-1]
#define R2(i) r2[i-1]
#define R3(i) r3[i-1]
#define R4(i) r4[i-1]
#define R5(i) r5[i-1]
#define R6(i,j,k) r6[i-1][j-1][k-1]
float r1[20],r2[20],r3[20],r4[20],r5[20],r6[20][20][20];
int main()
{
	long int N=10;
	long int NCWNR=10;
	long int I,J,K,I1,I2,I3,CTR;
	printf(" *****  MI METHOD TEST PROGRAM *****\n");
	for(I=1;I<=20;I++)
	{
		R1(I)=1.;
		R2(I)=R1(I)+1.;
		R3(I)=R2(I)+1.;
		R4(I)=(float)(I);
		R5(I)=R4(I)+1.;
LBL_99:
		;
	}
	for(I=1;I<=20;I++)
	{
		for(J=1;J<=20;J++)
		{
			for(K=1;K<=20;K++)
			{
				R6(I,J,K)=R1(I)+R2(J);
LBL_98:
				;
			}
		}
	}
	for(I1=1;I1<=N;I1++)
	{
		R1(I1)=(float)(I1);
		R2(I1)=R1(I1)+(float)(I1);
		for(I2=1;I2<=N;I2++)
		{
			R3(I2)=R1(I1+1)+(float)(I2);
			R4(I2)=R2(I1+1)+R4(I2+1);
			for(I3=1;I3<=N;I3++)
			{
				R5(I3)=R1(I1+1)+R2(I1+1)+R3(I2+1)+R4(I2+1);
				R6(I1,I2,I3)=R5(I3+1)+(float)(I3)+R1(I1+1)+(float)(I1);
LBL_102:
				;
			}
LBL_101:
			;
		}
LBL_100:
		;
	}
	printf(" +++ TEST NO. 1 +++\n");
	CTR=0;
	printf(" R1 =");
	for(I=1;I<=20;I++){
		printf(" %g",R1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R2 =");
	for(I=1;I<=20;I++){
		printf(" %g",R2(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R3 =");
	for(I=1;I<=20;I++){
		printf(" %g",R3(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R4 =");
	for(I=1;I<=20;I++){
		printf(" %g",R4(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R5 =");
	for(I=1;I<=20;I++){
		printf(" %g",R5(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R6 =");
	for(I=1;I<=20;I++){
		for(J=1;J<=20;J++){
			for(K=1;K<=20;K++){
				printf(" %g",R6(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("    ");
				}
			}
		}
	}
	printf("\n");
	for(I1=1;I1<=N;I1++)
	{
		for(I2=1;I2<=N;I2++)
		{
			for(I3=1;I3<=N;I3++)
			{
				R1(I3)=R2(I3+1)+(float)(I1);
				R2(I3)=R3(I2+1)+R4(I2+1);
				R6(I1,I2,I3)=R1(I3+1)+R5(I1+1)+(float)(I1);
LBL_202:
				;
			}
			R3(I2)=1.+(float)(I2);
			R4(I2)=R3(I2)+1.;
LBL_201:
			;
		}
		R5(I1)=1.;
LBL_200:
		;
	}
	printf(" +++++ TEST NO. 2 +++++\n");
	CTR=0;
	printf(" R1 =");
	for(I=1;I<=20;I++){
		printf(" %g",R1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R2 =");
	for(I=1;I<=20;I++){
		printf(" %g",R2(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R3 =");
	for(I=1;I<=20;I++){
		printf(" %g",R3(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R4 =");
	for(I=1;I<=20;I++){
		printf(" %g",R4(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R5 =");
	for(I=1;I<=20;I++){
		printf(" %g",R5(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R6 =");
	for(I=1;I<=20;I++){
		for(J=1;J<=20;J++){
			for(K=1;K<=20;K++){
				printf(" %g",R6(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("    ");
				}
			}
		}
	}
	printf("\n");
	for(I1=1;I1<=N;I1++)
	{
		R1(I1)=1.;
		R2(I1)=R1(I1)+(float)(I1);
		for(I2=1;I2<=N;I2++)
		{
			R3(I2)=R1(I1+1)+(float)(I2);
			R4(I2)=R2(I1+1)+R3(I2+1);
			for(I3=1;I3<=N;I3++)
			{
				R5(I3)=R1(I1+1)+R2(I1+1)+(float)(I3);
				R6(I1,I2,I3)=R3(I2+1)+R1(I1+1);
LBL_302:
				;
			}
			R3(I2)=R1(I1)+R2(I1);
LBL_301:
			;
		}
		R1(I1)=R1(I1)+(float)(I1);
		R2(I1)=R2(I1)+R1(I1);
LBL_300:
		;
	}
	printf(" +++++ TEST NO. 3 +++++\n");
	CTR=0;
	printf(" R1 =");
	for(I=1;I<=20;I++){
		printf(" %g",R1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R2 =");
	for(I=1;I<=20;I++){
		printf(" %g",R2(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R3 =");
	for(I=1;I<=20;I++){
		printf(" %g",R3(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R4 =");
	for(I=1;I<=20;I++){
		printf(" %g",R4(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R5 =");
	for(I=1;I<=20;I++){
		printf(" %g",R5(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R6 =");
	for(I=1;I<=20;I++){
		for(J=1;J<=20;J++){
			for(K=1;K<=20;K++){
				printf(" %g",R6(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("    ");
				}
			}
		}
	}
	printf("\n");
	for(I1=1;I1<=N;I1++)
	{
		for(I2=1;I2<=N;I2++)
		{
			R1(I2)=(float)(I1+I2);
			R2(I2)=R1(I2)+R1(I2);
			for(I3=1;I3<=N;I3++)
			{
				R3(I2)=R3(I2+1)+(float)(I3);
				R6(I1,I2,I3)=R1(I2+1)+1.;
LBL_402:
				;
			}
LBL_401:
			;
		}
LBL_400:
		;
	}
	printf(" +++++ TEST NO. 4 +++++\n");
	CTR=0;
	printf(" R1 =");
	for(I=1;I<=20;I++){
		printf(" %g",R1(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R2 =");
	for(I=1;I<=20;I++){
		printf(" %g",R2(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R3 =");
	for(I=1;I<=20;I++){
		printf(" %g",R3(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R4 =");
	for(I=1;I<=20;I++){
		printf(" %g",R4(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R5 =");
	for(I=1;I<=20;I++){
		printf(" %g",R5(I));
		CTR++;
		if (CTR%NCWNR==0)
		{
			printf("\n");
			printf("    ");
		}
	}
	printf("\n");
	CTR=0;
	printf(" R6 =");
	for(I=1;I<=20;I++){
		for(J=1;J<=20;J++){
			for(K=1;K<=20;K++){
				printf(" %g",R6(I,J,K));
				CTR++;
				if (CTR%NCWNR==0)
				{
					printf("\n");
					printf("    ");
				}
			}
		}
	}
	printf("\n");

	exit(0);
}
