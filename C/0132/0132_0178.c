#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	double a[20]={
		2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,
		                 2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0	},
	b[20]={
		-3.0,-3.0,-3.0,-3.0,-3.0,-3.0,-3.0,-3.0,-3.0,-3.0,
		                 -3.0,-3.0,-3.0,-3.0,-3.0,-3.0,-3.0,-3.0,-3.0,-3.0	},
	t,v;
	unsigned long int l[10]={
		0,0,0,1,1,1,0,0,0,1	};
	long int i,u,w;
	for(i=0;i<9;i++)
	{
		t = a[i+10] * b[i] - b[i+1];
		a[i+10] = t * a[i+8];
		u = a[i+8] * b[i] - b[i+1];
		if (l[i] == 1) {
			a[i+8] = u * (long int)a[i+6];
			v = a[i+4] * b[i] - b[i+1];
			a[i+4] = v * a[i+2];
			w = a[i+2] * b[i] - b[i+1];
			a[i+2] = w * (long int)a[i];
		}
	}
	for(i=0;i<20;i++) printf("a[%ld] => %12.5f\n",i,a[i]);
	exit (0);
}
