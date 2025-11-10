#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include "000.h"
#define A(i) a[i-1]
int main()
{
	int  i,j=1,m1=-7,m2=2,m3=3,m4=4,m5=20,m6=4;
	long int a[20];
	for(i=0;i<20;i++){
		a[i] = 0;
	}
	for(i=j+(m1+(m6-(m3-(m2+m4))));i<=j+(m1-(m2+(m3-(m4+m5))));i++){
		A(i) = i;
	}
	for(i=0;i<15;i++){
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
