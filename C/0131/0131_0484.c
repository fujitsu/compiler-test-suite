#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define A(i) a[i-1]
int main()
{
	int  i;
	long int a[10];
	for(i=1;i<=9;i++){
		A(i-1+1) = i ;
	}
	for(i=0;i<9;i++){
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
