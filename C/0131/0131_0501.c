#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int    a[10] = {
		0,0,0,0,0,0,0,0,0,0	};
	int    i , m1 = 1 , m2 = 2 ;
	for(i = 2 ; i < 10 ; i++){
		a[i * 2 - (m1 - ( - (++m2)))] = i ;
	}
	for(i=0 ; i < 10 ; i++)
	{
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
