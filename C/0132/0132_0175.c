#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	double a[20]={
		2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,
		                 2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0	},
	b[2001],t,u,v,w;
	long int i,n;
	for(i=0;i<2001;i++) b[i] = -2.0;
	n = 9 * (long int)(cos(0.0));
	for(i=1;i<n;i++)
	{
		t = a[i+10] * b[i] - b[i+1];
		a[i+10] = t * a[i+8];
		u = a[i+8] * b[i] - b[i+1];
		a[i+8] = u * a[i+6];
		v = a[i+4] * b[i] - b[i+1];
		a[i+4] = v * a[i+2];
		w = a[i+2] * b[i] - b[i+1];
		a[i+2] = w * a[i];
	}
	for(i=0;i<20;i++)
		printf("a[%ld]=> %12.5f\n",i,a[i]);
	exit (0);
}
