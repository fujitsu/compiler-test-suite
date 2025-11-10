#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define JV(i) jv[i-1]
#define EV10(i) ev10[i-1]
#define DV20(i) dv20[i-1]
#define EV20(i) ev20[i-1]
#define IV20(i) iv20[i-1]
#define EV30(i) ev30[i-1]
#define IV30(i) iv30[i-1]
 int jv[2];
 int itr1;
float ev10[10];
double dv20[200];
float ev20[200];
 int iv20[200];
static float ev30[64];
 int iv30[64];
int main()
{

	 int itr2=200;
	 int is30=-1;
	 int j=15;
	 int i,a,k,n;

	itr1=10;
	jv[0]=1;
	jv[1]=2;
	for(i=1;i<=4;i++){
		ev10[i-1]=0;
	}
	for(i=5;i<=9;i++){
		ev10[i-1]=-2.5;
	}
	ev10[9]=-1.5;
	for(i=1;i<=200;i++){
		ev20[i-1]=3.5;
	}
	for(i=1;i<=32;i++){
		ev30[i-1]=1.5;
	}
	for(i=33;i<=62;i++){
		ev30[i-1]=2;
	}
	ev30[63]=1.75;
	for(i=1;i<=200;i++){
		iv20[i-1]=1000;
	}
	for(i=1;i<=40;i++){
		iv30[i-1]=2;
	}
	iv30[40]=0;
	for(i=41;i<=64;i++){
		iv30[i-1]=3;
	}
	for(i=1;i<=2;i++){
		dv20[i-1]=1;
		dv20[i*2-1]=2;
	}
	for(i=5;i<=61;i++){
		dv20[i-1]=5;
	}
	dv20[61]=0;
	dv20[62]=5;
	dv20[63]=4;
	dv20[64]=0;
	for(i=64;i<=133;i++){
		dv20[i-1]=4;
	}
	dv20[133]=-1;
	dv20[134]=4;
	dv20[135]=-3;
	dv20[136]=4;
	dv20[137]=-3;
	dv20[138]=-1;
	for(i=140;i<=200;i++){
		dv20[i-1]=-3;
	}
	for(k=1;k<=2;k++)
	{
		j=jv[k-1];
		for(i=1;i<=itr1;i++)
		{
			if (ev10[i-1] >  0)
			{
				printf("    -LOOP.01 \n");
				for(a=1;a<=10;a++){
					printf(" %g ",ev10[a-1]);
				}
				printf("\n");
				break;
			}
		}
		for(i=1;i<=itr2;)
		{
			if (dv20[j-1] >  0)
			{
				ev20[i-1]=ev20[i-1]/512.0+dv20[j-1];
			}
			else
			{
				iv20[j-1]=j;
				goto LBL_29;
			}
			j=j+2;
			i=i+2;
		}
LBL_29:
		;
		iv20[i-1]=i;
		printf("    -LOOP.02 \n");
		printf(" %ld, %ld ",i,j);
		for(a=1;a<=200;a++){
			printf(" %g ",ev20[a-1]);
			n=a%10;
			if(n==0) printf("\n");
		}
	}
	for(i=1;i<=64;i++)
	{
		if (iv30[i-1]*(ev30[0]+2) == 0)goto LBL_30         ;
		else goto LBL_39;
LBL_30:
		;
		j=j+is30;
LBL_39:
		;
	}
	printf("    -LOOP.03 \n");
	printf(" %ld \n",j);
	exit (0);
}
