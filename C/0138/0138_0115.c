#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main(){
	long int a[10] = {
				0,0,0,0,0,0,0,0,0,0		};
	long int i ;
	long int n=10;

	printf("\n");
	for(i=0;i<n;i++){
		a[i] = i ;
	}
	for(i=0;i<10;i++){
		printf("%ld %ld \n",a[i],i);
	}
	exit (0);
}
 
