#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(double a[]);
long int n;
int main()
{
	double a[10]={0,0,0,0,0,0,0,0,0,0};
	long int i;
	n=2;
	func(a);
	for (i=0;i<=7;++i)
		a[i+2]=a[i+n]*2;
	printf("%g %g %g %g %g %g %g %g %g %g \n",
	    a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9]);
	exit (0);
}
int func(double a[])
{
	n=0;
	a[0]=0;
	a[1]=1;
}
