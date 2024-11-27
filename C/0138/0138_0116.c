#include <stdlib.h>
#include <math.h>
#include <stdio.h>

long int a[10],ii ;
int main(){
	long int a[10] = {
				1,1,1,1,1,1,1,1,1,1		};
	long int i ;
	ii = 0;

	printf("\n");
	for(i=0;i<10;i++){
		ii = ii + a[i] ;
	}
	for(i=0;i<10;i++){
		printf("%ld %ld \n",a[i],ii);
	}
	exit (0);
}
 
