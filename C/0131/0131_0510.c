#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define A(i) a[i-1]
int main()
{
	int  i,j=1;
	long int a[20];
	for(i=0;i<20;i++){
		a[i] = 0;
	}
	for(i=j+2*2+4-3*2-2;i<20;i++){
		A(i) = i-1;
	}
	for(i=0;i<20;i++){
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
