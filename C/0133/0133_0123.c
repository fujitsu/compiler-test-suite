#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub2(float x[2][50],float y[2][50],float z[2][50],long int *n);
int sub1(float a[2][50],float b[2][50],float c[2][50],long int *n);

int main()
{
	float a[2][50],b[2][50],c[2][50];
	float x[2][50],y[2][50],z[2][50];
	long int i,j,n;
	for(j=0;j<2;j++)
	{
		for(i=0;i<50;i++)
		{
			a[j][i] = i + 1 ;
			b[j][i] = -(i + 1) ;
			c[j][i] = a[j][i] - b[j][i] ;
			x[j][i] = c[j][i] + a[j][i] ;
			y[j][i] = -x[j][i] ;
			z[j][i] = b[j][i] + c[j][i] ;
		}
	}
	n = 50 ;
	sub1(a,b,c,&n);
	sub2(x,y,z,&n);
	for(j=0;j<2;j++)
	{
		for(i=0;i<50;i++)
		{
			printf("a[%ld][%ld] = %g , b[%ld][%ld] = %g , c[%ld][%ld] = %g\n",
			    j,i,a[j][i],j,i,b[j][i],j,i,c[j][i]);
		}
	}
	for(j=0;j<2;j++)
	{
		for(i=0;i<50;i++)
		{
			printf("x[%ld][%ld] = %g , y[%ld][%ld] = %g , z[%ld][%ld] = %g\n",
			    j,i,x[j][i],j,i,y[j][i],j,i,z[j][i]);
		}
	}
	exit (0);
}
int sub1(float a[2][50],float b[2][50],float c[2][50],long int *n)
{
	long int i,j;
	for(j=0;j<2;j++)
	{
		for(i=0;i<*n;i++)
		{
			a[0][i] = b[0][i] + c[0][i] ;
		}
		for(i=0;i<*n;i++)
		{
			a[1][i] = b[1][i] + c[1][i] ;
		}
	}
	return 0;
}
int sub2(float x[2][50],float y[2][50],float z[2][50],long int *n)
{
	long int k=30,l=20 ;
	long int nn,i,j,mm;
	for(j=0;j<2;j++)
	{
		nn = k + l ;
		for(i=0;i<nn;i++)
		{
			x[0][i] = y[0][i] + z[0][i] ;
		}
		mm = k + l ;
		for(i=0;i<mm;i++)
		{
			x[1][i] = y[1][i] + z[1][i];
		}
	}
	return 0;
}
