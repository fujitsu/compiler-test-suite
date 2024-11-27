#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int func(float a[100][100],float b[100][100],float c[100][100],            
float d[100][100],long int n)
{
	long int i,j;
	float s,t;
	for(i=0;i<n;i++)
	{
		s = i;
		for(j=0;j<n;j++)
			a[i][j] = s * j;
	}
	for(i=0;i<n;i++)
	{
		t = i;
		for(j=0;j<n;j++)
			b[i][j] = t * j;
	}
	for(i=0;i<n;i++)
	{
		s = i;
		for(j=0;j<n;j++)
			c[i][j] = s * j;
	}
	for(i=0;i<n;i++)
	{
		t = i;
		for(j=0;j<n;j++)
			d[i][j] = t * j;
	}
	for(i=0;i<n;i++)
		for(j=0;j<n;j++)
		{
			if (a[i][j] != c[i][j]) goto lbl_1;
			if (b[i][j] != d[i][j]) goto lbl_1;
		}
	printf("------ok------\n");
	goto lbl_2;
lbl_1:
	printf("------ng------\n");
lbl_2:
	;
}
int main()
{
	float a[100][100],b[100][100],c[100][100],d[100][100];
	long int i,j,n;
	for(i=0;i<100;i++)
		for(j=0;j<100;j++)
		{
			a[i][j] = i+j;
			b[i][j] = i+j;
			c[i][j] = i*j;
			d[i][j] = i*j;
		}
	n = 100;
	func(a,b,c,d,n);
	exit (0);
}
