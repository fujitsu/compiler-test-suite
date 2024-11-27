#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	int a[10],b[10],c[10];
	int i,j,k;
	for(i=0,j=5,k=10;i<10,j<15,k<20;i++,j++,k++){
		a[i]=i;
		b[j-5]=j;
		c[k-10]=k;
	}
	for(i=0;i<10;i++){
		printf("%d %d %d \n",a[i],b[i],c[i]);
	}
	exit (0);
}
