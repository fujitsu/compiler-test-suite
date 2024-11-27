#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i,j;
	i=0;
	for( ; ; ){
		a[i]=i+1;
		if (a[i]==9) break;
		i++;
	}
	for(j=0;j<10;j++){
		printf("a[%d] = %ld \n",j,a[j]);
	}
	exit (0);
}
