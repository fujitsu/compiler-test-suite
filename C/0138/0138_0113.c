#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main(){
	long int j[10] = {
				0,0,0,0,0,0,0,0,0,0		};
	long int k = 1, i ;

	printf("\n");
	for(i=0;i<10;i++){
		j[i] = k ;
	}
	for(i=0;i<10;i++){
		printf("%ld %ld \n",j[i],k) ;
	}
	exit (0);
}
 
