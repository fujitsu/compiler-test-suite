#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define EV10(i) ev10[i-1]
#define EV11(i) ev11[i-1]
#define DV20(i,j) dv20[i-1][j-1]
#define EV20(i,j,k) ev20[i-1][j-1][k-1]
#define IV20(i) iv20[i-1]
#define EV30(i) ev30[i-1]
#define IV30(i) iv30[i-1]
float ev10[10],ev11[10];
double dv20[100][2];
float ev20[100][2][2];
long int iv20[2];
float ev30[64];
long int iv30[64];
int main()
{
	long int ITR1=0,ITR2=100,L1,L2;
	double DS30=3.5;
	long int i,j,k,m;
	for(i=0;i< 10;i++){
		if(i==0 || i==1){
			ev10[i]=0;
		}
		else{
			ev10[i]=1.5;
		}
	}
	for(i=0;i< 10;i++){
		ev11[i]=100;
	}
	j = 0;
	for(i=0;i< 100;i++){
		if(i == 0){
			dv20[i][j]=-1;
		}
		else if(i==1 || i==90){
			dv20[i][j]=0;
		}
		else if(i>=2 && i<=89){
			dv20[i][j]=2;
		}
		else{
			dv20[i][j]=3;
		}
	}
	j = 1;
	for(i=0;i< 100;i++){
		if(i == 0){
			dv20[i][j]=3;
		}
		else if(i == 1){
			dv20[i][j]=23;
		}
		else if(i == 2){
			dv20[i][j]=0;
		}
		else if(i == 98){
			dv20[i][j]=2;
		}
		else if(i == 99){
			dv20[i][j]=1;
		}
		else{
			dv20[i][j]=12;
		}
	}
	for(k=0;k< 2;k++){
		for(j=0;j< 2;j++){
			for(i=0;i< 100;i++){
				ev20[i][j][k]=3.5;
			}
		}
	}
	for(i=0;i< 2;i++){
		iv20[i]=0;
	}
	for(i=0;i< 64;i++){
		if(i>=0 && i<=30){
			ev30[i]=1.5;
		}
		else if(i>=32 && i<=61){
			ev30[i]=2;
		}
		else if(i == 63){
			ev30[i]=3;
		}
		else{
			ev30[i]=1.75;
		}
	}
	for(i=0;i< 64;i++){
		iv30[i]=2;
	}
LBL_100:
	;
	for(i=1;i<=ITR1;i++)
	{
		if (EV10(i) >  0)goto LBL_19         ;
		EV11(i)=i;
LBL_10:
		;
	}
LBL_19:
	;
	printf("    -LOOP.01 \n");
	printf(" EV10 , EV11 \n");
	for(i=1;i<=10;i++){
		printf(" %g %g ",EV10(i),EV11(i));
		if(i == 5)
		{
			printf("\n");
		}
	}
	printf("\n");
	if (ITR1 == 0)
	{
		ITR1=10;
		goto LBL_100;
	}
	for(k=1;k<=2;k++)
	{
		for(j=1;j<=2;j++)
		{
			for(i=1;i<=ITR2;i++)
			{
				if (DV20(i,j) < 0) goto LBL_21;
				if (DV20(i,j) == 0) goto LBL_29;
				goto LBL_20;
LBL_21:
				;
				EV20(i,j,k)=EV20(i,j,k)/1024+DV20(i,j);
LBL_20:
				;
			}
			goto LBL_22;
LBL_29:
			;
			IV20(j)=i;
LBL_22:
			;
		}
		printf("    -LOOP.02 \n");
		printf(" (IV20) \n");
		for(L2=1;L2<=2;L2++){
			printf(" %ld ",IV20(L2));
		}
		printf("\n");
		printf(" (DV20) \n");
		for(L2=1;L2<=2;L2++){
			for(L1=1;L1<=11;L1++){
				printf(" %g ",DV20(L1,L2));
			}
		}
		printf("\n");
		if (k == 1)
		{
			DV20(IV20(1),1)=-1.0;
			DV20(IV20(2),2)=1.0;
		}
LBL_23:
		;
	}
	printf(" EV20 \n");
	m = 0;
	for(k=1;k<= 2;k++){
		for(j=1;j<= 2;j++){
			for(i=1;i<=100;i++){
				printf(" %g ",EV20(i,j,k));
				m++;
				if(m == 10){
					printf("\n");
					m = 0;
				}
			}
		}
	}
	printf("\n");
	for(i=1;i<=64;i++)
	{
		if (IV30(i)*EV30(i)-DS30 == 0)goto LBL_30         ;
		goto LBL_39;
LBL_30:
		;
	}
LBL_39:
	;
	printf("    -LOOP.03 \n");
	printf(" i= %ld\n",i);
	printf(" IV30 , EV30 \n");
	m = 0;
	for(i=1;i<=64;i++){
		printf(" %ld %g ",IV30(i),EV30(i));
		m++;
		if(m == 8){
			printf("\n");
			m = 0;
		}
	}
	printf("\n");
	exit (0);
}
