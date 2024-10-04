#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(double a[10], double b[10]);

int main()
{
	int i;
	double s,a[10],b[10];
	for(i=0;i<10;i++){
		a[i]=2.0;
		b[i]=(double)i;
	}
	sub(a,b);
	for(i=0;i<10;i++){
		printf(" a = %g \n",a[i]) ;
	}
	exit (0);
}
int sub(a,b)
double a[10],b[10];
{
	int i;
	for(i=0;i<9;i++){
		a[i]=a[i+1]+b[i];
	}
}
