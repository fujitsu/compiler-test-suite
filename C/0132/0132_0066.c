#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(float a[],float b[],float c[10][10],long int n);

int main()
{
	float a[10],b[10],c[10][10];
	long int i,j,n;
	for(i=0;i<10;i++)
	{
		a[i] = i;
		b[i] = 10 + i;
		for(j=0;j<10;j++)
		{
			c[j][i] = i*j;
		}
	}
	n = 5;
	func(a,b,c,n);
	exit (0);
}
int func(float a[],float b[],float c[10][10],long int n)
{
	float t,s;
	long int i,j,k;
	for(i=0;i<n;i++)
	{
		s = a[i];
		t = b[i];
		for(j=0;j<n;j++)
			c[i][j] = t + s;
	}
	for(i=0;i<10;i++)
	{
		for(j=0;j<3;j=j+5)
		{
			for(k=0;k<5;k++)
			{
				printf("c[%ld][%ld]=%f ",i,j+k,c[i][j+k]);
			}
			printf("\n");
		}
	}
}
