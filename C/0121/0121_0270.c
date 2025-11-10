#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define R4S1(i) r4s1[i-1]
#define R4A1(i) r4a1[i-1]
#define R4A2(i) r4a2[i-1]
#define L4S1(i) l4s1[i-1]
#define L4A1(i) l4a1[i-1]
#define L4A2(i) l4a2[i-1]
float r4a1[10]={
	1.,2.,3.,4.,5.,6.,7.,8.,9.,10.};
float r4a2[10]={
	11.,12.,13.,14.,15.,16.,17.,18.,19.,20.};
float r4s1[10]={
	0.,0.,0.,0.,0.,0.,0.,0.,0.,0.};
unsigned long int l4a1[10]={
	1,0,1,0,1,0,1,0,1,0};
unsigned long int l4a2[10]={
	1,0,1,0,1,0,1,0,1,0};
unsigned long int l4s1[10]={
	0,0,0,0,0,0,0,0,0,0};
int main()
{
	long int I,J,K,i;
	printf(" ####  ## BUSY ON EXIT ####\n");
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			R4S1(1)=I;
			if ((R4S1(1) + R4A1(I) + 1.)  ==  0.0)
			{
				L4S1(2)=0;
			}
			else
			{
				L4S1(2)=1;
			}
			if ((R4A1(I) * I)  ==  0.0)
			{
				L4S1(3)=0;
			}
			else
			{
				L4S1(3)=1;
			}
			L4S1(1)=1;
			L4S1(2)=0;
			L4S1(3)=L4A1(I)&&L4A2(I);
			L4S1(4)=1^L4S1(3);
			L4S1(5)=I==R4A1(I);
		}
		else
		{
			R4S1(1)=I;
			if ((R4S1(1) + R4A1(I) + 1.)  ==  0.0)
			{
				L4S1(2)=0;
			}
			else
			{
				L4S1(2)=1;
			}
			if ((R4A1(I) * I)  ==  0.0)
			{
				L4S1(3)=0;
			}
			else
			{
				L4S1(3)=1;
			}
			L4S1(1)=1;
			L4S1(2)=0;
			L4S1(3)=L4A1(I)&&L4A2(I);
			L4S1(4)=1^L4S1(3);
			L4S1(5)=I==R4A1(I);
		}
	}
	printf(" ** TEST NO. 1 ***\n");
	for(i=1;i<=10;i++){
		printf(" %g ",R4S1(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %lu ",L4S1(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			R4A1(I)=R4S1(1);
			R4A2(I)=R4S1(2);
			R4S1(1)=R4A2(I);
			R4A1(I)=R4S1(1);
			L4A1(I)=L4S1(1);
			L4A2(I)=L4S1(2);
			L4S1(3)=L4A1(I)&&L4A2(I);
			L4A1(I)=L4S1(4);
		}
	}
	printf(" ** TEST NO. 2 **\n");
	for(i=1;i<=10;i++){
		printf(" %g ",R4A1(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %g ",R4A2(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %g ",R4S1(i));
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
	for(i=1;i<=10;i++){
		printf(" %lu ",L4S1(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (L4A2(I)==1)
		{
			R4S1(1)=R4A1(I)+R4A2(I)+1.;
			R4A1(I)=R4S1(2)+1.;
			R4S1(3)=R4A1(I)+R4A2(I);
			L4A1(I)=1^L4S1(1);
			L4S1(4)=L4A1(I)|L4A2(I);
			L4A2(I)=L4S1(1)&&L4S1(2);
			L4S1(5)=1^L4A2(I);
		}
	}
	printf(" ** TEST NO. 3 **\n");
	for(i=1;i<=10;i++){
		printf(" %g ",R4S1(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %g ",R4A1(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %lu ",L4A1(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" %lu ",L4S1(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			R4A1(I)=R4S1(1);
			R4S1(2)=R4A2(I);
			R4A1(I)=R4S1(3)+R4A2(I);
			L4A1(I)=L4S1(1);
			L4S1(4)=1^L4A1(I);
			L4S1(5)=L4S1(6)&&L4A2(I);
			L4A1(I)=L4S1(1)&&L4S1(2);
		}
	}
	printf(" ** TEST NO. 4 **\n");
	for(i=1;i<=10;i++){
		printf(" %f %f %lu %lu \n",R4A1(i),R4S1(i),L4A1(i),L4S1(i));
	}
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			if (L4A1(I)==1)
			{
				R4S1(1)=R4A1(J);
				R4S1(2)=I;
				R4S1(3)=J;
				R4S1(4)=R4S1(2)+R4S1(3);
				L4S1(1)=I==R4A1(J);
				L4S1(2)=J==R4A1(J);
				L4S1(3)=L4S1(5)&&L4S1(6);
				L4S1(4)=L4A1(J)&&L4S1(1);
			}
		}
	}
	printf(" ** TEST NO. 5 **\n");
	for(i=1;i<=10;i++){
		printf(" %f %lu \n",R4S1(i),L4S1(i));
	}
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			R4S1(1)=R4A1(I);
			R4S1(2)=I;
			L4S1(1)=L4A1(I);
			L4S1(2)=I==R4A1(I);
			for(J=1;J<=10;J++)
			{
				if (L4A1(I)==1)
				{
					R4S1(3)=R4A1(J)+R4A1(J);
					L4S1(3)=L4S1(1)&&L4A1(J);
					L4S1(4)=L4S1(1)|L4A1(J);
				}
			}
		}
	}
	printf(" ** TEST NO. 6 **\n");
	for(i=1;i<=10;i++){
		printf(" %f %lu \n",R4S1(i),L4S1(i));
	}
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			R4A1(I)=R4S1(1);
			L4A1(I)=L4S1(1);
			L4A2(I)=L4S1(1)&&L4S1(2);
			for(J=1;J<=10;J++)
			{
				if (L4A2(I)==1)
				{
					R4S1(3)=R4A1(J);
					L4S1(3)=L4A1(J);
					L4S1(4)=J==R4A1(I);
					L4S1(5)=1^L4A2(I);
					L4S1(6)=L4A1(I)&&L4A2(J);
				}
LBL_71:
				;
			}
		}
LBL_70:
		;
	}
	printf(" ** TEST NO. 7 **\n");
	for(i=1;i<=10;i++){
		printf(" %f %lu %lu %f %lu \n",
		    R4A1(i),L4A1(i),L4A2(i),R4S1(i),L4S1(i));
	}
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			if (L4A1(I)==1)
			{
				R4S1(1)=R4A1(J)+1.;
			}
LBL_81:
			;
		}
		for(K=1;K<=10;K++)
		{
			if (L4A2(I)==1)
			{
				R4S1(1)=R4A1(K)+R4A2(K);
			}
LBL_82:
			;
		}
LBL_80:
		;
	}
	printf(" **TEST NO. 8 **\n");
	for(i=1;i<=10;i++){
		printf(" %f ",R4S1(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		for(J=1;J<=10;J++)
		{
			if (L4A1(I)==1)
			{
				R4S1(1)=R4A1(J)+1.;
			}
		}
		for(K=1;K<=10;K++)
		{
			if (L4A2(I)==1)
			{
				R4A1(K)=R4S1(1);
			}
		}
	}
	printf(" ** TEST NO. 9 **\n");
	for(i=1;i<=10;i++){
		printf(" %f %f \n",R4S1(i),R4A1(i));
	}
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			R4S1(1)=R4A1(I)+1.;
			for(J=1;J<=10;J++)
			{
				if (L4A2(I)==1)
				{
					R4S1(1)=J;
					for(K=1;K<=10;K++)
					{
						if (L4A1(I)==1)
						{
							R4S1(1)=R4A1(K);
						}
LBL_102:
						;
					}
				}
LBL_101:
				;
			}
		}
LBL_100:
		;
	}
	printf(" ** TEST NO. 10 **\n");
	for(i=1;i<=10;i++){
		printf(" %f ",R4S1(i));
	}
	printf("\n");
	for(I=1;I<=10;I++)
	{
		if (L4A1(I)==1)
		{
			R4S1(1)=R4A1(I);
			for(J=1;J<=10;J++)
			{
				if (L4A2(I)==1)
				{
					R4A1(J)=R4S1(1);
					for(K=1;K<=10;K++)
					{
						if (L4A1(I)==1)
						{
							R4S1(1)=R4A1(K);
						}
LBL_112:
						;
					}
				}
LBL_111:
				;
			}
		}
LBL_110:
		;
	}
	printf(" ** TEST NO. 11 **\n");
	for(i=1;i<=10;i++){
		printf(" %f %f \n",R4S1(i),R4A1(i));
	}
	exit (0);
}
