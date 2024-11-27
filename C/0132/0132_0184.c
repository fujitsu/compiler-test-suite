#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func();

union ecm {
	double t;
	double u;
} x;
int main()
{
	double a[20]={
		-1.0,-1.0,-1.0,-1.0,-1.0,-1.0,-1.0,-1.0,-1.0,-1.0,
		                 -1.0,-1.0,-1.0,-1.0,-1.0,-1.0,-1.0,-1.0,-1.0,-1.0	},
	b[20]={
		2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,
		                 2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0	};
	long int i;
        for(x.u=0,i=0;i<10;i++)
	{
		x.t = a[i+2] * b[i+1];
		func();
		a[i] = x.u * a[i];
	}
	for(i=0;i<20;i++)
		printf("a[%ld] => %12.5f\n",i,a[i]);
	exit (0);
}
int func()
{
	x.t = - x.t;
	return 0;
}
