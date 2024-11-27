#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int    i,j,k;
	double x[]={
		0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,10.0	};
	double y[10];
	k=9;
	for   (i=0;i<10;i++) {
		y[k]=x[i]+2.0;
		k=k-1;
	}
	for(j=1;j<10;j++){
		printf("%6.1f\n",y[j]);
	}
	exit (0);
}
