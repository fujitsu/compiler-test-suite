#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define EV10(i,j) ev10[i-1][j-1]
#define EV11(i) ev11[i-1]
#define DV20(i) dv20[i-1]
#define EV20(i) ev20[i-1]
#define RV30(i) rv30[i-1]
#define RV31(i) rv31[i-1]
#define IV30(i) iv30[i-1]
float ev10[10][3],ev11[3]={
	1,0,-1};
double dv20[10];
float ev20[10]={
	1,2,3,4,5,6,7,8,9,10};
float rv30[100],rv31[100];
long int iv30[100];
int main()
{
	double DS30=3.5;
	long int N30=100;
	long int i,j;
	for(j=0;j< 3;j++){
		for(i=0;i< 10;i++){
			ev10[i][j]=100;
		}
	}
	for(i=0;i< 10;i++){
		dv20[i]=10;
		dv20[8]=-9;
		dv20[9]=7;
	}
	for(i=0;i< 100;i++){
		rv30[i]=1.5;
		rv30[9]=2.0;
		rv30[19]=2.0;
	}
	for(i=0;i<10;i++){
		rv31[i]=i+1;
	}
	for(i=10;i<20;i++){
		rv31[i]=10;
	}
	for(i=20;i<100;i++){
		rv31[i]=246;
	}
	for(i=0;i< 100;i++){
		iv30[i]=2;
	}
	for(j=1;j<=3;j++){
		if (EV11(j)<0)break;
		for(i=1;i<=10;i++){
			EV10(i,j)=i*j-EV11(j);
		}
	}
	printf("    -LOOP.01 \n");
	printf(" j=%ld \n",j);
	for(i=1;i<=10;i++){
		for(j=1;j<= 3;j++){
			printf(" EV10=  %f ",EV10(i,j));
		printf(" EV11=  %g \n",EV11(j));
		}
	
	}
	for(i=2;i<=10;i++){
		if (DV20(i)>0)break;
		EV20(i)=-EV20(i-1)*2.5;
	}
	printf("    -LOOP.02 \n");
	for(i=1;i<=10;i++){
		printf(" DV20=  %g  EV20=  %g \n",DV20(i),EV20(i));
	}
	for(i=1;i<=N30;i++){
		if ((IV30(i)*RV30(i) -DS30)<0)break;
		RV31(i)=RV31(i)*2+DS30;
	}
	printf("    -LOOP.03 \n");
	printf(" i=  %ld \n",i);
	for(i=1;i<=100;i++){
		printf(" IV30=  %ld  RV30=   %g \n",IV30(i),RV30(i));
	}
	exit (0);
}
 
