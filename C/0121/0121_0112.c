#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define EV10(i) ev10[i-1]
#define DV20(i) dv20[i-1]
#define EV30(i) ev30[i-1]
float ev10[100];
float dv20[200];
float ev30[64];
int main()
{
	long int itr1=100,is10;
	long int itr2=200;
	long int i,j,k,l;
	for(i=0;i<=10;i++) ev10[i]=0.25;
	for(i=11;i<=41;i++) ev10[i]=1.5;
	for(i=42;i<=91;i++) ev10[i]=-2.5;
	for(i=92;i<=99;i++) ev10[i]=0;

	dv20[0]=1;
	dv20[2]=2;
	for(i=4;i<=62;i+=2) dv20[i]=5;
	dv20[64]=0;
	for(i=66;i<=136;i+=2) dv20[i]=4;
	dv20[138]=-1;
	for(i=140;i<=198;i+=2) dv20[i]=-3;

	for(i=1;i<=71;i+=2) dv20[i]=2;
	dv20[73]=-2;
	for(i=75;i<=199;i+=2) dv20[i]=4;

	for(i=0;i<=30;i++) ev30[i]=1.5;
	for(i=31;i<=61;i++) ev30[i]=2;
	ev30[62]=3;
	ev30[63]=1.75;
	for(k=1;k<=3;k++)
	{
		for(j=1;j<=3;j++)
		{
			for(i=1;i<=itr1;i++)
			{
				is10=ev10[i-1];
				if (ev10[i-1] == is10)
				{
					printf("  BRANCH OUT OCCURED.\n");
					break;
				}
			}

			printf("    -LOOP.01 \n");
			if (k != 3 || j != 3) ev10[92+j+(k-1)*3-1]=1.5;
		}
	}
	for(k=1;k<=2;k++)
	{
		for(j=1;j<=1;j++)
		{
			for(i=2;i<=itr2;i+=2)
			{
				if (dv20[i-1] <  0)
				{
					continue;
				}
				else
				{
					dv20[i-1]=sqrt(dv20[i-1]);
				}
LBL_20:
				;
			}
			printf("    -LOOP.02 \n");
			printf(" %ld",i);
			if (k == 2) dv20[0]=4.0;
		}
	}
	for(k=1;k<=2;k++)
	{
		for(j=1;j<=2;j++)
		{
			for(i=1;i<=64;i++)
			{
				if (sin(ev30[i-1]) >  0) goto LBL_30;
				ev30[i-1]=sin(ev30[i-1]);
				break;
LBL_30:
				;
				ev30[i-1]=cos(ev30[i-1]);
			}
			printf("    -LOOP.03 \n");
			for(l=1;l<=64;l++){
				printf(" %g",ev30[l-1]);
				if(l % 5 == 0) printf("\n");
			}
			printf(" i=%ld\n",i);
LBL_31:
			;
		}
	}
	exit (0);
}
