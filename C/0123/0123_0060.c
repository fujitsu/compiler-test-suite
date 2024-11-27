#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int misub(float a[],float b[]);

#define b(i,j)   b[i*5+j]
int main()
{
	long int i,j;
	float a[5],b[25];
	misub(a,b);
	for(i=0;i<5;i++)
		for(j=0;j<5;j++) printf("b(%ld,%ld) => %f \n",i,j,b(i,j));
	exit (0);
}
int misub(float a[],float b[])
{
	long int i,j;
	for(i=4;i>=0;i--)
	{
		a[i] = i;
		for(j=4;j>=0;j--)
		{
			b(i,j) = a[i];
			b(i,j) = b(i,j) * j;
		}
	}
}
