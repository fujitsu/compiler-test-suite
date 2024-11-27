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
#define B(i,j)    b[i-1][j-1]
#define C(i)      c[i-1]
#define D(i,j)    d[i-1][j-1]
float             ra[10],b[10][10],c[10],d[10][10];
int main()
{
	long int          i,j;
	for(i=0;i< 10;i++)
	{
		for(j=0;j< 10;j++)
		{
			b[i][j]=1.0;
			c[i]=2.0;
			d[i][j]=3.0;
			ra[i]=4.0;
		}
	}
	for(j=0;j< 10;j++)
	{
		for(i=0;i< 10;i++)
		{
			c[i]=c[i]+b[i][j];
		}
	}
	for(j=0;j< 10;j++)
	{
		for(i=0;i< 10;i++)
		{
			ra[i]=ra[i]*d[i][j];
		}
	}
	for(i=1;i<=10;i++)
	{
		for(j=1;j<=10;j++)
		{
			printf("RA= %g ,B= %g ,C= %g ,D= %g \n",
			    RA(i),B(i,j),C(i),D(i,j));
		}
	}
	exit (0);
}
