#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define A(i) a[(i+(i-n))/1]
int main(){
	int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i,n=0;
	for(i=0;i<10;i++){
		A(i)=10+n;
		n++;
	}
	for(i=0;i<10;i++){
		printf("a[%d]=%d \n",i,a[i]);
	}
	exit (0);
}
