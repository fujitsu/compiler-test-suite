#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(long int n);

int main()
{
	long int n=10;
	sub(n);
	exit (0);
}
int sub(long int n)
{
	long int i,j;
	float a[10],b[10][10];
	for(i=0;i<n;i++)
	{
		a[i] = i;
		for(j=0;j<n;j++)
		{
			b[i][j] = a[i];
			b[i][j] = b[i][j] * j;
		}
	}
	for(i=0;i<n;i++)
		for(j=0;j<n;j++) printf("b[%ld][%ld] => %f\n",i,j,b[i][j]);
}
