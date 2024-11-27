#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct complex {
		double dreal;
		double dimag;
	};
	struct complex a[20];
	struct complex b[20];
	struct complex t;
	long int i;
	for(i=0;i<20;i++)
	{
		a[i].dreal = 2.0;
		a[i].dimag = 1.0;
		b[i].dreal = -1.0;
		b[i].dimag = 2.0;
	}
	for(i=0;i<10;i++)
	{
		t.dreal = a[i].dreal - a[i].dimag;
		t.dimag = a[i].dimag + a[i].dreal;
		a[i+2].dreal = t.dreal * 2.0 - t.dimag * 2.0;
		a[i+2].dimag = t.dimag * 2.0 + t.dreal * 2.0;
		a[i].dreal = sqrt(fabs(t.dreal)) * b[i].dimag
		    - sqrt(fabs(t.dimag)) * b[i].dreal - b[i+1].dreal;
		a[i].dimag = sqrt(fabs(t.dimag)) * b[i].dreal
		    + sqrt(fabs(t.dreal)) * b[i].dimag - b[i+1].dimag;
	}
	for(i=0;i<20;i++)
		printf("a[%ld].dreal=> %g  a[%ld].dimag=> %g\n",
		    i,a[i].dreal,i,a[i].dimag);
	exit (0);
}
