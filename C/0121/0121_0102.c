#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define EV10(i) ev10[i-1]
#define DV20(i) dv20[i-1]
#define DV21(i) dv21[i-1]
#define DV22(i) dv22[i-1]
#define EV30(i) ev30[i-1]
#define IV30(i) iv30[i-1]
#define LV30(i) lv30[i-1]
float ev10[10]={
	1,1,1,1,1,1,1,1,1,1};
double dv20[10]={
	10,10,10,10,10,10,10,10,10,10};
double dv21[10]={
	4,4,4,4,4,4,4,4,4,4};
double dv22[10]={
	4,4,4,4,4,4,4,4,3,2};
float ev30[10]={
	1.5,1.5,1.5,1.5,1.5,2,2,2,2,2};
long int iv30[10]={
	2,2,2,2,2,2,2,2,2,2};
unsigned long int lv30[10]={
	0,0,0,0,0,0,1,1,1,1};
int main()
{
	float ES10=-5;
	double DS30=3.5;
	float DS20;
	long int i;
	long int j;
	for(j=1;j<=10;j++){
		for(i=1;i<=j;i++){
			ES10=ES10+EV10(i)+EV10(11-i);
		}
		if (ES10 >  20)goto LBL_19;
	}
	printf("   NORMAL EXIT \n");
LBL_19:
	;
	printf("\n");
	printf("    -LOOP.01 \n");
	printf("\n");
	printf(" ES10= %g \n",ES10);
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" EV10= %g \n",EV10(i));
	}
	for(i=1;i<=10;i++){
		DS20=DV21(i)*DV22(i);
		DS20=DS20-1.;
		if((DV20(i)-DS20)<0)break;
	}
	printf("\n");
	printf("    -LOOP.02 \n");
	printf("\n");
	printf(" i=%ld \n",i);
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" DV20= %g  \n",DV20(i));
	}
	for(i=1;i<=10;i++){
		if ((IV30(i)*EV30(i)-DS30)<0){
			if (LV30(i)==1)goto LBL_39;
			goto LBL_39;
		}
	}
	if ((LV30(i)*EV30(i)-DS30)>0){
		IV30(i)=IV30(i)*2;
		goto LBL_39;
	}
	EV30(i)=EV30(i)*3;
	goto LBL_39;
LBL_39:
	;
	printf("\n");
	printf("    -LOOP.03 \n");
	printf("\n");
	printf(" i= %ld \n",i);
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" IV30= %ld   EV30= %g  \n",IV30(i),EV30(i));
	}
	exit (0);
}
