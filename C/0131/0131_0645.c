#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include "000.h"
#define A(i) a[i-1]
int main()
{
	int  i,j=1,m1=20,m2=2,m3=3;
	long int a[20];
	for(i=0;i<20;i++){
		a[i] = 0;
	}
	for(i=j-3*2+6;i<j+(m1-(m2+m3));i++){
		A(i) = i;
	}
	for(i=0;i<20;i++){
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
