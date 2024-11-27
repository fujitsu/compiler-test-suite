#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	unsigned int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	unsigned int b[10]={
		9,8,7,6,5,4,3,2,1,0	};
	unsigned int c[10]={
		9,8,1,1,0,0,0,1,1,1	};
	int i ;
	for (i=0;i<10;i++)
	{
		a[i] = b[i]!=c[i];
	}
	for (i=0;i<10;i++) printf("%d",a[i]);
	printf("\n");
	exit (0);
}
