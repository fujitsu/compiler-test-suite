#include <stdlib.h>
#include <stdio.h>
#include <math.h>

void sub(a,b)
double a[];
char   b[];
{
	int i;

	for (i=2;i<9;i++)
		a[i] = b[i];
}
int main()
{
	double a[20];
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
	a[10]=2.; 
	a[11]=2.; 
	a[12]=1.; 
	a[13]=-2.; 
	a[14]=1.;
	a[15]=9.; 
	a[16]=3.; 
	a[17]=4.; 
	a[18]=-9.; 
	a[19]=1.;
	sub(&a[5],a);
	printf("%13.5g %13.5g %13.5g %13.5g %13.5g\n",a[0],a[1],a[2],a[3],a[4]);
	printf("%13.5g %13.5g %13.5g %13.5g %13.5g\n",a[5],a[6],a[7],a[8],a[9]);
	exit (0);
}
