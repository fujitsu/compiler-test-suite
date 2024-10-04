#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i;
	double s,a[10],b[10];
	for(i=0;i<10;i++){
		a[i]=2.0;
		b[i]=(double)i;
	}
	for(i=2;i<9;i++){
		a[i]=a[i-2]+b[i];
	}
	for(i=0;i<10;i++){
		a[i]=a[i]+b[i];
	}
	for(i=0;i<10;i++){
		printf(" a = %g \n",a[i]) ;
	}
	exit (0);
}
