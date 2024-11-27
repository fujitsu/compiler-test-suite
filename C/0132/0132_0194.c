#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	double a[20]={
		2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,
		                 -2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0	},
	b[20][20],t;
	long int i,j;
	for(i=0;i<20;i++) for(j=0;j<20;j++) b[i][j] = 5.9;
	for(i=0;i<10;i++)
	{
		a[i+2] = b[i][2] - b[i+1][i+1];
		a[i+2] = b[i][2] * a[i] + b[19][19-i];
		a[i  ] = b[19][19-i] + a[i] + b[i+1][i+1];
	}
	for(i=0;i<20;i++)
		printf("a[%ld] => %12.5f\n",i,a[i]);
	exit (0);
}
