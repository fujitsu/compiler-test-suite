#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define EV10(i) ev10[i-1]
#define EV11(i) ev11[i-1]
#define DV10(i) dv10[i-1]
#define EV30(i) ev30[i-1]
#define IV30(i) iv30[i-1]
#define LV30(i) lv30[i-1]
float ev10[10],ev11[10];
double dv10[1000];
float ev30[10];
long int iv30[10];
unsigned long int lv30[10];
int main()
{
	long int n=10,i;
	double DS30=3.5;
	for(i=0;i< 10;i++){
		if(i==0 || i==1){
			ev10[i]=0;
		}
		else{
			ev10[i]=1.5;
		}
	}
	for(i=0;i< 10;i++){
		ev11[i]=100;
	}
	for(i=0;i< 1000;i++){
		if(i==0){
			dv10[i]=0;
		}
		else{
			dv10[i]=200;
		}
	}
	for(i=0;i< 10;i++){
		if(i>=0 && i<=4){
			ev30[i]=1.5;
		}
		else{
			ev30[i]=2;
		}
	}
	for(i=0;i< 10;i++){
		iv30[i]=2;
	}
	for(i=0;i< 10;i++){
		lv30[i]=0;
	}
LBL_100:
	;
	for(i=1;i<=10;i++)
	{
		if (EV10(i) >  0)goto LBL_19         ;
		if (EV10(i) <  0)goto LBL_19         ;
		EV11(i)=i;
LBL_10:
		;
	}
LBL_19:
	;
	printf("    -LOOP.01 \n");
	for(i=1;i<=10;i++){
		printf(" %g %g ",EV10(i),EV11(i));
	}
	printf("\n");
	if (EV10(3) >  0)
	{
		EV10(3)=-100;
		goto LBL_100;
	}
LBL_200:
	;
	for(i=1;i<=n;i++)
	{
		if (DV10(i) < 0) goto LBL_20;
		goto LBL_29;
LBL_20:
		;
	}
LBL_29:
	;
	printf("    -LOOP.02 \n");
	for(i=1;i<=11;i++){
		printf(" %ld %g ",i,DV10(i));
	}
	printf("\n");
	if (i == 1)
	{
		DV10(1)=-1.0;
		goto LBL_200;
	}
	for(i=1;i<=10;i++)
	{
		if (IV30(i)*EV30(i)-DS30 < 0) goto LBL_32;
		if (IV30(i)*EV30(i)-DS30 == 0) goto LBL_37;
		if (IV30(i)*EV30(i)-DS30 >  0) goto LBL_38;
LBL_32:
		;
		if (LV30(i) == 1)goto LBL_39         ;
LBL_30:
		;
	}
	goto LBL_39;
LBL_37:
	;
	IV30(i)=IV30(i)*2;
	goto LBL_39;
LBL_38:
	;
	EV30(i)=EV30(i)*3;
	goto LBL_39;
LBL_39:
	;
	printf("    -LOOP.03 \n");
	for(i=1;i<=10;i++){
		printf(" %ld %ld %g\n",i,IV30(i),EV30(i));
	}
	printf("\n");
	exit (0);
}
