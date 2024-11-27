#include <stdlib.h>
#include <stdio.h>
#include <math.h>

double b;
void sub(a)
double a[];
{
	int i;


	for (i=2;i<=8;i++)
		b = a[i-2]+b;
}
int main()
{
	double a[10];
	a[0]=1.; 
	a[1]=0.; 
	a[2]=3.; 
	a[3]=-5.; 
	a[4]=0.;
	a[5]=2.; 
	a[6]=4.; 
	a[7]=0.; 
	a[8]=-4.; 
	a[9]=2.;
	b=0.;
	sub(a);
	printf("%13.5g\n",b);
	exit (0);
}
