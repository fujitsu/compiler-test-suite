#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(double a[], long int x[]);

int main()
{
	int i;
	long int x[10];
	double a[10];
	for(i=0;i<10;i++){
		x[i]=i%3;
		a[i]=2.0;
	}
	sub(a,x);
	exit (0);
}
int sub(a,x)
double a[];
long int x[];
{
	long int i,n=0;
	double b[10];
	for(i=0;i<10;i++){
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
	printf(" ** n=%d **\n",n) ;
	for(i=0;i<10;i++){
		printf(" a = %g  b = %g \n",a[i],b[i]) ;
	}
}
