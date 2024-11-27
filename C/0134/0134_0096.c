#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(int *b);

int main(){
	long int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	sub(a);
	exit (0);
}
int sub(b)
int *b;
{
	long int c[10];
	int i;
	for(i=*b;i<10;i++){
		c[i]=9;
	}
	for(i=0;i<10;i++){
		printf("c[%d] = %ld \n",i,c[i]);
	}
}
