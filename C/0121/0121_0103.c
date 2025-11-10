#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define EV10(i) ev10[i-1]
#define DV10(i) dv10[i-1]
#define QV10(i) qv10[i-1]
#define EV30(i) ev30[i-1]
#define IV30(i) iv30[i-1]
#define IV31(i) iv31[i-1]
float ev10[10]={
	0.0,0.0,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5};
double dv10[10]={
	0.0,200,200,200,200,200,200,200,200,200};
long double qv10[10]={
	-9,-8,-7,-6,-5,-4,-3,-2,-1,0};
float ev30[10]={
	1.5,1.5,1.5,1.5,1.5,2,2,2,2,2};
long int iv30[10]={
	2,2,2,2,2,2,2,2,2,2};
long int iv31[10]={
	2,2,2,2,2,2,2,2,2,2};
int main()
{
	long int IS10=0;
	double DS30=3.5;
	long int i;
	for(i=1;i<=10;i++){
		IS10=IS10+2;
		if (EV10(i) <  0)break;
	}
	printf("\n");
	printf("    -LOOP.01 \n");
	printf("\n");
	printf(" IS10= %ld \n",IS10);
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" EV10= %g \n",EV10(i));
	}
	for(i=1;i<=10;i++){
		if (DV10(i) <0 )
			DV10(i)=i*3;
	}
	printf("\n");
	printf("\n");
	printf("    -LOOP.02 \n");
	printf("\n");
	printf(" i= %ld \n",i);
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" DV10= %g   QV10= %g \n",DV10(i),(double)QV10(i));
	}
	for(i=1;i<=10;i++){
		if (IV30(i)*EV30(i)-DS30 <  0){
			IV31(i)=IV30(i)/i;
		}
		else{
			goto LBL_37;
		}
	}
	goto LBL_39;
LBL_37:
	;
	IV31(i)=IV30(i)*2;
LBL_39:
	;
	printf("\n");
	printf("\n");
	printf("    -LOOP.03 \n");
	printf("\n");
	printf(" i= %ld \n",i);
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" IV30= %ld  IV31= %ld  EV30= %g \n",IV30(i),IV31(i),EV30(i));
	}
	exit (0);
}
