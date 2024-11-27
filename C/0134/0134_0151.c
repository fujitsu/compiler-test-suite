#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	double a[10]={
		0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0	};
	long int i;
	for(i=0;++i<10;) {
		a[i] = fabs((double)(i-100));
	}
	for(i=9;--i>=0;) {
		printf("a[%ld]=> %g\n",i,a[i]);
	}
	exit (0);
}
