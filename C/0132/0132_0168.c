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
		t.dreal = a[i+2].dreal * b[i].dimag - a[i+2].dimag * b[i].dreal
		    - b[i+1].dreal;
		t.dimag = a[i+2].dimag * b[i].dreal - a[i+2].dreal * b[i].dimag
		    - b[i+1].dimag;
		a[i+2].dreal = sqrt(fabs(t.dreal)) * a[i].dimag
		    - sqrt(fabs(t.dimag)) * a[i].dreal;
		a[i+2].dimag = sqrt(fabs(t.dimag)) * a[i].dreal
		    - sqrt(fabs(t.dreal)) * a[i].dimag;
	}
	for(i=0;i<20;i++)
		printf("a[%ld].dreal=> %g  a[%ld].dimag=> g\n",
		    i,a[i].dreal,i,a[i].dimag);
	exit (0);
}
