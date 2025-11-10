#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define A(i)  a[i-1]
#define B(i)  b[i-1]
#define C(i)  c[i-1]
#define D(i)  d[i-1]
#define LA(i) la[i-1]
#define LB(i) lb[i-1]
#define LC(i) lc[i-1]
#define LD(i) ld[i-1]
float             a[10],b[10],c[10],d[10];
unsigned long int la[10],lb[10],lc[10],ld[10]={
	1,1,0,0,1,1,0,0,1,1};
int main()
{
	long int N=10,i,I;
	for(i=0;i< 10;i++){
		a[i]=i+1;
		b[i]=i-4;
		c[i]=i-4;
		d[i]=i-4;
		la[i]=(i<5)?1:0;
		lb[i]=(i<5)?1:0;
		lc[i]=(i<5)?1:0;
	}
	for(I=1;I<=N;I++)
	{
		if ( LA(I) ){
			if ( LB(I) ){
				if ( LC(I) ){
					A(I)=B(I);
				}
			}
		}
		if ( A(I) != B(I)){
		}
		else
		{
			if (LA(I)){
				C(I)=D(I);
			}
			else{
			}
		}
LBL_10:
		;
	}
	for(i=1;i<=10;i++){
		printf("  A  =  %g ",A(i));
		printf("  C  =  %g \n",C(i));
	}
	for(I=1;I<=N;I++)
	{
		if ( LA(I) ){
		}
		else
		{
		}
		if (LB(I)){
		}
		else
		{
		}
		if ( A(I) != B(I)){
			if (LA(I)){
				C(I)=D(I);
			}
			else{
			}
		}
		else{
		}
LBL_11:
		;
	}
	for(i=1;i<=10;i++){
		printf("  A  =  %g ",A(i));
		printf("  C  =  %g \n",C(i));
	}
	for(I=1;I<=N;I++)
	{
		if (LB(I)){
		}
		else{
			A(I)=B(I);
		}
LBL_20:
		;
	}
	for(i=1;i<=10;i++){
		printf("  A  =  %g \n",A(i));
	}
	for(I=1;I<=N;I++)
	{
		if (LB(I)){
LBL_22:
			;
		}
		else{
			A(I)=B(I);
		}
LBL_23:
		;
		C(I)=D(I);
LBL_24:
		;
LBL_25:
		;
LBL_21:
		;
	}
	for(i=1;i<=10;i++){
		printf("  A  =  %g ",A(i));
		printf("  C  =  %g \n",C(i));
	}
	for(I=1;I<=N;I++)
	{
		goto LBL_31;
LBL_31:
		;
		A(I)=B(I);
		goto LBL_32;
LBL_32:
		;
		goto LBL_33;
LBL_33:
		;
		C(I)=D(I);
		goto LBL_34;
LBL_34:
		;
		goto LBL_35;
LBL_35:
		;
		goto LBL_36;
LBL_36:
		;
		A(I)=C(I);
		if (LA(I)){
			A(I)=B(I);
			if (LD(I)){
				goto LBL_37;
			}
			else{
				goto LBL_38;
			}
LBL_37:
			;
			C(I)=D(I);
			goto LBL_30;
LBL_38:
			;
		}
		else{
			goto LBL_39;
LBL_39:
			;
			goto LBL_30;
		}
LBL_30:
		;
	}
	for(i=1;i<=10;i++){
		printf("  A  =  %g ",A(i));
		printf("  C  =  %g \n",C(i));
	}
	exit (0);
}
