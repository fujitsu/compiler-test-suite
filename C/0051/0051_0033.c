#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i;
	static   double a[10],b[10];
	
	for(i=0;i<10;i++){
		b[i]=(double)i;
	}
	for(i=0;i<10;i++){
		a[i]=sin(b[i]);
	}
	for(i=0;i<10;i++){
		printf(" a= %g\n",a[i]) ;
	}
	exit (0);
}
