#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define EV10(i) ev10[i-1]
#define EV11(i) ev11[i-1]
#define DV10(i) dv10[i-1]
#define EV30(i) ev30[i-1]
#define EV31(i) ev31[i-1]
#define IV30(i) iv30[i-1]
float ev10[10]={
	1.0,0.0,1.5,1.5,1.5,1.5,1.5,1.5,1.5,-1.5};
float ev11[10];
double dv10[10]={
	1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0};
float ev30[100];
float ev31[100];
long int iv30[100];
int main()
{
	long int IS10,K=1;
	long int IS20=16;
	double DS30=3.5;
	long int N=100;
	long int i,k;
	for(i=0;i< 19;i++){
		ev30[i]=1.5;
	}
	for(i=51;i< 100;i++){
		ev30[i]=2;
	}
	ev30[19]=1.75;
	ev30[50]=1.75;
	for(i=0;i< 10;i++){
		ev11[i]=100;
	}
	for(i=0;i< 100;i++){
		ev31[i]=0;
	}
	for(i=0;i< 100;i++){
		iv30[i]=2;
	}
	k=1;
	for(i=1;i<=10;i++){
		IS10=EV10(i);
		if (EV10(i) <  0) goto LBL_100;
		EV11(k)=k+IS10;
		k=k+1;
	}
LBL_100:
	;
	printf("\n");
	printf("    -LOOP.01 \n");
	printf("\n");
	printf(" k= %ld  \n",k);
	printf("\n");
	printf(" EV11= %g  \n",EV11(k));
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" ES10= %g  \n",EV10(i));
	}
	for(i=1;i<=10;i++){
		if (IS20 != 0) goto LBL_19;
		DV10(i)=DV10(i)/IS20;
	}
LBL_19:
	;
	printf("\n");
	printf("    -LOOP.02 \n");
	printf("\n");
	printf(" i= %ld  \n",i);
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" DV10= %g  \n",DV10(i));
	}
	for(i=1;i<=N;i++){
		IV30(i)=N-i*2;
		if ((IV30(i)*EV30(i)-DS30) == 0) goto LBL_37;
		else{
			if((IV30(i)*EV30(i)-DS30) < 0){
				EV31(i)=IV30(i)/DS30;
			}
			else{
				goto LBL_39;
			}
		}
	}
LBL_37:
	;
	IV30(i)=IV30(i)*2;
LBL_39:
	;
	printf("\n");
	printf("    -LOOP.03 \n");
	printf("\n");
	printf(" i=%ld  \n",i);
	printf("\n");
	for(i=1;i<=100;i++){
		printf(" IV30= %ld  EV30= %g  EV31= %g  \n",IV30(i),EV30(i),EV31(i));
	}
	exit (0);
}
