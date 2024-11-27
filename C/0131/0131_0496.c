#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int    a[10] = {
		1,2,3,4,5,6,7,8,9,10	};
	int    i , m1 = -1 , m2 = 2 ,m3 = 3 ,m4 = 0 ,m5 = 2 ;
	for(i = 0 ; i < 10 ; i++){
		a[i] = a[i + (m1 - (m2 - (m3 + m4 + m5) + (m2 * 1)))] ;
	}
	for(i=0 ; i < 10 ; i++)
	{
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
