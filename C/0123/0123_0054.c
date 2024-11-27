#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int misub(float a[],float b[][5]);

int main()
{
	long int i,j;
	float a[5],b[5][5];
	misub(a,b);
	for(i=0;i<5;i++)
		for(j=0;j<5;j++) printf("b[%ld][%ld] => %f \n",i,j,b[i][j]);
	exit (0);
}
int misub(float a[],float b[][5])
{
	long int i,j;
	for(i=0;i<5;i++)
	{
		a[i] = i;
		for(j=0;j<5;j++)
		{
			b[i][j] = a[i];
			b[i][j] = b[i][j] * j;
		}
	}
}
