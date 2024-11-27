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
#define RA(i)   ra[i-1]
#define B(i,j)    b[i-1][j-1]
#define C(i)    c[i-1]
#define D(i,j)    d[i-1][j-1]
float             ra[2049],b[2049][10],c[2049],d[2049][10];
int main()
{
	long int          i,j;
	for(i=0;i< 2049;i++)
	{
		for(j=0;j< 10;j++)
		{
			b[i][j]=1.0;
			c[i]=2.0;
			d[i][j]=3.0;
			ra[i]=4.0;
		}
	}
	for(i=0;i< 2049;i++)
	{
		for(j=0;j< 10;j++)
		{
			c[i]=b[i][j];
			ra[i]=d[i][j];
		}
	}
	for(i=1;i<=2049;i++)
	{
		printf("RA= %g ,C= %g \n",
		    RA(i),C(i));
	}
	exit (0);
}
