#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct data{
	long int a[10];
}str;
int main(){
	int    i,j,c[10];
	for(i=0;i<10;i++){
		str.a[i] = i ;
		c[str.a[i]] = str.a[i];
	}
	for(j=0;j<10;j++){
		printf("c[%d]=%d \n",j,c[j]);
	}
	exit (0);
}
