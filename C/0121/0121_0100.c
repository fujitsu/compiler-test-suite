#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define EV10(i) ev10[i-1]
#define DV10(i) dv10[i-1]
#define EV30(i) ev30[i-1]
#define DV10(i) dv10[i-1]
#define LV30(i) lv30[i-1]
float ev10[10]={
	-10,0,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5};
double dv10[1000];
float ev30[12]={
	2,4,6,8,10,9,7,5,3,1,-3,-5};
unsigned long int lv30[10]={
	0,0,0,0,0,0,0,1,1,1};
int main()
{
	float ES10=1.0;
	double DS10=10;
	long int N=10;
	long int i;
	for(i=0;i< 1000;i++){
		dv10[i]=200;
	}
	for(i=0;i< 10;i++){
		lv30[i]=0;
	}
LBL_100:
	;
	for(i=1;i<=10;i++){
		if (EV10(i) <  0)break;
		{
			if (ES10 == 0)break;
		}
	}
	printf("    -LOOP.01 \n");
	for(i=1;i<=10;i++){
		printf(" EV10= %g  \n",EV10(i));
	}
	printf(" ES10= %g  ",ES10);
	printf(" i= %ld \n",i);
	if (ES10 != 0){
		ES10=0;
		goto LBL_100;
	}
	for(i=1;i<=N;i++){
		DS10=DS10*DV10(i);
		if (DV10(i)==1)break;
	}
	printf("    -LOOP.02 \n");
	printf(" i= %ld  \n",i);
	for(i=1;i<=11;i++){
		printf("DV10= %g   \n",DV10(i));
	}
	printf("DS10= %g \n",DS10);
	for(i=1;i<=10;i++){
		EV30(i)=EV30(i+1)+1.;
		if (LV30(i)==1)break;
		EV30(i+1)=EV30(i+2)-1;
	}
	printf("    -LOOP.03 \n");
	for(i=1;i<=12;i++){
		printf(" EV30= %g  \n",EV30(i));
	}
	exit (0);
}
