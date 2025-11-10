#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include "000.h"
#define RA(i)   ra[i-1]
#define B(i)    b[i-1]
#define C(i)    c[i-1]
#define D(i)    d[i-1]
float             ra[2049],b[2049],c[2049],d[2049];
int main()
{
	long int          i;
	c[0]=111;
	for(i=1;i< 2049;i++)
	{
		b[i]=i;
		c[i]=c[i-1]+1;
		d[i]=i;
		ra[i]=1.0;
	}
	for(i=1;i<=2049;i++)
	{
		printf("RA= %g ,B= %g ,C= %g ,D= %g \n",RA(i),B(i),C(i),D(i));
	}
	exit (0);
}
