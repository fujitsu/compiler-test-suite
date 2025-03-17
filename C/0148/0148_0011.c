#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float e[10]={
				1.4,1.4,1.4,1.4,1.4,1.4,1.4,1.4,1.4,1.4		};
	long int j,k,i;
	printf("   **** 1201 **** VMS211 ****\n");
	for(i=0;i<2;i++){
		j=10;
		while(j>2){
			k=1;
			do {
				e[i]=k*j;
				k++;
			}while(k!=11);
			j=j-5;
			printf(" e[%ld] => %f\n",i,e[i]);
		}
	}
	printf("\n");
	for(i=0;i<2;i++){
		for(j=0;j<2;j++){
			k=1;
LBL_230:
			;
			if (k>10) goto LBL_220;
			e[i]=k*j;
			if (e[i]>10.0) goto LBL_231;
			k++;
			goto LBL_230;
LBL_231:
			;
LBL_220:
			;
			printf(" e[%ld] => %f\n",i,e[i]);
		}
	}
	printf("\n");
	for(i=0;i<2;i++){
		for(j=0;j<10;j++){
			printf(" e[%ld] => %f\n",j,e[j]);
		}
		e[i]=e[i]*2.0;
	}
	printf("\n");
	for(i=0;i<10;i++){
		printf(" e[%ld] => %f\n",i,e[i]);
	}
	exit (0);
}
