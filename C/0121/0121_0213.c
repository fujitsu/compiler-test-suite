#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define A(i)  a[i-1]
#define B(i)  b[i-1]
#define C(i)  c[i-1]
#define IA(i) ia[i-1]
#define IB(i) ib[i-1]
#define IC(i) ic[i-1]
#define LA(i) la[i-1]
#define LB(i) lb[i-1]
#define LC(i) lc[i-1]
#define LD(i) ld[i-1]
#define LE(i) le[i-1]
#define LF(i) lf[i-1]
float        a[100],b[100],c[100];
long int     ia[100],ib[100],ic[100];
unsigned long int la[100],lb[100],lc[100],ld[100],le[100],lf[100];
int main()
{
	float S1=0;
	float S2=0;
	long int N=100;
	long int IM,J,K,I,i,j,k;
	long int S3;
	for(i=0;i< 100;i++){
		a[i]=i+1;
		b[i]=i-4;
		c[i]=i-4;
		ia[i]=1;
		ib[i]=2;
		ic[i]=20;
		la[i]=(i<50)?1:0;
		lb[i]=0;
		lc[i]=(i<50)?1:0;
		ld[i]=(i<50)?1:0;
		le[i]=(i<50)?1:0;
		lf[i]=(i<50)?1:0;
	}
	S1=0.0;
	S1=2.0;
	IM=0;
	for(I=1;I<=N;I++)
	{
		if ( LA(I) ){
			S1=S1+A(I);
		}
		if ( S2 <= B(I)){
		}
		else{
			S2=B(I);
			IM=I;
		}
LBL_10:
		;
	}
	printf("  S1 =  %g ",S1);
	printf("  S2 =  %g , IM =  %ld \n",S2,IM);
	for(I=1;I<=N;I++)
	{
		if (LB(I))goto LBL_21         ;
LBL_20:
		;
	}
LBL_21:
	;
	printf(" %ld \n",I);
	J=0;
	for(I=1;I<=N;I++)
	{
		J=J+1;
		for(K=1;K<=N;K++)
		{
			if (LB(K)){
				A(K)=-J;
			}
			else{
				A(K)=B(J);
			}
			if (LC(K))goto LBL_31         ;
			for(S3=1;S3<=N;S3++)
			{
				C(S3)=S3;
LBL_32:
				;
			}
LBL_31:
			;
		}
LBL_30:
		;
	}
	for(I=1;I<=N;I++)
	{
		if (LA(I)){
			A(I)=B(I);
		}
		else{
			if (LB(I)){
				A(I)=2.0;
			}
			else{
				if (LC(I)){
					A(I)=3.0;
				}
				else{
					if (LD(I)){
						A(I)=4.0;
					}
					else{
						if (LD(I)){
							A(I)=5.0;
						}
						else{
							if (LE(I)){
								A(I)=6.0;
							}
							else{
								if (LF(I)){

	A(I)=7.0;

								}
								else{

	if (LD(I)){
		A(I)=5.0;
	}

								}
							}
						}
					}
				}
			}
		}
LBL_40:
		;
	}
	for(i=1;i<=100;i++){
		printf(" %g \n",A(i));
	}
	for(I=1;I<=N;I++)
	{
		if (LA(I)){
			for(J=2*IA(I)+IB(I);J<=IC(I)*IA(I);J+=2)
			{
LBL_51:
				;
				S1=S1+A(J);
			}
		}
		else{
			for(K=3*IA(I);K<=IC(5);K+=3)
			{
LBL_52:
				;
				S2=S2+B(J);
			}
		}
LBL_50:
		;
	}
	printf(" %g %g \n",S1,S2);
	exit (0);
}
