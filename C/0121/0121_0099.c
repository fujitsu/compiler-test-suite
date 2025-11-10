#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define EV10(i) ev10[i-1]
#define DV20(i) dv20[i-1]
#define EV20(i) ev20[i-1]
#define DV30(i) dv30[i-1]
#define EV30(i) ev30[i-1]
#define LV30(i) lv30[i-1]
float ev10[10]={
	-10,-2,0,1.5,1.5,1.5,1.5,1.5,1.5,1.5};
double dv20[100];
float ev20[100];
double dv30[10];
float ev30[10]={
	1,3,1,3,1,3,1,3,1,3};
unsigned long int lv30[10]={
	0,0,0,0,0,0,0,1,1,1};
int main()
{
	float ES10=3.5;
	double DS20;
	long int i,k;
	for(i=0;i< 100;i++){
		dv20[i]=2;
	}
	for(i=0;i< 100;i++){
		ev20[i]=2;
	}
	for(i=0;i< 10;i++){
		dv30[i]=2;
	}
	for(i=1;i<=10;i++){
		if (EV10(i) <  0)continue;
		if (ES10 == 0)break;
		EV10(i)=ES10*EV10(i);
	}
	printf("    -LOOP.01 \n");
	for(i=1;i<=10;i++){
		printf(" EV10= %g ",EV10(i));
		printf(" ES10= %g \n",ES10);
	}
	for(i=2;i<=99;i++){
		DS20=DV20(i)*DV20(i+1);
		if (DS20 >0){
			EV20(i)=sqrt(DS20);
			DV20(i)=EV20(i)-3.5;
		}
		else{
			if(DS20==0.0)goto LBL_29;
		}
	}
	printf("    LOOP IS NORMALY FINISHED \n");
LBL_29:
	;
	printf("    -LOOP.02 \n");
	for(i=1;i<=100;i++){
		printf(" i= %ld DV20= %g EV20= %g \n",i,DV20(i),EV20(i));
	}
	k=1;
	for(i=1;i<=10;i++){
		if (LV30(i)==1)goto LBL_39;
		LV30(i)=DV30(k)>EV30(k);
		k=k+1;
	}
	printf("   NORMALLY FINISHED \n");
LBL_39:
	;
	printf("    -LOOP.03 \n");
	for(i=1;i<=10;i++){
		printf(" k= %ld DV30= %g EV30= %g \n",k,DV30(i),EV30(i));
	}
	exit (0);
}
