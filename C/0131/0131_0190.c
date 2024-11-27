#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func2(double a[10], double *b, double c[10]);
int func1(double a[10], double *b, double c[10]);

int main()
{
	double a[12],b[12],c[12];
	int i ;
	for(i=0;i<12;i++)
	{
		a[i] = 2.0 ;
		b[i] = 3.0 ;
		c[i] = 4.0 ;
	}
	func1(a,b,c) ;
	for(i=0;i<10;i++)
	{
		printf(" a[%d] %g ",i,a[i]);
		printf(" b[%d] %g ",i,b[i]);
		printf(" c[%d] %g\n",i,c[i]);
	}
	printf("\n");
	func2(a,b,c);
	for(i=0;i<10;i++)
	{
		printf(" a[%d] %g ",i,a[i]);
		printf(" b[%d] %g ",i,b[i]);
		printf(" c[%d] %g\n",i,c[i]);
	}
	printf("\n");
	exit (0);
}
int func1(a,b,c)
double a[10],*b,c[10];
{
	short int i,j;
	j=0;
	for(i=0;i<10;i++)
	{
		a[i]=4.0;
		*(b++)+=100.0;
		c[j++]=2.0;
	}
}
int func2(a,b,c)
double a[10],*b,c[10];
{
	short int i,j;
	j=0;
	for(i=0;i<10;i+=2)
	{
		a[i] = c[i] * 2;
		c[j+=2] = *(b+2) + 1.0;
		*(b+i) = 10.0 - a[i];
	}
}
