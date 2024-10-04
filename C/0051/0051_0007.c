#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	int i;
	
	long int x[10];
	double s,a[10],b[10];
	for(i=0;i<10;i++){
		x[i]=i%3;
		a[i]=2.0;
		b[i]=(double)i;
	}
	for(i=0;i<10;i++){
		if (x[i] == 1){
			a[i]=a[i]+b[i];
		}
	}
	for(i=0;i<10;i++){
		if (x[i] == 2) break;
		b[i]=a[i]+b[i];
	}
	for(i=0;i<10;i++){
		printf(" a = %g   ",a[i]) ;
		printf(" b = %g \n",b[i]) ;
	}
	exit (0);
}
