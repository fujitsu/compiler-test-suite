#include <stdlib.h>
#include <stdio.h>
#include <math.h>

void sub(a)
double a[];
{
	int i;
	double b[10];
	b[0]=2.; 
	b[1]=2.; 
	b[2]=1.; 
	b[3]=-2.; 
	b[4]=1.;
	b[5]=9.; 
	b[6]=3.; 
	b[7]=4.; 
	b[8]=-9.; 
	b[9]=1.;

	for (i=2;i<9;i++)
		a[i] = a[i-2]+b[i];
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
	sub(a);
	printf("%13.5g %13.5g %13.5g %13.5g %13.5g\n",a[0],a[1],a[2],a[3],a[4]);
	printf("%13.5g %13.5g %13.5g %13.5g %13.5g\n",a[5],a[6],a[7],a[8],a[9]);
	exit (0);
}
