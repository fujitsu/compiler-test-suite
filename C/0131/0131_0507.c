#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int    a[20] ;
	int    i , m1 = 4 , m2 = 2 ;
	for(i = 0 ; i < 20 ; i++){
		a[i] = 0 ;
	}
	for(i = 2 ; i < 20 ; i++){
		a[i * 2 - (m1 + ( - (m2--)))] = i ;
	}
	for(i=0 ; i < 20 ; i++)
	{
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
