#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define A(i) a[i-1]
int main()
{
	int  i;
	long int a[20];
	for(i=0;i<20;i++){
		a[i] = 0 ;
	}
	for(i=1;i<20;i++){
		A(i-2*2+4) = i ;
	}
	for(i=0;i<20;i++){
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}