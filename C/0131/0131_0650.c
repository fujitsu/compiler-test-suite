#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include "000.h"
#define A(i,j)  a[i-1][j-1]
int main()
{
	long int i,j,k=1,a[10][10];
	for(i=0;i<10;i++){
		for(j=1;j<=10;j++){
			A(i+k,j) = i ;
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<2;j++){
			printf(" a[%ld][%ld] = %ld \n",i,j,a[i][j]);
		}
	}
	exit (0);
}
