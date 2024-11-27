#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	float a[10],b[10]={
		1,1,1,1,1,1,1,1,1,1	};
	float c[10]={
		2,2,2,2,2,2,2,2,2,2	};
	int i;
	for( i=0;i<10;i++)
	{
		a[i]=b[i]+c[i];
	}
	for(i=0;i<10;i++) printf("%5.2f ",a[i]);
	printf("\n");
	exit (0);
}
