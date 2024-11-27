#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct t {
	double x[10],y[10];
};
void sub(a,b)
struct t *a,*b;
{
	int i;

	for (i=1;i<=8;i++)
		a->x[i] = b->y[i];
}
int main()
{
	struct t a;
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
	a.y[0]=2.; 
	a.y[1]=2.; 
	a.y[2]=1.; 
	a.y[3]=-2.; 
	a.y[4]=1.;
	a.y[5]=9.; 
	a.y[6]=3.; 
	a.y[7]=4.; 
	a.y[8]=-9.; 
	a.y[9]=1.;
	sub(&a.x[1],&a.x[0]);
	printf("%13.5g %13.5g %13.5g %13.5g %13.5g\n",
	    a.y[0],a.y[1],a.y[2],a.y[3],a.y[4]);
	printf("%13.5g %13.5g %13.5g %13.5g %13.5g\n",
	    a.y[5],a.y[6],a.y[7],a.y[8],a.y[9]);
	exit (0);
}
