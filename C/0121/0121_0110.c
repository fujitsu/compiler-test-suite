#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define EV10(i) ev10[i-1]
#define DV20(i) dv20[i-1]
#define EV20(i) ev20[i-1]
#define IV20(i) iv20[i-1]
#define EV30(i) ev30[i-1]
#define IV30(i) iv30[i-1]
float ev10[10]={
	0,1,1,1,-2.5,-2.5,-2.5,-2.5,-2.5,0};
double dv20[200];
float ev20[200];
long int iv20[200];
float ev30[64];
long int iv30[64];
int main()
{
	long int LOOP;
	long int ITR1=10,ITR2=200,J=10,i;
	dv20[0]=dv20[1]=1;
	dv20[2]=dv20[3]=2;
	dv20[5]=dv20[64]=0;
	dv20[135]=dv20[138]=-1;
	for(i=4; i<=62; i+=2){
		dv20[i]=5;
		if((i+3)<=61)
			dv20[i+3]=5;
	}
	for(i=63; i<=133; i+=2)
		dv20[i]=dv20[i+3]=4;
	for(i=137; i<=199; i+=2){
		dv20[i]=-1;
		if((i-1)>139)
			dv20[i-1]=-1;
	}
	for(i=0;i< 200;i++){
		ev20[i]=3.5;
	}
	for(i=0;i< 200;i++){
		iv20[i]=1000;
	}
	for(i=0; i<31; i++){
		ev30[i]=1.5;
		ev30[i+31]=2;
	}
	ev30[62]=3;
	ev30[63]=1.75;
	for(i=0; i<40; i++)
		iv30[i]=2;
	iv30[40]=0;
	for(i=41; i<64; i++)
		iv30[i]=3;
	LOOP=1;
	for(i=1; i<=ITR1; i++){
		if(ev10[J-1]==0) goto LBL_29;
		J--;
LBL_10:
		;
	}
LBL_19:
	;
	printf("  -LOOP.01\n");
	printf("  J=%ld\n",J);
	LOOP=2;
	for(J=0; J<=1; J++){
		for(i=1; i<ITR2; i+=2){
			if(dv20[i]>0){
				ev20[i]=(ev20[i]/512+dv20[J]);
			}
			else{
				iv20[i]=i;
				goto LBL_29;
			}
LBL_20:
			;
		}
LBL_29:
		;
		if(LOOP==1)  goto LBL_19;

		printf("\n  -LOOP.02\n");
		printf("  i=%ld\n",i+1);
		for(i=0; i<200; i++)
			printf(" %g",ev20[i]);
LBL_22:
		;
	}

	printf("\n  -LOOP.03\n");
	for(i=0; i<64; i++){
		if(iv30[i]*(ev30[i]+2)==0)
			goto LBL_30;
		goto LBL_31;
LBL_30:
		;
	}
	printf("  -LOOP.03\n");
LBL_31:
	;
	exit (0);
}
