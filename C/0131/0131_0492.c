#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define  A(i)  a[i-1]
int main(){
	long int    a[10] = {
		1,2,3,4,5,6,7,8,9,10	};
	int         i , m1 = 9 , m2 = 2 ,m3 = 3 , m4 = 2;
	for(i = 0 ; i < 10 ; i++){
		a[i] = a[i +(m1 - (m2 + (m3 + (m4 + 2))))] ;
	}
	for(i=0 ; i < 10 ; i++)
	{
		printf(" %ld \n",a[i]);
	}
	exit (0);
}
