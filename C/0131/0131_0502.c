#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define A(i) a[i-1]
int main()
{
	int  i,j=1,m1=1,m2=2,m3=3;
	long int a[50];
	for(i=0;i<50;i++){
		a[i] = 0;
	}
	for(i=1;i<20;i++){
		a[i * 2 + (m1 + (m2 - (m3++))) + j ] = i ;
		j++;
	}
	for(i=0;i<50;i++){
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
