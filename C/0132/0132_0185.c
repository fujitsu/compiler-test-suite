#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func();

struct cpx {
	float real;
	float digm;
};
struct cpx t;
int main()
{
	struct cpx a[20],b[20];
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
		t.real = a[i+2].real * b[i+1].digm + a[i+2].digm * b[i+1].real;
		t.digm = a[i+2].digm * b[i+1].real - a[i+2].real * b[i+1].digm;
		func();
		a[i].real = t.real * a[i].digm + t.digm * a[i].real;
		a[i].digm = t.digm * a[i].real - t.real * a[i].digm;
	}
	for(i=0;i<20;i++)
		printf("a[%ld].real => %12.5f   a[%ld].digm => %12.5f\n",
		    i,a[i].real,i,a[i].digm);
	exit (0);
}
int func()
{
	t.real = - t.real * t.digm - t.digm;
	t.digm = - t.digm * t.real + t.real;
	return 0;
}
