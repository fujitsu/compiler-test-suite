#include <stdlib.h>

#include <stdio.h>
#include <math.h>
#include <string.h>
typedef struct{
	float real,imag;
}COMPLEX;
typedef struct{
	float real,imag;
}COMPLEX8;
typedef struct{
	double dreal,dimag;
}COMPLEX16;
typedef struct{
	long double qreal,qimag;
}COMPLEX32;
#define RA(i)     ra[i-1]
#define B(i)      b[i-1]
#define C(i)      c[i-1]
#define D(i)      d[i-1]
float             ra[2049],b[2049],c[2049],d[2049];
int main()
{
	long int          i,j;
	for(i=0;i< 2049;i++)
	{
		b[i]=1.0;
		c[i]=2.0;
		d[i]=3.0;
		ra[i]=4.0;
	}
	for(j=0;j< 10;j++)
	{
		for(i=0;i< 2049;i++)
		{
			c[i]=c[i]+b[i];
		}
		for(i=0;i< 2049;i++)
		{
			ra[i]=ra[i]*d[i];
		}
	}
	for(i=1;i<=2048;i++)
	{
		printf("RA= %g ,B= %g ,C= %g ,D= %g \n",
		    RA(i),B(i),C(i),D(i));
	}
	exit (0);
}
