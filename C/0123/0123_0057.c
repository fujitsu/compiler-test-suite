#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int misub(float a[5],float b[25],long int n);

#define b(i,j)   b[i*5+j]
int main()
{
	long int i,j,n=5;
	float a[5],b[25];
	misub(a,b,n);
	for(i=0;i<5;i++)
		for(j=0;j<5;j++) printf("b(%ld,%ld) => %f \n",i,j,b(i,j));
	exit (0);
}
int misub(float a[5],float b[25],long int n)
{
	long int i,j;
	for(i=0;i<n;i++)
	{
		a[i] = i;
		for(j=0;j<n;j++)
		{
			b(i,j) = a[i];
			b(i,j) = b(i,j) * j;
		}
	}
}
