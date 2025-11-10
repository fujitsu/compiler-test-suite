#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include "000.h"
#define RA(i)   ra[i-1]
#define B(i)    b[i-1]
#define C(i)    c[i-1]
#define D(i)    d[i-1]
float             ra[100],b[100],c[100],d[100];
int main()
{
	long int          i;
	for(i=0;i< 100;i++)
	{
		b[i]=1.0;
		c[i]=1.0;
		d[i]=1.0;
		ra[i]=1.0;
	}
	for(i=1;i<=100;i++)
	{
		printf("RA= %g ,B= %g ,C= %g ,D= %g \n",RA(i),B(i),C(i),D(i));
	}
	exit (0);
}
