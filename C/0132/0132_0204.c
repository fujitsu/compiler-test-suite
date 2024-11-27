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
float             ra[512],b[512],c[512],d[512];
int main()
{
	long int          i,j;
	for(i=0;i< 512;i++)
	{
		b[i]=1.0;
		c[i]=2.0;
		d[i]=3.0;
		ra[i]=4.0;
	}
	for(j=0;j< 10;j++)
	{
		for(i=0;i< 512;i++)
		{
			c[i]=d[i]+b[1];
		}
		for(i=0;i< 512;i++)
		{
			ra[i]=b[i]*d[1];
		}
	}
	for(i=0;i<512;i++)
	{
		printf("ra= %g ,c= %g \n",
		    ra[i],c[i]);
	}
	exit (0);
}
