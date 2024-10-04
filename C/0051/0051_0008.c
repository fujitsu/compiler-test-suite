#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=0;
	long int x[10];
	double a[10],b[10];
	for(i=0;i<10;i++){
		x[i]=i%3;
		a[i]=2.0;
		b[i]=(double)i;
	}
	for(i=0;i<10;i++){
		if (x[i] == 1){
			n++;
			a[n]=b[i];
		}
	}
	for(i=0;i<10;i++){
		if (x[i] == 2){
			n++;
			b[i]=a[n];
		}
	}
	printf("** n=%d **\n",n) ;
	for(i=0;i<10;i++){
		printf(" a = %g  b = %g \n",a[i],b[i]) ;
	}
	exit (0);
}
