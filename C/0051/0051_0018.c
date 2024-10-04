#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(double a[], long int b[]);

int main()
{
	int i;
	double   a[10];
	long int b[10];
	for(i=0;i<10;i++){
		a[i]=2.0;
		b[i]=i;
	}
	sub(a,b);
	for(i=0;i<10;i++){
		printf(" a= %g  b= %d\n",a[i],b[i]) ;
	}
	exit (0);
}
int sub(a,b)
double a[];
long int b[];
{
	double c[10]={
		1.,2.,3.,4.,5.,6.,7.,8.,9.,10.	};
	int i;
	for(i=2;i<9;i++){
		c[i]=(double)(i);
		a[i]=a[i-2]+c[i];
	}
	for(i=0;i<10;i++){
		a[i]=a[i]+c[i];
		b[i]=b[i]+i;
	}
}
