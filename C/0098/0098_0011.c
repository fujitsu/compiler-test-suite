#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} e;  
int main(){
	long int j,k,i;
        for(i=0;i<10;i++){
                e.x[i]=1.4;
        }	    
	printf("   ****  **** VMS211 ****\n");
	for(i=0;i<2;i++){
		j=10;
		while(j>2){
			k=1;
			do {
				e.x[i]=k*j;
				k++;
			}while(k!=11);
			j=j-5;
			printf(" e[%ld] => %f\n",i,e.x[i]);
		}
	}
	printf("\n");
	for(i=0;i<2;i++){
		for(j=0;j<2;j++){
			k=1;
LBL_230:
			;
			if (k>10) goto LBL_220;
			e.x[i]=k*j;
			if (e.x[i]>10.0) goto LBL_231;
			k++;
			goto LBL_230;
LBL_231:
			;
LBL_220:
			;
			printf(" e[%ld] => %f\n",i,e.x[i]);
		}
	}
	printf("\n");
	for(i=0;i<2;i++){
		for(j=0;j<10;j++){
			printf(" e[%ld] => %f\n",j,e.x[j]);
		}
		e.x[i]=e.x[i]*2.0;
	}
	printf("\n");
	for(i=0;i<10;i++){
		printf(" e[%ld] => %f\n",i,e.x[i]);
	}
	exit (0);
}
