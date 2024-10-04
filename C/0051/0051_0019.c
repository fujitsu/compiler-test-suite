#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub(double a[], long int x[]);

int main()
{
	int i;
	long int x[10];
	double  a[10];
	for(i=0;i<10;i++){
		x[i]=i%3;
		a[i]=2.0;
	}
	sub(a,x);
	for(i=0;i<10;i++){
		printf(" a = %g \n",a[i]) ;
	}
	exit (0);
}
int sub(a,x)
double a[];
long int x[];
{
	int i;
	double b[10];
	for(i=0;i<10;i++){
		b[i]=1.;
		if (x[i] == 1){
			a[i]=a[i]+b[i];
		}
	}
	for(i=0;i<10;i++){
		if (x[i] == 2) break;
		a[i]=a[i]+b[i];
	}
}
