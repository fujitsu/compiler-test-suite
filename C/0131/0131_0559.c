#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int          x[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int          y[10]={
		0,0,0,0,0,0,0,0,0,0	};
	unsigned int b[10]={
		9,8,7,6,5,4,3,2,1,0	};
	unsigned int c[10]={
		1,0,1,1,0,0,0,1,1,1	};
	int i ;
	for (i=0;i<10;i++)
	{
		x[i] = b[i]==c[i];
		y[i] = b[i]!=c[i];
	}
	for (i=0;i<10;i++) printf("%d",x[i]);
	for (i=0;i<10;i++) printf("%d",y[i]);
	printf("\n");
	exit (0);
}
