#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define EV10(i) ev10[i-1]
#define DV20(i,j) dv20[i-1][j-1]
#define EV20(i) ev20[i-1]
#define EV30(i) ev30[i-1]
#define IV30(i) iv30[i-1]
float ev10[10]={
	0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0};
double dv20[2][2]={
	1.0,2.0,3.0,0.0};
float ev20[10]={
	1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0};
float ev30[10]={
	1.5,1.5,1.5,1.5,1.5,2.0,2.0,2.0,2.0,2.0};
long int iv30[10]={
	2,2,2,2,2,2,2,2,2,2};
int main()
{
	double DS30=3.5;
	float EVMX=0;
	long int i,j,k;
	float ES10;
	for(i=1;i<=10;i++){
		ES10=i-EV10(i);
		if ((ES10-1) >  0) goto LBL_18;
		if (ES10 >  0) goto LBL_19;
	}
LBL_18:
	;
	printf("   18 \n");
LBL_19:
	;
	printf("\n");
	printf("    -LOOP.01 \n");
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" EV10= %g \n",EV10(i));
	}
	for(i=1;i<=2;i++){
		for(j=1;j<=2;j++){
			if (DV20(i,j) == 0)goto LBL_29;
			for(k=1;k<=10;k++){
				EV20(k)=EV20(k)/DV20(i,j);
			}
		}
	}
LBL_29:
	;
	printf("\n");
	printf("    -LOOP.02 \n");
	printf("\n");
	printf(" i= %ld \n",i);
	printf("\n");
	for(i=1;i<=2;i++){
		printf(" EV20= %g \n",EV20(i));
	}
	printf("\n");
	for(j=1;j<=2;j++){
		for(i=1;i<=2;i++){
			printf(" DV20= %g  \n",DV20(i,j));
		}
	}
	for(i=1;i<=10;i++){
		if (EVMX <  EV30(i)) EVMX=EV30(i);
		if (IV30(i)*EV30(i)-DS30 == 0 ) goto LBL_37;
	}
	goto LBL_39;
LBL_37:
	;
	IV30(i)=IV30(i)*2;
LBL_39:
	;
	printf("\n");
	printf("    -LOOP.03 \n");
	printf("\n");
	printf(" EVMX= %g  \n",EVMX);
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" IV30= %ld \n",IV30(i));
	}
	exit (0);
}
