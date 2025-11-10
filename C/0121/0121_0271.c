#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define R4A1(i) r4a1[i-1]
#define R4A2(i) r4a2[i-1]
#define L4A1(i) l4a1[i-1]
#define L4A2(i) l4a2[i-1]
float r4a1[10]={
	1.,2.,3.,4.,5.,6.,7.,8.,9.,10.};
float r4a2[10]={
	11.,12.,13.,14.,15.,16.,17.,18.,19.,20.};
unsigned long int l4a1[10]={
	1,0,1,0,1,0,1,0,1,0};
unsigned long int l4a2[10]={
	1,0,1,0,1,0,1,0,1,0};
int main()
{
	long int K,i;
	long int L4S2,L4S3,L4S1,L4S4,L4S5,I,J;
	float R4S1,R4S2,R4S3;
	printf(" ####  ## BUSY ON EXIT ####\n");
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			R4S1=I;
			L4S2=1;
			L4S3=0;
			L4S1=1;
			L4S2=0;
			L4S3=L4A1(I)&&L4A2(I);
			L4S4=1^L4S3;
			L4S5=I==R4A1(I);
		}
LBL_10:
		;
	}
	printf(" ** TEST NO. 1 ***\n");
	printf(" %f \n",R4S1);
	printf(" %ld %ld %ld \n",L4S1,L4S2,L4S3);
	R4S2=R4S1*2.;
	for(I=1;I<=10;I++)
	{
		if (L4A2(I)==1)
		{
			R4A1(I)=R4S1;
			R4A2(I)=R4S2;
			R4S1=R4A2(I);
			R4A1(I)=R4S1;
			L4A1(I)=L4S1;
			L4A2(I)=L4S2;
			L4S1=L4A1(I)&&L4A2(I);
			L4A1(I)=L4S1;
		}
	}
	printf(" ** TEST NO. 2 **\n");
	for(i=1;i<=10;i++){
		printf(" %f %f \n",R4A1(i),R4A2(i));
	}
	printf(" %f \n",R4S1);
	for(i=1;i<=10;i++){
		printf(" %lu %lu \n",L4A1(i),L4A2(i));
	}
	printf(" %d \n",L4S1);
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			R4S1=R4A1(I)+R4A2(I)+1.;
			R4A1(I)=R4S1+1.;
			R4S1=R4A1(I)+R4A2(I);
			L4A1(I)=1^L4S1;
			L4S1=L4A1(I)|L4A2(I);
			L4A2(I)=L4S1&&L4S2;
			L4S2=!L4A2(I);
		}
	}
	printf(" ** TEST NO. 3 **\n");
	printf(" %f \n",R4S1);
	for(i=1;i<=10;i++){
		printf(" %f ",R4A1(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %lu ",L4A1(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %lu ",L4A2(i));
	}
	printf("\n");
	printf(" %ld %ld \n",L4S1,L4S2);
	for(I=1;I<=10;I++)
	{
		if (L4A2(I)==1)
		{
			R4A1(I)=R4S1;
			R4S1=R4A2(I);
			R4A1(I)=R4S1+R4A2(I);
			L4A1(I)=L4S1;
			L4S1=1^L4A1(I);
			L4S2=L4S1&&L4A2(I);
			L4A1(I)=L4S1&&L4S2;
		}
	}
	printf(" ** TEST NO. 4 **\n");
	for(i=1;i<=10;i++){
		printf(" %g ",R4A1(i));
	}
	printf("\n");
	printf(" %g \n",R4S1);
	for(i=1;i<=10;i++){
		printf(" %lu",L4A1(i));
	}
	printf("\n");
	printf(" %ld %ld \n",L4S1,L4S2);
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			if (L4A2(I)==1)
			{
				R4S1=R4A1(J);
				R4S2=I;
				R4S3=J;
				R4S1=R4S2+R4S3;
				L4S1=(I==R4A1(J));
				L4S2=(J==R4A1(J));
				L4S3=L4S1&&L4S2;
				L4S4=L4A1(J)&&L4S1;
			}
		}
	}
	printf(" ** TEST NO. 5 **\n");
	printf(" %f %f \n",R4S1,R4S2);
	printf(" %ld %ld %ld %ld %ld \n",L4S1,L4S2,L4S3,L4S4,L4S5);
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			R4S1=R4A1(I);
			R4S2=I;
			L4S1=L4A1(I);
			L4S2=I==R4A1(I);
			for(J=1;J<=10;J++)
			{
				if (L4A2(I)==1)
				{
					R4S1=R4A1(J)+R4A1(J);
					L4S1=L4S1&&L4A1(J);
					L4S2=L4S1|L4A1(J);
				}
			}
		}
	}
	printf(" ** TEST NO. 6 **\n");
	printf(" %f %f %ld %ld \n",R4S1,R4S2,L4S1,L4S2);
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			R4A1(I)=R4S1;
			L4A1(I)=L4S1;
			L4A2(I)=L4S2&&L4S1;
			for(J=1;J<=10;J++)
			{
				if (L4A2(I)==1)
				{
					R4S1=R4A1(J);
					L4S1=L4A1(J);
					L4S2=J==R4A1(I);
					L4S3=!L4A2(I);
					L4S4=L4A1(I)&&L4A2(J);
				}
			}
		}
	}
	printf(" ** TEST NO. 7 **\n");
	for(i=1;i<=10;i++){
		printf(" %g ",R4A1(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %lu ",L4A1(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %lu ",L4A2(i));
	}
	printf("\n");
	printf(" %f %ld %ld %ld %ld \n",R4S1,L4S1,L4S2,L4S3,L4S4);
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			if (L4A1(I)==1)
			{
				R4S1=R4A1(J)+1.;
			}
		}
		for(K=1;K<=10;K++)
		{
			if (L4A2(I)==1)
			{
				R4S1=R4A1(K)+R4A2(K);
			}
		}
	}
	printf(" **TEST NO. 8 **\n");
	printf(" R4S1= %g \n",R4S1);
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			if (L4A1(I)==1)
			{
				R4S1=R4A1(J)+1.;
			}
		}
		for(K=1;K<=10;K++)
		{
			if (L4A2(I)==1)
			{
				R4A1(K)=R4S1;
			}
		}
	}
	printf(" ** TEST NO. 9 **\n");
	printf(" R4S1= %g \n",R4S1);
	for(i=1;i<=10;i++){
		printf(" %g ",R4A1(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (L4A2(I)==1)
		{
			R4S1=R4A1(I)+1.;
			for(J=1;J<=10;J++)
			{
				if (L4A2(I)==1)
				{
					R4S1=J;
					for(K=1;K<=10;K++)
					{
						if (L4A1(I)==1)
						{
							R4S1=R4A1(K);
						}
					}
				}
			}
		}
	}
	printf(" ** TEST NO. 10 **\n");
	printf(" R4S1= %g \n",R4S1);
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			R4S1=R4A1(I);
			for(J=1;J<=10;J++)
			{
				if (L4A2(I)==1)
				{
					R4A1(J)=R4S1;
					for(K=1;K<=10;K++)
					{
						if (L4A1(I)==1)
						{
							R4S1=R4A1(K);
						}
					}
				}
			}
		}
	}
	printf(" ** TEST NO. 11 **\n");
	printf(" R4S1= %g \n",R4S1);
	for(i=1;i<=10;i++){
		printf(" %g ",R4A1(i));
	}
	printf("\n");
	exit (0);
}
