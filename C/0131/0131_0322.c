#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct data{
	long int a[10];
}str;
int main(){
	int    i,c[10];
	for(i=0;i<10;i++){
		str.a[i] = i ;
		c[str.a[i*1]] = str.a[i];
	}
	for(i=0;i<10;i++){
		printf("c[%d]=%ld \n",i,c[i]);
	}
	exit (0);
}
