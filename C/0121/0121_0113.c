#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define ITR1(i) itr1[i-1]
#define EV10(i) ev10[i-1]
#define EV20(i) ev20[i-1]
#define DV20(i) dv20[i-1]
#define ITR3(i) itr3[i-1]
#define EV30(i) ev30[i-1]
#define EV31(i) ev31[i-1]
long int itr1[2];
float ev10[100],ev20[100];
float dv20[100];
long int itr3[2];

float ev30[100],ev31[100];
int main()
{
	long int is10;
	long int lpno,i,j;
	itr1[0]=100;
	itr1[1]=0;
	for(i=0;i< 100;i++){
		if(i<11) ev10[i]=0.0;
		if(i>=11&&i<42) ev10[i]=15;
		if(i>=42&&i<92) ev10[i]=-25;
		if(i>=92&&i<99) ev10[i]=0;
		ev10[99]=0.5;
	}
	for(i=0;i< 100;i++){
		ev20[i]=0;
	}
	for(i=0;i< 100;i++){
		if(i<30) dv20[i]=-3;
		dv20[30]=-1;
		if(i>=31&&i<67) ev10[i]=5;
		dv20[67]=0;
		if(i>=68&&i<77) ev10[i]=5;
		dv20[77]=-1;
		if(i>=78&&i<98) ev10[i]=4;
		dv20[98]=2;
		dv20[99]=-1;
	}
	itr3[0]=0;
	itr3[1]=64;
	for(i=0;i< 64;i++){
		if(i<31) ev30[i]=1.5;
		if(i>=31&&i<62) ev30[i]=2;
		ev30[62]=3;
		ev30[63]=1.75;
	}
	for(i=0;i<64;i++){
		ev31[i]=100;
	}
	for(j=0;j<2;j++) {
		lpno=1;
		for(i=0;i<itr1[j];i++) {
			is10=ev10[i];
			if((long int)ev10[i] == is10) {
				ev20[i]=is10+1;
			}
			else
			{
				goto LBL_19;
			}
		}
		lpno=2;
		for(i=100;i>=1;i--) {
			if(DV20(i) <  0) {
				goto LBL_19;
			}
			else {
				DV20(i)=sqrt(DV20(i));
			}
		}
		for(i=0;i<itr3[j];i++) {
			if(sin(ev30[i]) >  0)
				goto LBL_30;
			goto LBL_39;
		}
LBL_19:
                printf("  -LOOP.0     lpno = %ld\n",lpno);
		if(lpno==1) {
			goto LBL_18;
		}
		if(lpno==2) {
			goto LBL_29;
		}
LBL_18:
		for(i=0;i<100;i++) {
			if(!(i%5)) printf("\n");
			printf("EV20(%ld) = %g  ",i,ev20[i]);
		}
		printf("\n ITR1(%ld) = %ld\n",j,itr1[j]);
LBL_29:
                printf("\n lpno = %ld\n",lpno);
		DV20(i)=0;
LBL_30:
		EV31(i)=i;

LBL_39:
		printf("  -LOOP.03\n");
		for(i=0;i<64;i++) {
			if(!(i%4)) printf("\n");
			printf("EV31(%ld) = %g  ",i,ev31[i]);
		}
		printf("\n");
	}
	exit (0);
}
