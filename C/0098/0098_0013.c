#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} e;
int main(){
	long int j,k,i,l;
        for(i=0;i<10;i++){
         	e.x[i]=1.4;
	}
	printf("   ****  **** VMS210 ****\n");
	for(i=0;i<2;i++){
		j=10;
		while(j>2){
			for(k=1;k<=10;k++){
				e.x[i]=k*j;
				if (e.x[i]>10) goto LBL_131;
			}
LBL_131:
			;
			j-=5;
			for(l=0;l<10;l++){
				printf(" e[%ld] => %f\n",i,e.x[l]);
			}
		}
	}
	printf("\n");
	printf(" j => %ld\n",j);
	for(i=0;i<2;i++){
		do {
			k=1;
LBL_230:
			;
			if (k>10) goto LBL_220;
			e.x[i]=k*j;
			if (e.x[i]>10) goto LBL_231;
			k++;
			goto LBL_230;
LBL_231:
			;
			j++;
LBL_220:
			;
			for(i=0;i<10;i++){
				printf(" e[%ld] => %f\n",i,e.x[i]);
			}
		}while(j>2);
		j=0;
	}
	for(i=0;i<2;i++){
		for(j=10;j>=2;j-=5){
			for(k=1;k<=10;k++){
				e.x[i]=k*j;
				if (e.x[i]>10) goto LBL_310;
			}
		}
LBL_310:
		;
	}
	printf("\n");
	for(i=0;i<2;i++){
		printf(" j => %ld\n",j);
		do {
			k=1;
LBL_430:
			;
			if (k>10) goto LBL_420;
			e.x[i]=k*j;
			if (e.x[i]>10) goto LBL_410;
			k+=2;
			goto LBL_430;
LBL_420:
			;
			j-=3;
		}while(j>2);
LBL_410:
		;
	}
	printf("\n");
	for(i=0;i<10;i++){
		printf(" e[%ld] => %f\n",i,e.x[i]);
	}
	printf("\n");
	for(i=1;i<=2;i++){
		printf(" j => %ld\n",j);
		k=i;
LBL_530:
		;
		if (k>10) goto LBL_520;
		e.x[k-1]=k*j;
		if ((e.x[k-1]-10.0)<0) goto LBL_540;
		if ((e.x[k-1]-10.0)==0) goto LBL_591;
		if ((e.x[k-1]-10.0)>0) goto LBL_590;
LBL_540:
		;
		k+=2;
		goto LBL_530;
LBL_520:
		;
		for(j=i;j<=5;j++){
			if (e.x[j-1]<(-1.0*(pow(10,10)))) goto LBL_590;
		}
	}
LBL_590:
	;
LBL_591:
	;
	printf("\n");
	for(i=0;i<10;i++){
		printf(" e[%ld] => %f\n",i,e.x[i]);
	}
	exit (0);
}
