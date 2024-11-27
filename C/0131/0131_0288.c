#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10]={
		10,1,9,2,8,3,7,4,6,5	};
	long int b[5],c[5];
	int  i,l,j=0,k=0;
	printf("<<<<<<  >>>>>> \n");
	for(i=0;i<10;i++){
		if(a[i]>5){
			b[j]=a[i];
			j++;
		}
		else{
			c[k]=a[i];
			k++;
		}
	}
	for(l=0;l<j;l++){
		printf("b[%d] = %ld \n",l,b[l]);
	}
	for(l=0;l<k;l++){
		printf("c[%d] = %ld \n",l,c[l]);
	}
	exit (0);
}
