#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct cpx {
		float real;
		float digm;
	};
	struct cpx a[20],b[20][20],t;
	long int i,j;
	for(i=0;i<20;i++)
	{
		a[i].real = 2.0;
		a[i].digm = 1.0;
		for(j=0;j<20;j++)
		{
			b[i][j].real = 0.5;
			b[i][j].digm = 3.2;
		}
	}
	for(i=0;i<10;i++)
	{
		a[i+2].real = b[i][2].real - b[i+1][i+1].real;
		a[i+2].digm = b[i][2].digm - b[i+1][i+1].digm;
		a[i+2].real = b[i][2].real * a[i].digm + b[i][2].digm * a[i].real
		    + b[19][19-i].real;
		a[i+2].digm = b[i][2].digm * a[i].real + b[i][2].real * a[i].digm
		    + b[19][19-i].digm;
		a[i  ].real = b[19][19-i].real + a[i].real + b[i+1][i+1].real;
		a[i  ].digm = b[19][19-i].digm + a[i].digm + b[i+1][i+1].digm;
	}
	for(i=0;i<20;i++)
		printf("a[%ld].real => %g   a[%ld].digm => %g\n",
		    i,a[i].real,i,a[i].digm);
	exit (0);
}
