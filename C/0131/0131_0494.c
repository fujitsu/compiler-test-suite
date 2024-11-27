#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int    a[10] = {
		0,0,0,0,0,0,0,0,0,0	};
	int    i , m1 = 5 , m2 = 1 ,m3 = 3 ,m4 = 0 ;
	for(i = 0 ; i < 9 ; i++){
		a[i + (m1 - (m2 * 1) - (m3 + (m4 * 1)))] = i ;
	}
	for(i=0 ; i < 10 ; i++)
	{
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
