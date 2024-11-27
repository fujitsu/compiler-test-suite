#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct data{
	long int a[10];
}p;
int main(){
	struct data p = {
		1,2,3,4,5,6,7,8,9,10	};
	int    i , m1 = 1 , m2 = 2 ,m3 = 3 ,m4 = 4 ,m5 = 6 ;
	for(i = 0 ; i < 10 ; i++){
		p.a[i] = p.a[i + (m1 - (m2 -(m3 + m4 ) + (m5 * 1)))] ;
	}
	for(i=0 ; i < 10 ; i++)
	{
		printf(" a[%d] = %ld \n",i,p.a[i]);
	}
	exit (0);
}
