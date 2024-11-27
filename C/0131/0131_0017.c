#include <stdlib.h>
#include <stdio.h>
#include <math.h>



double a[20];
double *p;
int sub(double b[]);
int main (void)
{
	long int i;
	double b[20],c[20];
	for(i=0;i<20;i++)
	{
		a[i]=(double)(21-i);
		b[i]=(double)(i);
		c[i]=3.;
	}
	sub(a);
	for(i=0;i<10;i++) {
		a[i]=b[i]+p[i];
		p[i+1]=a[i]+1.;
	}
	printf(" ** main ** \n");
	for(i=0;i<20;i++){
		printf(" a= %g \n",a[i]);
	}
	exit (0);
}
int sub(double b[])
{
	int i;
	for(i=0;i<20;i++){
		a[i]=b[i]+1.;
	}
	p=b;
	printf(" ** sub  ** \n");
	for(i=0;i<20;i++){
		printf(" a= %g \n",a[i]);
	}
}
