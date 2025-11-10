#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define EV10(i) ev10[i-1]
#define EV11(i) ev11[i-1]
#define DV20(i) dv20[i-1]
#define IV20(i) iv20[i-1]
#define IV30(i) iv30[i-1]
#define LV30(i) lv30[i-1]
float ev10[10]={
	0.0,0.0,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5};
float ev11[10];
double dv20[100];
long int iv20[100];
long int iv30[10];
unsigned long int lv30[2]={
	0,1};
long int N=100;
int main()
{
	long int IS30=0;
	long int i;
	for(i=0;i< 10;i++){
		ev11[i]=1000;
	}
	for(i=0;i< 19;i++){
		dv20[i]=10.0;
	}
	for(i=20;i< 39;i++){
		dv20[i]=20.0;
	}
	for(i=40;i<100;i++){
		dv20[i]=30.0;
		dv20[20]=0;
		dv20[40]=0;
	}
	for(i=0;i< 100;i++){
		iv20[i]=0;
	}
	for(i=0;i< 10;i++){
		iv30[i]=0;
	}
LBL_100:
	;
	for(i=1;i<=10;i++){
		if (EV10(i) >= 0){
			if (EV10(i) == 0){
				EV11(i)=999.;
				goto LBL_19;
			}
			else{
				EV11(i)=100.;
			}
		}
		else{
			EV11(i)=i;
		}
	}
LBL_19:
	;
	printf(" \n");
	printf("    -LOOP.01 \n");
	printf(" \n");
	for(i=1;i<=10;i++){
		printf(" EV10= %g  EV11= %g  \n",EV10(i),EV11(i));
	}
LBL_200:
	;
	for(i=1;i<=N;i++){
		if (DV20(i) >  0){
			IV20(i)=100;
		}
		else{
			IV20(i)=200;
			goto LBL_29;
		}
	}
LBL_29:
	;
	printf("\n");
	printf("    -LOOP.02 \n");
	printf("\n");
	printf(" i= %ld \n",i);
	printf("\n");
	for(i=1;i<=100;i++){
		printf(" IV20= %ld  \n",IV20(i));
	}
	if (i == 20){
		DV20(i)=1.0;
		goto LBL_200;
	}
	for(i=1;i<=10;i++){
		if (LV30(1) &&  LV30(2)==1)goto LBL_39;
		IV30(i)=i;
		IS30=IS30+1;
	}
LBL_39:
	;
	printf("\n");
	printf("    -LOOP.03 \n");
	printf("\n");
	printf(" IS30= %ld  \n",IS30);
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" IV30= %ld  \n",IV30(i));
	}
	exit (0);
}
