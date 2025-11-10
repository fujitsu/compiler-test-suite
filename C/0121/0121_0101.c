#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define EV10(i) ev10[i-1]
#define DV10(i) dv10[i-1]
#define EV30(i) ev30[i-1]
#define EV31(i) ev31[i-1]
#define IV30(i) iv30[i-1]
float ev10[10]={
	0,0,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5};
double dv10[1000];
float ev30[100],ev31[100];
long int iv30[100];
int main()
{
	float ES10=0;
	long int N=10;
	double DS30=3.5;
	long int N3=100,IS30=1;
	long int i,IS20;
	for(i=1;i< 1000;i++){
		dv10[i]=200;
	}
	dv10[0]=0;
	for(i=0;i< 50;i++){
		ev30[i]=1.5;
	}
	for(i=50;i<99;i++){
		ev30[i]=2;
	}
	ev30[99]=1.75;
	for(i=0;i< 100;i++){
		ev31[i]=100;
	}
	for(i=0;i< 100;i++){
		iv30[i]=2;
	}
LBL_100:
	;
	for(i=1;i<=10;i++){
		if (ES10 == 0)break;
		EV10(i)=i*ES10;
	}
	printf("    -LOOP.01 \n");
	for(i=1;i<=10;i++){
		printf("EV10= %g   ",EV10(i));
		printf("ES10= %g \n",ES10);
	}
	if (ES10 == 0){
		ES10=-1;
		goto LBL_100;
	}
LBL_200:
	;
	for(i=1;i<=N;i++){
		IS20=i*DV10(i);
		DV10(i)=IS20*2;
		if (DV10(i)==0.0)break;
	}
	printf("    -LOOP.02 \n");
	for(i=1;i<=11;i++){
		printf(" DV10= %g    ",DV10(i));
		printf(" i=%ld  \n",i);
	}
	if (i == 1){
		DV10(1)=-1.0;
		goto LBL_200;
	}
	for(i=1;i<=N3;i++){
		if((IV30(i)*EV30(i)-DS30)<0){
			EV31(IS30)=IV30(i)*EV30(i);
		}
		else{
			if((IV30(i)*EV30(i)-DS30)<0){
				IS30=IS30+1;
			}
			else goto LBL_37;
		}
	}
	goto LBL_39;
LBL_37:
	;
	IV30(i)=IV30(i)*2;
LBL_39:
	;
	printf("    -LOOP.03 \n");
	for(i=1;i<=100;i++){
		printf("IV30= %u EV30= %g EV31= %g   ",IV30(i),EV30(i),EV31(i));
		printf("IS30=%ld \n",IS30);
	}
	exit (0);
}
