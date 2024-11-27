#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int          a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int          b[10]={
		9,8,7,6,5,4,3,2,1,0	};
	unsigned int c[10]={
		1,0,1,1,6,5,4,3,1,1	};
	int i ;
	for (i=0;i<10;i++)
	{
		a[i] = b[i]>=c[i];
	}
	for (i=0;i<10;i++) printf("%d",a[i]);
	printf("\n");
	exit (0);
}
