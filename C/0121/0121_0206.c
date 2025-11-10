#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define A(i)   a[i-1]
#define B(i)   b[i-1]
#define C(i)   c[i-1]
#define D(i)   d[i-1]
#define LA(i)  la[i-1]
#define LB(i)  lb[i-1]
#define LC(i)  lc[i-1]
#define LD(i)  ld[i-1]
double        a[10],b[10],c[10],d[10]={
	0,0,0,0,0,1,0,-1,1,1};
unsigned long int la[10],lb[10],lc[10],ld[10];
int main()
{
	long int N=10;
	long int I,J,i,j,I1;
	for(i=0;i< 10;i++){
		b[i]=1.0;
		c[i]=2.0;
		la[i]=(i<5)?1:0;
		lb[i]=(i<5)?1:0;
		lc[i]=(i<5)?1:0;
		ld[i]=(i<5)?1:0;
	}
	printf("  *****  *****\n");
	for(I=1;I<=N;I++)
	{
		if ( LA(I) ){
			A(I)=B(I)+C(I);
		}
		if ( LA(I) ){
			A(I)=B(I)+C(I);
		}
		if ( LB(I)){
			A(I)=B(I)*C(I);
		}
		else{
			A(I)=B(I)/C(I);
		}
		if (LC(I)){
			A(I)=B(I)-C(I);
		}
		else{
			if (LD(I)){
				A(I)=pow(B(I),C(I));
			}
		}
LBL_10:
		;
	}
	for(I=1;I<=N;I++)
	{
		if (LA(I))goto LBL_21         ;
		A(I)=B(I)+D(I);
LBL_21:
		;
		if (LB(I)) A(I)=B(I)*D(I);
		if (LC(I))goto LBL_22         ;
		A(I)=sqrt(B(I));
		goto LBL_23;
LBL_22:
		;
		A(I)=B(I)-D(I);
LBL_23:
		;
LBL_20:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",A(i));
	}
	for(I=1;I<=N;I++)
	{
		if (LA(I)){
			A(I)=I;
			if (LB(I)){
				A(I)=-I;
			}
			else{
				A(I)=B(I);
			}
		}
		else{
			A(I)=B(I)+C(I);
			if (LC(I)){
				if (LA(I)){
					A(I)=B(I)*D(I);
				}
			}
		}
		if (LA(I)){
			if (LB(I)){
				if (LC(I)){
					A(I)=A(I)+B(I);
				}
			}
		}
LBL_30:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",A(i));
	}
	for(I=1;I<=N;I++)
	{
		if ((A(I) == B(I)) || (A(I) != C(I))){
			if ((B(I)*C(I)) > 1.2){
				A(I)=pow(I,B(I));
			}
			else{
				if (A(I) == (B(I)/C(I))){
					A(I)=pow(A(I),C(I))/D(I);
				}
			}
		}
		else{
		}
		if (LA(I) || LB(I) || (A(I) >  0)) A(I)=A(I)+B(I);
		if (LB(I) || (!LA(I) && LC(I)))    goto LBL_40         ;
		A(I)=D(I);
LBL_40:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",A(i));
	}
	I=5;
	for(J=1;J<=N;J++)
	{
		if ( LA(I) ){
			A(J)=B(J)+C(J);
		}
		if ( LA(I) ){
		}
		else{
			A(J)=B(J)+C(J);
		}
		if ( LB(I)){
			A(J)=B(J)*C(J);
		}
		else{
			A(J)=B(J)/C(J);
		}
		if (LC(I)){
			A(J)=B(J)-C(J);
		}
		else{
			if (LD(I)){
				A(J)=pow(B(J),C(J));
			}
		}
LBL_50:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",A(i));
	}
	for(J=1;J<=N;J++)
	{
		if (LA(I))goto LBL_61         ;
		A(J)=B(J)+D(J);
LBL_61:
		;
		if (LB(I)) A(J)=B(J)*D(J);
		if (LC(I))goto LBL_62         ;
		goto LBL_63;
LBL_62:
		;
		A(J)=B(J)-D(J);
LBL_63:
		;
LBL_60:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",A(i));
	}
	exit (0);
}
