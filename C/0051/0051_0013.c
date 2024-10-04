#include <stdlib.h>
#include <stdio.h>
#include <math.h>




int main()
{
	int i;
	double a[10],b[10],c[10],x[10];
	for(i=0;i<10;i++){
		a[i]=2.0;
		b[i]=(double)i;
	}
	for(i=0;i<10;i++){
		a[i]=a[i]+sin(b[i]);
	}
	exit (0);
}
