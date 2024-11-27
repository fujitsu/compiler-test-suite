#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(long int n);

#define b(i,j)   b[i*10+j]
int main()
{
	long int n=10;
	sub(n);
	exit (0);
}
int sub(long int n)
{
	long int i,j;
	float a[]={
		0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0	};
	float b[100];
	for(i=0;i<n;i++)
	{
		a[i] = i;
		for(j=0;j<n;j++)
		{
			b(i,j) = a[i];
			b(i,j) = b(i,j) * j;
		}
	}
	for(i=0;i<n*n;i++) printf("b[%ld] => %f \n",i,b[i]);
}
