#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define EV10(i) ev10[i-1]
#define EV11(i) ev11[i-1]
#define DV20(i) dv20[i-1]
#define EV20(i) ev20[i-1]
#define IV20(i) iv20[i-1]
#define EV30(i) ev30[i-1]
#define IV30(i) iv30[i-1]
float ev10[10]={
	0.0,0.0,0.0,0.0,-2.5,-2.5,-2.5,-2.5,-2.5,1.5};
float ev11[10]={
	100.0,100.0,100.0,100.0,100.0,100.0,100.0,100.0,100.0,100.0};
double dv20[100];
float ev20[100];
long int iv20[101];
float ev30[64];
long int iv30[64];
int main()
{
	long int ITR1=10;
	long int ITR2=100;
	double DS30=3.5;
	long int i;
	float ES30;
	dv20[0]=1;
	dv20[1]=-2;
	dv20[90]=-1;
	for(i=2;i<90;i++){
		dv20[i]=5;
	}
	for(i=91;i<100;i++){
		dv20[i]=-3;
	}
	for(i=0;i< 100;i++){
		ev20[i]=3.5;
	}
	for(i=0;i< 101;i++){
		iv20[i]=1;
	}
	for(i=0;i< 31;i++){
		ev30[i]=1.5;
	}
	for(i=31;i< 62;i++){
		ev30[i]=2;
	}
	ev30[62]=3;
	ev30[63]=1.75;
	for(i=0;i<64;i++){
		iv30[i]=2;
	}
	for(i=1;i<=ITR1;i++){
		if (EV10(i) >  0) goto LBL_19;
		EV11(i)=i+EV10(i);
	}
	EV11(10)=1000.;
LBL_19:
	;
	printf("\n");
	printf("    -LOOP.01 \n");
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" EV10= %g  EV11= %g  \n",EV10(i),EV11(i));
	}
	for(i=1;i<=ITR2;i++){
		if (DV20(i) < 0 ){
			EV20(i)=EV20(i)/1024.+DV20(i);
		}
		else{
			if (DV20(i) == 0) goto LBL_29;
		}
	}
LBL_29:
	;
	IV20(i)=i;
	printf("\n");
	printf("    -LOOP.02 \n");
	printf("\n");
	for(i=1;i<=100;i++){
		printf(" DV20= %g  \n",DV20(i));
	}
	printf("\n");
	for(i=1;i<=101;i++){
		printf("IV20= %ld  \n",IV20(i));
	}
	printf("\n");
	for(i=1;i<=100;i++){
		printf(" EV20= %g  \n",EV20(i));
	}
	for(i=1;i<=64;i++){
		ES30=IV30(i)*EV30(i);
		if (ES30 == 0) goto LBL_30;
		goto LBL_39;
LBL_30:
		;
	}
	printf("\n");
	printf("  BRANCH OUT HAS NOT HAPPENED.\n");
	printf("\n");
LBL_39:
	;
	printf("    -LOOP.03 \n");
	printf(" i= %ld \n",i);
	exit (0);
}
