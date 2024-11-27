#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <string.h>

int main()
{
	int i,j;
	int a[10][10],b[10][10],c[10][10];
	for(i=0;i<10;i++)
	{
		for(j=0;j<10;j++)
		{
			a[i][j] = 0;
			b[i][j] = 0;
			c[i][j] = 0;
		}
	}
	for(i=0;i<10;i++)
	{
		for(j=0;j<10;j++)
		{
			a[i][j] = 1;
			b[i][j] = 2;
		}
		c[2][2] = 3;
	}
	for(i=0;i<10;i++)
	{
		for(j=0;j<10;j++)
		{
			printf(" a =  %d b =  %d c =  %d \n",a[i][j],b[i][j],c[i][j]) ;
		}
	}
	exit (0);
}
