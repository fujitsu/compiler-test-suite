#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	unsigned int a[10]={
		1,0,1,0,1,1,0,0,0,0	};
	unsigned int b[10]={
		1,1,1,1,1,1,1,1,1,1	};
	long int     c[10]={
		0,0,0,0,0,0,0,0,0,0	};
	long int     d[10]={
		9,9,9,9,9,3,3,3,3,3	};
	long int     e    = 9;
	int i ;
	for (i=0;i<10;i++)
	{
		if(a[i]==b[i])
		{
			c[i] = d[i]>=e;
		}
	}
	for (i=0;i<10;i++) printf("%d",c[i]);
	printf("\n");
	exit (0);
}
