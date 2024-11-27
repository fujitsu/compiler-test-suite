#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct t {
	double x[20];
	int    y;
};
void sub(a,b)
double a[];
struct t *b;
{
	int i;

	for (i=1;i<=8;i++)
		a[i] = b->x[i];
}
int main()
{
	struct t a;
	a.y = 1000;
	a.x[0]=1.; 
	a.x[1]=0.; 
	a.x[2]=3.; 
	a.x[3]=-5.; 
	a.x[4]=0.;
	a.x[5]=2.; 
	a.x[6]=4.; 
	a.x[7]=0.; 
	a.x[8]=-4.; 
	a.x[9]=2.;
	a.x[10]=2.; 
	a.x[11]=2.; 
	a.x[12]=1.; 
	a.x[13]=-2.; 
	a.x[14]=1.;
	a.x[15]=9.; 
	a.x[16]=3.; 
	a.x[17]=4.; 
	a.x[18]=-9.; 
	a.x[19]=1.;
	sub(&a.x[6],&a.x[0]);
	printf("%13.5g %13.5g %13.5g %13.5g %13.5g\n",
	    a.x[0],a.x[1],a.x[2],a.x[3],a.x[4]);
	printf("%13.5g %13.5g %13.5g %13.5g %13.5g\n",
	    a.x[5],a.x[6],a.x[7],a.x[8],a.x[9]);
	exit (0);
}
