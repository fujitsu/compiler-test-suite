#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define b(i,j)   b[i*10+j]
int main()
{
	long int i,j;
	float a[]={
		0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0	};
	float b[100];
	for(i=9;i>=0;i--)
	{
		a[i] = i;
		for(j=9;j>=0;j--)
		{
			b(i,j) = a[i];
			b(i,j) = b(i,j) * j;
		}
	}
	for(i=0;i<100;i++) printf("b[%ld] => %f \n",i,b[i]);
	exit (0);
}
