#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L10(i)  l10[i-1]
#define L11(i)  l11[i-1]
#define L12(i)  l12[i-1]
#define L13(i)  l13[i-1]
#define L14(i)  l14[i-1]
#define L15(i)  l15[i-1]
#define L16(i)  l16[i-1]
#define L17(i)  l17[i-1]
#define L20(i)  l20[i-1]
#define L21(i)  l21[i-1]
#define L22(i)  l22[i-1]
#define L23(i)  l23[i-1]
#define I20(i)  i20[i-1]
#define R30(i)  r30[i-1]
#define RD30(i) rd30[i-1]
#define L30(i)  l30[i-1]
#define I30(i)  i30[i-1]
#define I31(i)  i31[i-1]
#define I32(i)  i32[i-1]
unsigned long int l10[10]={
	1,0,1,0,1,0,1,0,1,0},
l11[10]={
	1,1,0,0,1,1,0,1,0,1},
l12[10]={
	1,0,1,0,1,0,1,0,1,0},
l13[10]={
	1,0,1,0,1,0,1,0,1,0},
l14[10],l15[10],l16[10],
l17[10];
unsigned long int LV20=1,LV21=1,LV22=1,LV23=1,LV24=1,
LV10=1,LV11=1,LV12=1,LV13=0,LV14=0;
unsigned long int l20[10]={
	0,0,0,0,0,1,1,1,1,1},
l21[10]={
	1,0,1,0,0,0,1,0,1,0},
l22[10]={
	1,0,1,0,1,1,1,1,1,0},
l23[10]={
	1,0,1,1,1,1,1,1,1,1};
long int i20[10];
float    r30[10]={
	0,3.4,5,0,3.2,3.4,6,7,0,3.3};
double   rd30[10];
unsigned long int l30[10]={
	0,1,0,1,0,1,0,1,0,1};
long int i30[10],i31[10],i32[10];
int main()
{
	long int N=10,i,j,I;
	long int J=5;
	float    RV30=3.3;
	double   RDV30=5;
	unsigned long int LV30=1;
	for(i=0;i< 10;i++){
		l14[i]=0;
		l15[i]=0;
		l16[i]=0;
		l17[i]=0;
		l20[i]=0;
		i20[i]=0;
		rd30[i]=i+1;
		i30[i]=0;
		i31[i]=0;
		i32[i]=0;
	}
	printf(" *****  ***** LOGICAL\n");
	printf(" ----- LOOP 1 -----\n");
	for(I=1;I<=N;I++)
	{
		if ( LV10 ){
			if ( LV11 &&  LV12 ){
				if ( L10(I) ||  LV13 ){
					if ( LV14 != L11(I) ){
						if ( L12(I) == L13(I) ){
							L14(I)=1;
						}
					}
					else{
						L15(I)=1;
					}
				}
				else{
					L16(I)=LV14;
				}
			}
			else{
				L17(I)=(LV10 || L15(I) || L16(I))?1:0;
			}
		}
LBL_10:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %lu ",L14(i));
		printf(" %lu ",L15(i));
		printf(" %lu ",L16(i));
		printf(" %lu \n",L17(i));
	}
	printf(" ----- LOOP 2 -----\n");
	for(I=1;I<=N;I++)
	{
		if (LV20){
			if ( LV21 &&  LV22 ){
				if ( L20(J) || LV23 ){
					if ( LV24 != L21(J) ){
						if ( L22(J) == L23(J) ){
							I20(I)=I;
						}
					}
				}
			}
		}
LBL_20:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %ld \n",I20(i));
	}
	printf(" ----- LOOP 3 -----\n");
	for(I=1;I<=N;I++)
	{
		if ( RV30  >   R30(I) ) I30(I)=I;
		LV30=(RD30(I)<=RDV30)?1:0;
		if ( L30(I) ){
			if ( LV30 ){
				I31(I)=I;
			}
			else{
				I31(I)=-I;
			}
		}
		else{
			I32(I)=I;
		}
		if (LV30 && L30(I) ){
			L30(I)=1;
		}
LBL_30:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %ld ",I31(i));
		printf(" %ld ",I32(i));
		printf(" %lu \n",L30(i));
	}
	exit (0);
}
