#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float e[10]={
				1.4,1.4,1.4,1.4,1.4,1.4,1.4,1.4,1.4,1.4		};
	long int j,k,i,l;
	printf("   **** 1301 **** VMS210 ****\n");
	for(i=0;i<2;i++){
		j=10;
		while(j>2){
			for(k=1;k<=10;k++){
				e[i]=k*j;
				if (e[i]>10) goto LBL_131;
			}
LBL_131:
			;
			j-=5;
			for(l=0;l<10;l++){
				printf(" e[%ld] => %f\n",i,e[l]);
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
			e[i]=k*j;
			if (e[i]>10) goto LBL_231;
			k++;
			goto LBL_230;
LBL_231:
			;
			j++;
LBL_220:
			;
			for(i=0;i<10;i++){
				printf(" e[%ld] => %f\n",i,e[i]);
			}
		}while(j>2);
		j=0;
	}
	for(i=0;i<2;i++){
		for(j=10;j>=2;j-=5){
			for(k=1;k<=10;k++){
				e[i]=k*j;
				if (e[i]>10) goto LBL_310;
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
			e[i]=k*j;
			if (e[i]>10) goto LBL_410;
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
		printf(" e[%ld] => %f\n",i,e[i]);
	}
	printf("\n");
	for(i=1;i<=2;i++){
		printf(" j => %ld\n",j);
		k=i;
LBL_530:
		;
		if (k>10) goto LBL_520;
		e[k-1]=k*j;
		if ((e[k-1]-10.0)<0) goto LBL_540;
		if ((e[k-1]-10.0)==0) goto LBL_591;
		if ((e[k-1]-10.0)>0) goto LBL_590;
LBL_540:
		;
		k+=2;
		goto LBL_530;
LBL_520:
		;
		for(j=i;j<=5;j++){
			if (e[j-1]<(-1.0*(pow(10,10)))) goto LBL_590;
		}
	}
LBL_590:
	;
LBL_591:
	;
	printf("\n");
	for(i=0;i<10;i++){
		printf(" e[%ld] => %f\n",i,e[i]);
	}
	exit (0);
}
