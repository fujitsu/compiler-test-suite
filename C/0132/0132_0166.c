#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct complex {
		float real;
		float digm;
	};
	struct complex a[20];
	struct complex b[20];
	struct complex t;
	long int i;
	for(i=0;i<20;i++)
	{
		a[i].real = 2.0;
		a[i].digm = 1.0;
		b[i].real = -1.0;
		b[i].digm = 2.0;
	}
	for(i=0;i<10;i++)
	{
		t.real = a[i+2].real * b[i].digm - a[i+2].digm * b[i].real
		    - b[i+1].real;
		t.digm = a[i+2].digm * b[i].real + a[i+2].real * b[i].digm
		    - b[i+1].digm;
		a[i+2].real = t.real * a[i].real - t.digm * a[i].digm;
		a[i+2].digm = t.digm * a[i].digm + t.real * a[i].real;
	}
	for(i=0;i<20;i++)
		printf("a[%ld].real=> %12.5f  a[%ld].digm=> %12.5f\n",
		    i,a[i].real,i,a[i].digm);
	exit (0);
}
