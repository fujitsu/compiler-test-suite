#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	unsigned int a[10]={
		1,0,1,0,1,1,0,0,0,0	};
	unsigned int b[10]={
		1,1,1,1,1,1,1,1,1,1	};
	long int     c    =0;
	long int     d[10]={
		9,9,9,9,9,3,3,3,3,3	};
	long int     e[10]={
		3,3,3,3,3,3,3,3,3,3	};
	int i ;
	for (i=0;i<10;i++)
	{
		if(a[i]!=b[i])
		{
			c = d[i]>=e[i];
		}
	}
	printf("%d\n",c);
	exit (0);
}
