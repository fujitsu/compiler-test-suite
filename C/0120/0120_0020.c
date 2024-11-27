#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int a[]={
		1,3,5,7,9	};
	int b[]={
		2,4,6,8,10	};
	int c[5];
	int i,j;

	for(i=0;i<5;i++)
	{
		c[i]=a[i]*b[i];
	}
	for(j=0;j<5;j++)
		printf("%5d\n",c[j]);
	exit (0);
}

