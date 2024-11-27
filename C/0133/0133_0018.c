#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10][20],b[10][20],c[10][10];
	long int i,j,m=3,n1=10,n2=20;
	for(i =0;i < n1;i ++)
	{
		for(j =0;j < n2;j ++)
		{
			a[i][j]=i;
			b[i][j]=i*i;
		}
	}
	for(i =0;i < n1;i ++)
	{
		for(j =0;j < n1;j ++)
		{
			c[i][j]=a[i][j+2];
		}
	}
	for(j =0;j < n1;j ++)
	{
		a[9][3+j]=b[9][j];
	}
	for(i =0;i < 10;i ++)
	{
		for(j =0;j < 20;j ++)
		{
			if(j < 10)
				printf("a[%ld][%ld] => %ld  b[%ld][%ld] => %ld  c[%ld][%ld] => %ld\n",i,j,a[i][j],i,j,b[i][j],
				    i,j,c[i][j]);
				else
				printf("a[%ld][%ld] => %ld  b[%ld][%ld] => %ld\n",i,j,a[i][j],i,j,b[i][j]);
		}
	}
	exit (0);
}
