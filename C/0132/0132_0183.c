#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct cpx {
		double real;
		double digm;
	};
	struct cpx a[20],b[20];
	union equ {
		struct cpx t;
		struct cpx u;
	} x;
	long int i;
	for(i=0;i<20;i++)
	{
		a[i].real = 2.0;
		a[i].digm = -1.0;
		b[i].real = -2.0;
		b[i].digm = 1.0;
	}
	for(i=0;i<10;i++)
	{
		x.t.real = a[i+2].real * b[i+1].digm + a[i+2].digm * b[i+1].real;
		x.t.digm = a[i+2].digm * b[i+1].real - a[i+2].real * b[i+1].digm;
		a[i].real = x.u.real * a[i].digm + x.u.digm * a[i].real;
		a[i].digm = x.u.digm * a[i].real - x.u.real * a[i].digm;
	}
	for(i=0;i<20;i++)
		printf("a[%ld].real => %12.5f   a[%ld].digm => %12.5f\n",
		    i,a[i].real,i,a[i].digm);
	exit (0);
}
