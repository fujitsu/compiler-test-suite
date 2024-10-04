#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(double a[], double b[], double c[], double x[]);

int main()
{
	int i;
	double a[10],b[10],c[10],x[10];
	for(i=0;i<10;i++){
		a[i]=2.0;
		b[i]=(double)i;
	}
	sub(a,b,c,x);
	exit (0);
}
int sub(a,b,c,x)
double a[],b[],c[],x[];
{
	int i;

	for(i=0;i<10;i++){
		a[i]=a[i]+sin(b[i]);
	}

	for(i=0;i<10;i++){
		c[i]=sqrt(a[i])+pow(b[i],3.);
	}

	for(i=0;i<10;i++){
		printf(" a= %g  c= %g \n",a[i],c[i]) ;
	}


	for(i=0;i<10;i++){
		b[i]=fmod(c[i],a[i]);
		a[i]=modf(b[i],&x[i]);
	}
	for(i=0;i<10;i++){
		printf(" a= %g  b= %g  x= %g \n",a[i],b[i],x[i]) ;
	}
}
